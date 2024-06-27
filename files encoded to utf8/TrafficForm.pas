unit TrafficForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, Grids, Buttons, StdCtrls, Spin, ActnList, JvExGrids,
  JvStringGrid, JvExExtCtrls, JvComponent, JvPanel;

type
  TTrafficForm1 = class(TForm)
    Panel1: TJvPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TJvPanel;
    Panel4: TJvPanel;
    MonthCombo: TComboBox;
    YearSpin: TSpinEdit;
    Panel5: TJvPanel;
    btnCopyCells: TSpeedButton;
    Label1: TLabel;
    RecLabel1: TLabel;
    btnPasteCells: TSpeedButton;
    btnDelete: TSpeedButton;
    btnAutoPaste: TSpeedButton;
    tmpGrid1: TStringGrid;
    btnDelSelCells: TSpeedButton;
    BitBtn1: TBitBtn;
    Panel3: TJvPanel;
    Label2: TLabel;
    Label3: TLabel;
    MonthCountLabel1: TLabel;
    SelCountLabel1: TLabel;
    ActionList1: TActionList;
    CopyAction1: TAction;
    PasteAction1: TAction;
    DeleteAction1: TAction;
    btnHtmlSave: TSpeedButton;
    SaveDialog1: TSaveDialog;
    SpinButton1: TSpinButton;
    BusyTimer1: TTimer;
    Grid1: TJvStringGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure YearSpinChange(Sender: TObject);
    procedure MonthComboChange(Sender: TObject);
    procedure Grid1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCopyCellsClick(Sender: TObject);
    procedure btnPasteCellsClick(Sender: TObject);
    procedure btnDelSelCellsClick(Sender: TObject);
    procedure CopyAction1Execute(Sender: TObject);
    procedure PasteAction1Execute(Sender: TObject);
    procedure DeleteAction1Execute(Sender: TObject);
    procedure btnHtmlSaveClick(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure BusyTimer1Timer(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateGridDays;
    Function LoadDay : Boolean;
    function SaveDay : Boolean;
    Function TimeExistsInGrid(Const TheTime : String): Integer;
    procedure InsertTimeToGrid(TheTime : String);
    procedure UpdateTime(SelectedDay : Integer; TheTime: String; Prior: Integer);
    procedure MarkCell(Col, Row, Prior: Integer);
    procedure ClearCell(Col, Row : Integer);
    procedure UpdateDay(SortGrid, UpdHints: Boolean);
    Function MakeFileName: String;
    procedure ClearDay;
    procedure ClearEmptyRows;
    procedure CopyCelectedCells;
    procedure PasteSelectedCells;
    procedure DeleteSelectedCell;
    procedure DeleteSelectedCells;
    procedure PasteSelectedCell;
    procedure AddHour(Hour : String; Prior: Integer);
    procedure DeleteHour(Hour : String; Prior: Integer);
    Function SpotsCount : Integer;
    procedure UpdateHints;
    Function BusyFileExists : Boolean;
    Function CreateBusyFile : Boolean;
    procedure CloseAndDeleteBusyFile;
    procedure EnableButtons(IsEnabled : Boolean);
    Procedure CheckOtherBusy;
  public
    { Public declarations }
    RecCode : LongInt;
  end;

var
  TrafficForm1: TTrafficForm1;

implementation

{$R *.DFM}

uses
  DaysSpotsForm, MyLibrary, Recs, SettingsR, ResStringsU, JclFileUtils;

Const
  BusyText = 'Busy';

Var
  SelectedDay : Integer;
  DaySpots    : TStringList;
  BusyFile    : TextFile;
  BusyFileCreated : Boolean;

procedure TTrafficForm1.UpdateGridDays;
var
  Year, Month, Day : Word;
  t : TDateTime;
begin
  Try
    Screen.Cursor := crHourglass;
    Year := YearSpin.Value;
    Month := MonthCombo.ItemIndex + 1;
    if (year < 1900) or (not Month in [1..12]) then
      exit;
    Grid1.ColCount := DaysPerMonth(Year, Month) + 1;
    Grid1.RowCount := 1;
    for Day := 1 to Grid1.ColCount - 1 do
    begin
      SelectedDay := Day;
      t := EncodeDate(Year, Month, SelectedDay);
      Grid1.Cells[SelectedDay, 0] := FormatDateTime('ddd', t) + #13 + IntToStr(SelectedDay);
      UpdateDay(False, False);
//      Application.ProcessMessages;
    end;
    ClearEmptyRows;
    Grid1.SortColumn(0, true);
    UpdateHints;
    //  Grid1.Refresh;
    SpotsCount;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TTrafficForm1.FormActivate(Sender: TObject);
var
  day, Month, Year : word;
begin
  CheckOtherBusy;
  MonthCombo.OnChange := nil;
  YearSpin.OnChange   := nil;
  DecodeDate(Now, Year, Month, Day);
  MonthCombo.ItemIndex := Month - 1;
  YearSpin.Value := Year;
  Caption := FormatDateTime('dddd dd mmmm yyyy', Now);
  MonthCombo.OnChange := MonthComboChange;
  YearSpin.OnChange   := YearSpinChange;
  UpdateGridDays;
  tmpGrid1.ColCount := 0;
  tmpGrid1.RowCount := 0;
end;

procedure TTrafficForm1.FormCreate(Sender: TObject);
var
  i : Word;
  year, Month : Word;
begin
  BusyFileCreated := False;
  DaySpots  := TStringList.Create;
  DaySpots.Sorted := True;

  Grid1.ColWidths[0] := 30;
  Grid1.RowHeights[0] := 30;
  Grid1.ColorRow[0] := clLime;

  for Month := 1 to 12 do
    MonthCombo.Items.Add(LongMonthNames[Month]);
  DecodeDate(Now, Year, Month, i);
  MonthCombo.ItemIndex := Month -1;
  YearSpin.Value := Year;
end;

procedure TTrafficForm1.FormDestroy(Sender: TObject);
begin
  DaySpots.Free;
end;

procedure TTrafficForm1.YearSpinChange(Sender: TObject);
begin
  UpdateGridDays;
end;

procedure TTrafficForm1.MonthComboChange(Sender: TObject);
begin
  UpdateGridDays;
end;

procedure TTrafficForm1.Grid1Click(Sender: TObject);
begin
  if (Grid1.Row = 0) then
  Begin
    SelectedDay := Grid1.Col;
    DaysSpotsForm1.Date := EncodeDate(YearSpin.Value, MonthCombo.ItemIndex + 1, SelectedDay);
    DaysSpotsForm1.TrafficDir := PathAddSeparator(RadioSettings.TrafficDir);

    DaysSpotsForm1.RecCode := RecCode;
    DaysSpotsForm1.HLabel1.Caption := RecLabel1.Caption;
    if DaysSpotsForm1.ShowModal = mrOK then
    begin
      UpdateDay(True, True);
      ClearEmptyRows;
      SpotsCount;
    end;
  end
  else
    if btnDelete.Down then
      DeleteSelectedCell
    else
    if btnAutoPaste.Down then
      PasteSelectedCell;
end;

Function TTrafficForm1.TimeExistsInGrid(Const TheTime : String): Integer;
Var
  Row : Integer;
Begin
  Row := 1;
  Result := -1;
  While (Row <= Grid1.RowCount-1) and (Result = -1) do
  Begin
    if Grid1.Cells[0, Row] = TheTime then
      Result := Row;
    inc(Row);
  end;
end;

procedure TTrafficForm1.InsertTimeToGrid(TheTime : String);
begin
  Grid1.InsertRow(1);
  Grid1.Cells[0,1] := TheTime;
end;

procedure TTrafficForm1.UpdateTime(SelectedDay : Integer; TheTime: String; Prior: Integer);
var
  i : Integer;
begin
  i := TimeExistsInGrid(TheTime);
  if i > -1 then
    MarkCell(SelectedDay, i, Prior);
end;

procedure TTrafficForm1.MarkCell(Col, Row, Prior: Integer);
begin
  Grid1.Cells[Col, Row] := IntToStr(Prior); //'X';
  Grid1.ColorCell[Col, Row] := clRed;
//  Grid1.Objects[Col, Row] := Pointer(Prior);
end;

procedure TTrafficForm1.ClearCell(Col, Row : Integer);
begin
  Grid1.ResetColorCell(col, Row);
  Grid1.Cells[Col, Row] := '';
  Grid1.Objects[Col, Row] := nil;
end;

function TTrafficForm1.MakeFileName: String;
begin
  Result := NormalDir(RadioSettings.TrafficDir) +
            FormatDateTime('yyyymmdd', EncodeDate(YearSpin.Value, MonthCombo.ItemIndex + 1, SelectedDay)) + C_TrafficExt;
end;

procedure TTrafficForm1.UpdateDay(SortGrid, UpdHints : Boolean);
var
  i  : Integer;
  Prior : Integer;
  TheTime : String;
  MustSort : Boolean;
  MustUpdateHints : Boolean;
begin
  MustSort := False;
  MustUpdateHints := False;
  ClearDay;
  if not LoadDay then
    Exit;
  for i := 0 to DaySpots.Count - 1 do
  begin
    // αν είναι η εγγραφή που προγραμματίζουμε
    if StrToInt(ExtractDelimited(3, DaySpots[i], [CSep1, CSep])) = RecCode then
    begin
      TheTime := ExtractDelimited(1, DaySpots[i], [CSep1]);
      Prior   := StrToInt(ExtractDelimited(2, DaySpots[i], [CSep1, CSep]));
      if TimeExistsInGrid(TheTime) = -1 then
      begin
        MustSort := True;
        InsertTimeToGrid(TheTime);
      end;
      UpdateTime(SelectedDay, TheTime, Prior);
      MustUpdateHints := True;
    end;
  end;
  if MustSort then
    if SortGrid then
      Grid1.SortColumn(0, true);
  if MustUpdateHints then
    if UpdHints then
      UpdateHints;
end;

Function TTrafficForm1.LoadDay: Boolean;
var
  fn : String;
begin
  Result := False;
  fn := MakeFileName;
  if FileExists(fn) then
  begin
    try
      DaySpots.LoadFromFile(fn);
      Result := True;
    except
    end;
  end
  else
    DaySpots.Clear;
end;

Function TTrafficForm1.SaveDay: Boolean;
var
  fn : String;
begin
  Result := False;
  fn := MakeFileName;
  try
    DaySpots.SaveToFile(fn);
    Result := True;
  except
    ShowMessage(C_ProblemSavingDay);
  end;
end;

procedure TTrafficForm1.ClearDay;
var
  i : Integer;
begin
  DaySpots.Clear;
  for i := 1 to Grid1.RowCount-1 do
    ClearCell(SelectedDay, i);
end;

procedure TTrafficForm1.ClearEmptyRows;
var
  r, c : Integer;
  RowEmpty : Boolean;
begin
  r := 1;
  While r <= Grid1.RowCount-1 do
  begin
    RowEmpty := True;
    for c := 1 to Grid1.ColCount-1 do
      if Grid1.Cells[c, r] <> '' then
        RowEmpty := False;
    if RowEmpty then
    begin
      Grid1.RemoveRow(r);
      UpdateHints;
//      Grid1.RowCount := Grid1.RowCount -1;
    end
    else
      inc(r);
  end;
end;

procedure TTrafficForm1.btnCopyCellsClick(Sender: TObject);
begin
  CopyCelectedCells;
end;

procedure TTrafficForm1.CopyCelectedCells;
var
  c, r : Integer;
begin
  if Grid1.Selection.Top = 0 then
    Exit;
  tmpGrid1.ColCount := Grid1.Selection.Right - Grid1.Selection.Left + 1;
  tmpGrid1.RowCount := Grid1.Selection.Bottom - Grid1.Selection.Top + 1;
  for c := Grid1.Selection.Left to Grid1.Selection.Right do
    for r := Grid1.Selection.Top to Grid1.Selection.Bottom do
    begin
      tmpGrid1.Cells[c - Grid1.Selection.Left ,
                     r - Grid1.Selection.Top] := Grid1.Cells[c, r];
{      tmpGrid1.Objects[c - Grid1.Selection.Left ,
                       r - Grid1.Selection.Top] := Pointer(LongInt(Grid1.Objects[c, r])); }
    end;
end;

procedure TTrafficForm1.PasteSelectedCells;
var
  col, Row, cc,rr : Integer;
begin
  if (Grid1.Selection.Top = 0) or (tmpGrid1.RowCount = 0) or (tmpGrid1.ColCount = 0) then
    Exit;
  col := 0;
  Row := 0;
  for cc := Grid1.Selection.Left to Grid1.Selection.Right do
  begin
    SelectedDay := cc;
    LoadDay;
    for rr := Grid1.Selection.Top to Grid1.Selection.Bottom do
    begin
      if tmpGrid1.Cells[col, Row] <> '' then
      begin
        if Grid1.Cells[cc, rr] <> '' then
          DeleteHour( Grid1.Cells[0, rr], StrToInt(Grid1.Cells[cc, rr]));
                                        //LongInt(Grid1.Objects[cc, rr]) );

//        Grid1.Cells[cc, rr] := tmpGrid1.Cells[Col, Row];

        AddHour( Grid1.Cells[0, rr], StrToInt(tmpGrid1.Cells[Col,Row]) );
                                   //LongInt(tmpGrid1.Objects[Col, Row]));
        MarkCell(cc, rr, StrToInt(tmpGrid1.Cells[Col,Row]) );
                     //  LongInt(tmpGrid1.Objects[Col, Row]));
      end;
      inc(row);
      if row > tmpGrid1.RowCount-1 then
        row := 0;
    end;
    SaveDay;
    inc(col);
    if col > tmpGrid1.ColCount-1 then
      col := 0;
  end;
end;

procedure TTrafficForm1.AddHour(Hour : String; Prior: Integer);
begin
  DaySpots.Add(Hour + CSep1 + Format('%.3d', [Prior]) + CSep + IntToStr(RecCode));
end;

procedure TTrafficForm1.DeleteHour(Hour : String; Prior: Integer);
var
  i : Integer;
  TheTime : String;
begin
  // locate hour
  i := DaySpots.IndexOfName(Hour);
  if i = -1 then
    Exit;
  Repeat
    if (StrToInt(ExtractDelimited(3, DaySpots[i], [CSep1, CSep])) = RecCode) {and
       (Prior = StrToInt(ExtractDelimited(2, DaySpots[i], [CSep1, CSep2]))) }then
      DaySpots.Delete(i)
    else
      inc(i);
    if i <= DaySpots.Count-1 then
      TheTime := ExtractDelimited(1, DaySpots[i], [CSep1]);
  until (i > DaySpots.Count-1) or (TheTime <> Hour);
end;

procedure TTrafficForm1.btnPasteCellsClick(Sender: TObject);
begin
  PasteSelectedCells;
  SpotsCount;
end;

procedure TTrafficForm1.DeleteSelectedCell;
begin
  if SelectedDay <> Grid1.Col then
  begin
    SelectedDay := Grid1.Col;
    if Not LoadDay then
      Exit;
  end;
  if Grid1.Cells[Grid1.Col, Grid1.Row] <> '' then
  Begin
    DeleteHour( Grid1.Cells[0, Grid1.Row], StrToInt(Grid1.Cells[Grid1.Col, Grid1.Row]));
                                        // LongInt(Grid1.Objects[Grid1.Col, Grid1.Row]) );
    ClearCell( Grid1.Col, Grid1.Row );
    SaveDay;
    ClearEmptyRows;
  end;
  SpotsCount;
end;

procedure TTrafficForm1.PasteSelectedCell;
begin
  PasteSelectedCells;
  SpotsCount;
end;

procedure TTrafficForm1.DeleteSelectedCells;
var
  cc, rr : Integer;
begin
  if (Grid1.Selection.Top = 0) or (tmpGrid1.RowCount = 0) or (tmpGrid1.ColCount = 0) then
    Exit;
  for cc := Grid1.Selection.Left to Grid1.Selection.Right do
  begin
    SelectedDay := cc;
    LoadDay;
    for rr := Grid1.Selection.Top to Grid1.Selection.Bottom do
    begin
      if Grid1.Cells[cc, rr] <> '' then
      begin
        DeleteHour( Grid1.Cells[0, rr], StrToInt(Grid1.Cells[cc, rr]) );
                                     // LongInt(Grid1.Objects[cc, rr]) );
        ClearCell( cc, rr );
      end;
    end;
    SaveDay;
  end;
end;

procedure TTrafficForm1.btnDelSelCellsClick(Sender: TObject);
begin
  DeleteSelectedCells;
  ClearEmptyRows;
  SpotsCount;
end;

Function TTrafficForm1.SpotsCount : Integer;
var
  cc, rr : Integer;
begin
  Result := 0;
  for cc := 1 to Grid1.ColCount - 1 do
    for rr := 1 to Grid1.RowCount - 1 do
      if Grid1.Cells[cc, rr] <> '' then
        inc(Result);
  MonthCountLabel1.Caption := IntToStr(Result);
end;

Procedure TTrafficForm1.UpdateHints;
Var
  row, col : Integer;
begin
  for Row := 1 to Grid1.RowCount -1 do
   for col := 1 to Grid1.ColCount -1 do
     Grid1.HintCell[Col, Row] := Grid1.Cells[0, Row];
end;

procedure TTrafficForm1.CopyAction1Execute(Sender: TObject);
begin
  CopyCelectedCells;
end;

procedure TTrafficForm1.PasteAction1Execute(Sender: TObject);
begin
  PasteSelectedCells;
  SpotsCount;
end;

procedure TTrafficForm1.DeleteAction1Execute(Sender: TObject);
begin
  DeleteSelectedCells;
  ClearEmptyRows;
  SpotsCount;
end;

procedure TTrafficForm1.btnHtmlSaveClick(Sender: TObject);
var
 tmp : TMemoryStream;
//  rect: TGridRect;
begin
{  rect.left:=-1;
  rect.right:=-1;
  rect.top:=-1;
  rect.bottom:=-1;
  Grid1.Contents2CSVClipboard('|', Rect); }

  if SaveDialog1.Execute then
  begin
    tmp := grid1.Contents2HTML(nil);
    Try
      tmp.SaveToFile(SaveDialog1.FileName);
    Finally
      tmp.free;
    end;
  end;

end;

procedure TTrafficForm1.SpinButton1DownClick(Sender: TObject);
begin
  if MonthCombo.ItemIndex = 11 then
  begin
    MonthCombo.ItemIndex := 0;
    YearSpin.Value := YearSpin.Value + 1;
  end
  else
  begin
    MonthCombo.ItemIndex := MonthCombo.ItemIndex + 1;
    UpdateGridDays;
  end;
end;

procedure TTrafficForm1.SpinButton1UpClick(Sender: TObject);
begin
  if MonthCombo.ItemIndex = 0 then
  begin
    MonthCombo.ItemIndex := 11;
    YearSpin.Value := YearSpin.Value - 1;
  end
  else
  begin
    MonthCombo.ItemIndex := MonthCombo.ItemIndex - 1;
    UpdateGridDays;
  end;
end;

Function TTrafficForm1.BusyFileExists : Boolean;
begin
  Result := FileExists(Format('%s%s',[NormalDir(RadioSettings.TrafficDir), BusyText]));
end;

Function TTrafficForm1.CreateBusyFile : Boolean;
var
  fn : String;
begin
  Result := False;
  fn := Format('%s%s',[NormalDir(RadioSettings.TrafficDir), BusyText]);
  AssignFile(BusyFile, fn);
  Try
    Rewrite(BusyFile);
//    Writeln(BusyFile, BusyText);
    Result := True;
    BusyFileCreated := True;
  Except;
  end;
end;

procedure TTrafficForm1.CloseAndDeleteBusyFile;
begin
  if BusyFileCreated then
  Try
    CloseFile(BusyFile);
    DeleteFile(Format('%s%s',[NormalDir(RadioSettings.TrafficDir), BusyText]));
    BusyFileCreated := False;
  Except
  end;
end;

procedure TTrafficForm1.BusyTimer1Timer(Sender: TObject);
begin
  if not BusyFileExists then
    if CreateBusyFile then
      EnableButtons(True);
end;

procedure TTrafficForm1.EnableButtons(IsEnabled : Boolean);
begin
  BusyTimer1.Enabled := not IsEnabled;
  LMDSimpleLabel1.Twinkle := not IsEnabled;
  LMDSimpleLabel1.Visible := not IsEnabled;
  LMDSimpleLabel1.Caption := BusyText;
  CopyAction1.Enabled := IsEnabled;
  PasteAction1.Enabled := IsEnabled;
  DeleteAction1.Enabled := IsEnabled;
  btnCopyCells.Enabled := IsEnabled;
  btnPasteCells.Enabled := IsEnabled;
  btnDelSelCells.Enabled := IsEnabled;
  btnDelete.Enabled := IsEnabled;
  btnAutoPaste.Enabled := IsEnabled;
  DaysSpotsForm1.btnOk1.Enabled := IsEnabled;
end;

procedure TTrafficForm1.FormDeactivate(Sender: TObject);
begin
  CloseAndDeleteBusyFile;
  BusyTimer1.Enabled := False;
end;

Procedure TTrafficForm1.CheckOtherBusy;
var
  fn : String;
  b : Boolean;
begin
  fn := Format('%s%s',[NormalDir(RadioSettings.TrafficDir), BusyText]);
  { αν υπάρχει το αρχείο κάποιος άλλος προγραμματίζει ή έμεινε από
   εσφαλμένη έξοδο από το πρόγραμμα. Προσπάθησε να σβήσεις το busy αρχείο}
  if FileExists(fn) then
  begin
    b := True;
    if DeleteFile(fn) then // αν το έσβησε δεν το χρησιμοποιούσε κανένας
      b := False
    else
      b := True;
  end
  else
    b := False;
  if Not b then
  Begin
    if CreateBusyFile then // δημιούργησε ένα δικό μας busy αρχείο
      EnableButtons(True);
  end
  else
    EnableButtons(False);  // απενεργοποίησε τα buttons
end;

end.
