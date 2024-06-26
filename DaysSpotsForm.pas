unit DaysSpotsForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Mask, Buttons, Spin,
  Menus, JvExExtCtrls, JvComponent, JvPanel;

type
  TDaysSpotsForm1 = class(TForm)
    Panel1: TJvPanel;
    SpotsList1: TListBox;
    Panel2: TJvPanel;
    HeaderControl1: THeaderControl;
    Panel3: TJvPanel;
    Panel4: TJvPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    TimeEdit: TMaskEdit;
    PrioEdit: TMaskEdit;
    AddBtn: TSpeedButton;
    ChangeBtn: TSpeedButton;
    DeleteBtn: TSpeedButton;
    Panel5: TJvPanel;
    StatusBar1: TStatusBar;
    HeaderControl2: THeaderControl;
    SelectedList1: TListBox;
    StatusBar2: TStatusBar;
    btnOk1: TBitBtn;
    btnCancel1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Savetotxtfile1: TMenuItem;
    SaveDialog1: TSaveDialog;
    procedure FormActivate(Sender: TObject);
    procedure SpotsList1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure HeaderControl1SectionResize(HeaderControl: THeaderControl;
      Section: THeaderSection);
    procedure SelectedList1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure HeaderControl2SectionResize(HeaderControl: THeaderControl;
      Section: THeaderSection);
    procedure AddBtnClick(Sender: TObject);
    procedure TimeEditExit(Sender: TObject);
    procedure OkBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure DeleteBtnClick(Sender: TObject);
    procedure btnOk1Click(Sender: TObject);
    procedure TimeEditKeyPress(Sender: TObject; var Key: Char);
    procedure PrioEditKeyPress(Sender: TObject; var Key: Char);
    procedure Savetotxtfile1Click(Sender: TObject);
  private
    { Private declarations }
    Function MakeFileName: String;
    Procedure LookListForCurrentRecording;
    procedure UpdateListStatusBar;
    Procedure UpdateSelectedStatusBar;
    Function TimeAlreadyExists(TheHour:  String; ThePrior : Integer): Boolean;
    procedure AddSeparators;
    procedure DeleteSeparators;
    procedure SaveToTxtFile;
  public
    { Public declarations }
    Date : TDateTime;
    TrafficDir : String;
    RecCode    : Integer;
    FileName   : String;
  end;

var
  DaysSpotsForm1: TDaysSpotsForm1;

implementation

{$R *.DFM}

uses
  Recs, MyLibrary, SettingsR, ResStringsU;

Const
  Separator = '';

procedure TDaysSpotsForm1.FormActivate(Sender: TObject);
begin
  Caption := C_DaysSpots + FormatDateTime('dddd dd mmmm yyyy', Date);
  FileName := MakeFileName;
  SelectedList1.Items.Clear;
  SpotsList1.Items.Clear;
  UpdateListStatusBar;
  UpdateSelectedStatusBar;
  if FileExists(FileName) then
  begin
    SpotsList1.Items.BeginUpdate;
    SpotsList1.Items.LoadFromFile(FileName);
    AddSeparators;
    SpotsList1.Items.EndUpdate;
    UpdateListStatusBar;
    LookListForCurrentRecording;
  end;
  TimeEdit.SetFocus;
end;

function TDaysSpotsForm1.MakeFileName: String;
begin
  Result := TrafficDir + FormatDateTime('yyyymmdd', Date) + C_TrafficExt;
end;

procedure TDaysSpotsForm1.SpotsList1DrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  R : TRect;
  C : array[0..255] of Char;
  S : string;
  idx : Integer;
begin
  R := Rect;
  SpotsList1.Canvas.FillRect(R);
  if SpotsList1.Items[Index] <> Separator then
  begin
    // τύπωσε την ώρα
    R.Right := R.Left + HeaderControl1.Sections[0].Width;
    s := ExtractDelimited(1, SpotsList1.Items[Index], [CSep1]);
    ExtTextOut(SpotsList1.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
              ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);
//    SpotsList1.Canvas.TextOut(r.Left, R.Top, s);

    // τύπωσε την προτεραιότητα
    R.Left := R.Left + HeaderControl1.Sections[0].Width;
    R.Right:= R.Left + HeaderControl1.Sections[1].Width-2;
    s := ExtractDelimited(2, SpotsList1.Items[Index], [CSep1, CSep]);
    ExtTextOut(SpotsList1.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
              ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);
//    SpotsList1.Canvas.TextOut(r.Left, R.Top, s);

    { βρες τον κωδικό }
    idx := StrToInt(ExtractDelimited(3, SpotsList1.Items[Index], [CSep1, CSep])); // κωδικός
    { από τον κωδικό βρες το όνομα }
    s := Form1.GetName(idx);

    { τυπωσε με bold αν είναι αυτό που προγραμματίζουμε τώρα) }
    if pos(HLabel1.Caption, s) <> 0 then
      SpotsList1.Canvas.Font.Style := [fsBold]
    else
      SpotsList1.Canvas.Font.Style := [];

    // τύπωσε το όνομα του σποτ
    R.Left := R.Left + HeaderControl1.Sections[1].Width;
    R.Right:= R.Left + HeaderControl1.Sections[2].Width-2;
    ExtTextOut(SpotsList1.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
              ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);
//    SpotsList1.Canvas.TextOut(r.Left, R.Top, s);

    SpotsList1.Canvas.Font.Style := [];

    // τύπωσε την διάρκεια
    R.Left := R.Left + HeaderControl1.Sections[2].Width;
    R.Right:= R.Left + HeaderControl1.Sections[3].Width;

    s := Form1.GetLength(idx);
    ExtTextOut(SpotsList1.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
              ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil); 
//    SpotsList1.Canvas.TextOut(r.Left, R.Top, s);

  end
  else
  begin
    s := SpotsList1.Items[Index];
    ExtTextOut(SpotsList1.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
                ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);
  end;
end;

procedure TDaysSpotsForm1.HeaderControl1SectionResize(
  HeaderControl: THeaderControl; Section: THeaderSection);
begin
  SpotsList1.Invalidate;
end;

procedure TDaysSpotsForm1.SelectedList1DrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  R : TRect;
  C : array[0..255] of Char;
  S : string;
begin
  R := Rect;
  SelectedList1.Canvas.FillRect(R);

  // τύπωσε την ώρα
  R.Right := R.Left + HeaderControl2.Sections[0].Width;
  s := ExtractDelimited(1, SelectedList1.Items[Index], [CSep1]);
  ExtTextOut(SelectedList1.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
            ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);

  // τύπωσε την προτεραιότητα
  R.Left := R.Left + HeaderControl2.Sections[0].Width;
  R.Right:= R.Left + HeaderControl2.Sections[1].Width;
  s := ExtractDelimited(2, SelectedList1.Items[Index], [CSep1, CSep]);
  ExtTextOut(SelectedList1.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
            ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);
end;

procedure TDaysSpotsForm1.HeaderControl2SectionResize(
                          HeaderControl: THeaderControl; Section: THeaderSection);
begin
  SelectedList1.Invalidate;
end;

Function TDaysSpotsForm1.TimeAlreadyExists(TheHour: String; ThePrior : Integer): Boolean;
var
  i : Integer;
  tmpTime : String;
begin
  Result := False;
  i := SelectedList1.Items.IndexOfName(TheHour);
  if i = -1 then
    Exit;
  tmpTime := '';
  Repeat
    if (StrToInt(ExtractDelimited(3, SelectedList1.Items[i], [CSep1, CSep])) = RecCode)
      { and
       (Prior = StrToInt(ExtractDelimited(2, SelectedList1.Items[i], [CSep1, CSep2]))) } then
      Begin
        ShowMessage(C_HourExists + TheHour);
        Result := True;
      end
    else
      inc(i);
    if i <= SelectedList1.Items.Count-1 then
      tmpTime := ExtractDelimited(1, SelectedList1.Items[i], [CSep1]);
  until (i > SelectedList1.Items.Count-1) or (tmpTime <> TheHour) or Result;
end;

procedure TDaysSpotsForm1.AddBtnClick(Sender: TObject);
Var
  s : String;
  i : Integer;
begin
  try
    StrToDateTime(TimeEdit.EditText);
    s := TimeEdit.EditText + CSep1 + Format('%.3d', [StrToInt(PrioEdit.EditText)]) + CSep + IntToStr(RecCode);
    if not TimeAlreadyExists(TimeEdit.EditText, StrToInt(PrioEdit.EditText)) then
    begin
      SpotsList1.Items.BeginUpdate;
      DeleteSeparators;
      SelectedList1.Items.Add(s);
      SpotsList1.ItemIndex := SpotsList1.Items.Add(s);
      AddSeparators;
      // update the screen view to the item added
      SpotsList1.ItemIndex := SpotsList1.Items.Count-1;
      // try to place it about in a midle of the screen;
      i := SpotsList1.items.IndexOf(s);
      if i - 10 >= 0 then
        SpotsList1.ItemIndex := i - 10; 
      SpotsList1.ItemIndex := i;

      SpotsList1.Items.EndUpdate;
      UpdateSelectedStatusBar;
      UpdateListStatusBar;
    end;
  except
    TimeEdit.Text := '00:00';
  end;
  TimeEdit.SetFocus;
  TimeEdit.SelectAll;
end;

procedure TDaysSpotsForm1.TimeEditExit(Sender: TObject);
begin
  try
    StrToDateTime(TimeEdit.EditText);
  except
    TimeEdit.Text := '00:00';
    TimeEdit.SetFocus;
    TimeEdit.SelectAll;
  end;
end;

procedure TDaysSpotsForm1.OkBtnClick(Sender: TObject);
begin
  try
    DeleteSeparators;
    SpotsList1.Items.SaveToFile(FileName);
    ModalResult := mrOK;
  Except
    ShowMessage(C_CanNotSaveInfo);
  end;
end;

procedure TDaysSpotsForm1.CancelBtnClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TDaysSpotsForm1.LookListForCurrentRecording;
var
  i : Integer;
begin
  for i := 0 to SpotsList1.Items.Count - 1 do
  if SpotsList1.Items[i] <> Separator then
    if StrToInt(ExtractDelimited(3, SpotsList1.Items[i], [CSep1,CSep])) = RecCode then
      SelectedList1.Items.Add( SpotsList1.Items[i] );
  UpdateSelectedStatusBar;
end;

procedure TDaysSpotsForm1.UpdateListStatusBar;
var
  i : Integer;
  m : LongInt;
  c : Integer;
begin
  c := 0;
  m := 0;
  for i := 0 to SpotsList1.Items.Count - 1 do
  begin
    if SpotsList1.Items[i] <> Separator then
    begin
      m := m + Form1.GetIntLength(
        StrToInt(ExtractDelimited(3, SpotsList1.Items[i], [CSep1, CSep])));
      inc(c);
    end;
  end;
  StatusBar2.Panels[3].Text := MyConvertMSecsToString(m);
  StatusBar2.Panels[1].Text := IntToStr( c );
end;

procedure TDaysSpotsForm1.DeleteBtnClick(Sender: TObject);
var
  i : Integer;
begin
  if SelectedList1.ItemIndex = -1 then
    Exit;
  SpotsList1.Items.BeginUpdate;
//  SpotsList1.Visible := False;
  DeleteSeparators;
  i := 0;
  while i <= SpotsList1.Items.Count do
  begin
    if SpotsList1.Items[i] = SelectedList1.Items[SelectedList1.ItemIndex] then
    begin
      SpotsList1.Items.Delete(i);
      SelectedList1.Items.Delete(SelectedList1.ItemIndex);
      UpdateListStatusBar;
      UpdateSelectedStatusBar;
      i := SpotsList1.Items.Count;
    end;
    inc(i);
  end;
  AddSeparators;
  SpotsList1.Items.EndUpdate;
//  SpotsList1.Visible := True;
end;

procedure TDaysSpotsForm1.btnOk1Click(Sender: TObject);
begin
  try
    DeleteSeparators;
    SpotsList1.Items.SaveToFile(FileName);
    ModalResult := mrOK;
  Except
    ShowMessage(C_CanNotSaveInfo);
  end;
end;

procedure TDaysSpotsForm1.UpdateSelectedStatusBar;
begin
  StatusBar1.Panels[1].Text := IntToStr( SelectedList1.Items.Count );
end;

procedure TDaysSpotsForm1.AddSeparators;
var
  i : Integer;
  LastHour , Hour : String;
begin
  SpotsList1.Sorted := False;
  LastHour := '';
  i := 0;
  if SpotsList1.Items.Count > 0 then
    LastHour := Copy(SpotsList1.Items[0], 1, 5);

  while i <= SpotsList1.Items.Count - 1 do
  begin
    Hour := Copy(SpotsList1.Items[i], 1, 5);
    if Hour > LastHour then
    Begin
      LastHour := Hour;
      SpotsList1.Items.Insert(i, Separator);
      Inc(i, 2);
    end
    else
      Inc(i);
  end;
end;

procedure TDaysSpotsForm1.DeleteSeparators;
var
  i : Integer;
begin
  i := 0;
  While i <= SpotsList1.Items.Count - 1 do
  begin
    if SpotsList1.Items[i] = Separator then
      SpotsList1.Items.Delete(i)
    else
      Inc(i);
  end;
  SpotsList1.Sorted := True;
end;


procedure TDaysSpotsForm1.TimeEditKeyPress(Sender: TObject; var Key: Char);
begin
  if key = '+' then
  begin
    AddBtnClick(self);
    key := #0;
  end;
end;

procedure TDaysSpotsForm1.PrioEditKeyPress(Sender: TObject; var Key: Char);
begin
  if key = '+' then
  begin
    AddBtnClick(self);
    key := #0;
  end;
end;

procedure TDaysSpotsForm1.Savetotxtfile1Click(Sender: TObject);
begin
  SaveToTxtFile;
end;

procedure TDaysSpotsForm1.SaveToTxtFile;
var
  st : TStringList;
  i,idx : Integer;
  s : String;
begin
  if SaveDialog1.Execute then
  begin
    st := TStringList.Create;
    Try
      for i := 0 to SpotsList1.Items.Count-1 do
      begin
        if SpotsList1.Items[i] <> Separator then
        begin
          // Ώρα
          s := ExtractDelimited(1, SpotsList1.Items[i], [CSep1]);
          // προτεραιότητα
          s := s + ' ' + ExtractDelimited(2, SpotsList1.Items[i], [CSep1, CSep]);
          { βρες τον κωδικό }
          idx := StrToInt(ExtractDelimited(3, SpotsList1.Items[i], [CSep1, CSep])); // κωδικός
          { από τον κωδικό βρες το όνομα }
          s := s + ' ' + Form1.GetName(idx);
          st.Add(s);
        end
        else
          st.Add(Separator);
      end;
      st.SaveToFile(SaveDialog1.FileName);
      st.Clear;
    finally
      FreeAndNil(st);
    end;
  end;
end;

end.
