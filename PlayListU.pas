unit PlayListU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, SettingsR, StdCtrls, ExtCtrls, Mask,
  Spin, Splash, Menus, ComCtrls, JvMenus, Grids,
  JvComponent, JvFormPlacement, JvExStdCtrls, JvTextListBox, JvExControls,
  JvSpeedButton, JvExExtCtrls, JvPanel, JvExGrids, JvStringGrid;

type
  TForm1 = class(TForm)
    Panel1: TJvPanel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FormStorage1: TJvFormStorage;
    WeekPopup1: TPopupMenu;
    LoadWeek1: TMenuItem;
    LoadDay1: TMenuItem;
    SaveWeek1: TMenuItem;
    SaveDay1: TMenuItem;
    OpenDialog2: TOpenDialog;
    SaveDialog2: TSaveDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TJvPanel;
    PrgPanel: TJvPanel;
    Panel3: TJvPanel;
    btnNewPrgHour: TSpeedButton;
    btnCopyPrgHour: TSpeedButton;
    btnDeletePrgHour: TSpeedButton;
    btnCheck: TSpeedButton;
    btnSavePrg: TJvSpeedButton;
    Panel14: TJvPanel;
    Label9: TLabel;
    ProgramsListBox: TListBox;
    Panel15: TJvPanel;
    Label8: TLabel;
    DaysListBox: TListBox;
    Panel7: TJvPanel;
    btnLoad: TSpeedButton;
    btnSave: TSpeedButton;
    btnClear: TSpeedButton;
    Panel16: TJvPanel;
    btnExit: TBitBtn;
    Panel8: TJvPanel;
    TitlePanel: TJvPanel;
    Panel9: TJvPanel;
    Panel6: TJvPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BeatFrom: TMaskEdit;
    BeatTo: TMaskEdit;
    BeatDelta: TMaskEdit;
    Duration: TMaskEdit;
    Panel12: TJvPanel;
    Label1: TLabel;
    StartListBox: TJvTextListBox;
    Panel13: TJvPanel;
    btnStart: TSpeedButton;
    SpinButton1: TSpinButton;
    Panel5: TJvPanel;
    Label6: TLabel;
    BodyListBox: TJvTextListBox;
    Panel10: TJvPanel;
    btnBody: TSpeedButton;
    SpinButton2: TSpinButton;
    RepeatCheck: TCheckBox;
    Panel4: TJvPanel;
    Label7: TLabel;
    EndListBox: TJvTextListBox;
    Panel11: TJvPanel;
    btnEnd: TSpeedButton;
    SpinButton3: TSpinButton;
    Panel19: TJvPanel;
    Splitter1: TSplitter;
    Panel20: TJvPanel;
    MinuteButton1: TJvSpeedButton;
    MinutesPopUp1: TPopupMenu;
    N1Hour1: TMenuItem;
    N30Minutes1: TMenuItem;
    N15Minutes1: TMenuItem;
    ProgramGrid1: TJvStringGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure StartListBoxKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure btnNewPrgHourClick(Sender: TObject);
    procedure ProgramsListBoxDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure btnSavePrgClick(Sender: TObject);
    procedure DaysListBoxClick(Sender: TObject);
    procedure btnDeletePrgHourClick(Sender: TObject);
    procedure ProgramsListBoxClick(Sender: TObject);
    procedure btnCopyPrgHourClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure LoadWeek1Click(Sender: TObject);
    procedure SaveWeek1Click(Sender: TObject);
    procedure LoadDay1Click(Sender: TObject);
    procedure SaveDay1Click(Sender: TObject);
    procedure RefreshListView(TheListView : TListView; Var DirName : String; Extens : String);
    procedure InitializeWeekProgram;
    Procedure AddDaysToGrid;
    procedure AddHoursToGrid;
    procedure FillGridWithProgram;
    procedure MinutesPopUpChange1(Sender: TObject);
    Procedure GetGridColRow(Var col, row: Integer; Str : String);
  private
    { Private declarations }
    DirFiles: TStringList;
    procedure OnFileFoundEvent(Sender : TObject; var SearchRec : TSearchRec);
    Function GetSelectedItem : String;
    Function GetSeperatedItem(ProgramLine : String) : String;
    procedure LoadPlayList(FileName : String);
    Procedure SavePlayList(FileName : String);
    procedure ClearAll;
    procedure MoveUp(TheListBox : TJvTextListBox; StrList : TStringList);
    procedure MoveDown(TheListBox : TJvTextListBox; StrList : TStringList);
    procedure UpdateDayPlayList(day : Integer);
    procedure CopyHourToDay(PrgStr: String; TheDay: Integer; TheHour : String);
    Function CheckOK : Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

uses
  SelectU, MyTypes, MyLibrary, NewHourU, CopyHourU, GetDirFiles,
  ResStringsU;

var
  OldWindowProc : Pointer; {Variable for the old windows proc}
  MyMsg : DWord; {custom systemwide message}
  StartList, BodyList, EndList, ProgramsList : TStringList;
  PlayListFileName : String;

function NewWindowProc(WindowHandle : hWnd;
                       TheMessage   : LongInt;
                       ParamW       : LongInt;
                       ParamL       : LongInt) : LongInt stdcall;
begin
  if TheMessage = MyMsg  then begin
   {Tell the application to restore, let it restore the form}
    SendMessage(Application.handle, WM_SYSCOMMAND, SC_RESTORE, 0);
    SetForegroundWindow(Application.Handle);
   {We handled the message - we are done}
    Result := 0;
    exit;
  end;
 {Call the original winproc}
  Result := CallWindowProc(OldWindowProc,
                           WindowHandle,
                           TheMessage,
                           ParamW,
                           ParamL);
end;

procedure TForm1.FormActivate(Sender: TObject);
var
  i : Integer;
begin
  PlayListFileName := '';
  SelectForm.ShowSelectTabs := [stHardDiscFiles, stSongPacks, stDatabase, stInsertFiles];
  SelectForm.InitializeForm;
  OpenDialog1.InitialDir := RadioSettings.PlayListsDir;
  OpenDialog1.Filter     := C_PlayListsFilter;
  OpenDialog1.DefaultExt := C_PlayListExt;
  SaveDialog1.InitialDir := RadioSettings.PlayListsDir;
  SaveDialog1.DefaultExt := C_PlayListExt;
  SaveDialog1.Filter     := C_PlayListsFilter;
  OpenDialog2.InitialDir := RadioSettings.ProgramsDir;
  SaveDialog2.InitialDir := RadioSettings.ProgramsDir;
  for i := 1 to 7 do
    DaysListBox.Items.Add( LongDayNames[i] );
  DaysListBox.ItemIndex := DayOfWeek(Now) -1;
  Try
    ProgramsList.LoadFromFile(RadioSettings.ServerDataDir + C_WeekProgramFile);
    UpdateDayPlayList(DaysListBox.ItemIndex);
  Except
    ShowMessage(C_ErrorLoadingWeekProgram);
  end;
  if ParamCount > 0 then
    LoadPlayList( ParamStr(1) );

  InitializeWeekProgram;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 {Register a custom windows message}
  MyMsg := RegisterWindowMessage('S19PlayList');
 {Set form1's windows proc to ours and remember the old window proc}
  OldWindowProc := Pointer(SetWindowLong(Form1.Handle,
                                         GWL_WNDPROC,
                                         LongInt(@NewWindowProc)));
  SplashScreen := TSplashScreen.Create(Application);
  SplashScreen.Show;
  SplashScreen.Update; 
  LoadSettings;
  StartList   := TStringList.Create;
  BodyList    := TStringList.Create;
  EndList     := TStringList.Create;
  ProgramsList:= TStringList.Create;
  ProgramsList.Sorted := True;
  SplashScreen.Release;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  StartList.Free;
  BodyList.Free;
  EndList.Free;
  ProgramsList.Free;
 {Set form1's window proc back to it's original procedure}
  SetWindowLong(Form1.Handle,
                GWL_WNDPROC,
                LongInt(OldWindowProc));
end;

procedure TForm1.btnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

Function TForm1.GetSeperatedItem(ProgramLine : String) : String;
begin
  case ProgramLine[2] of
    C_ProgramItemSongPack : Result := 'FilePack : ' + ExtractDelimited(2, ProgramLine, [CSep1]);
    C_ProgramItemHDFile   : Result := 'Αρχείο   : ' + ExtractDelimited(2, ProgramLine, [CSep1]);
    C_ProgramItemDBFilter : Result := 'Φίλτρο   : ' + ExtractDelimited(2, ProgramLine, [CSep2]);
    C_ProgramItemDBSong   : Result := 'Τραγούδι : ' + ExtractDelimited(2, ProgramLine, [CSep2]);
  end;
end;

procedure TForm1.btnStartClick(Sender: TObject);
var
  ProgramItem : String;
  i : Integer;
begin
  if SelectForm.ShowModal = mrOK then
  begin
    ProgramItem := GetSelectedItem;
    if ProgramItem <> '' then
    begin
      if Sender = btnStart then
      begin
        i := StartListBox.ItemIndex + 1;
        StartList.Insert(i, C_ProgramStart + ProgramItem);
        StartListBox.Items.Insert(i, GetSeperatedItem( C_ProgramStart + ProgramItem ));
        StartListBox.ItemIndex := i;
      end
      else
      if Sender = btnBody then
      begin
        i := BodyListBox.ItemIndex + 1;
        BodyList.Insert(i, C_ProgramBody + ProgramItem);
        BodyListBox.Items.Insert(i, GetSeperatedItem( C_ProgramBody + ProgramItem ));
        BodyListBox.ItemIndex := i;
      end
      else
      if Sender = btnEnd then
      begin
        i := EndListBox.ItemIndex + 1;
        EndList.Insert(i, C_ProgramEnd + ProgramItem);
        EndListBox.Items.Insert(i, GetSeperatedItem(C_ProgramEnd + ProgramItem));
        EndListBox.ItemIndex := i;
      end;
    end;
  end;
end;

Function TForm1.GetSelectedItem : String;
begin
  Case SelectForm.ChoosenItem of
    ciFilesPack :
        Result := C_ProgramItemSongPack + CSep1 +
                       SelectForm.FilesPackFileName;
    ciHDFile   :
        Result := C_ProgramItemHDFile + CSep1 +
                       SelectForm.Info.FileName;
    ciDatabaseSong :
        Result := C_ProgramItemDBSong + CSep1 +
                       IntToStr(SelectForm.Info.TitleCode) + CSep2 +
                       SelectForm.Info.Artist + ' - ' +
                       SelectForm.Info.Song;
    ciDatabaseFilter :
        Result := C_ProgramItemDBFilter + CSep1 +
                       SelectForm.FilterString + CSep2 +
                       SelectForm.FilterName;
    else
      Result := '';
  end;
end;

procedure TForm1.ClearAll;
begin
  TitlePanel.Caption := '';
  BeatFrom.Text := '000';
  BeatTo.Text   := '250';
  BeatDelta.Text:= '030';
  Duration.Text := '000';
  RepeatCheck.Checked := False;
  StartList.Clear;
  BodyList.Clear;
  EndList.Clear;
  StartListBox.Items.Clear;
  BodyListBox.Items.Clear;
  EndListBox.Items.Clear;
end;

procedure TForm1.LoadPlayList(FileName : String);
Var
  ProgramList : TStringList;
  i : Integer;
begin
  ClearAll;
  ProgramList := TStringList.Create;
  Try
    PlayListFileName := FileName;
    Try
      ProgramList.LoadFromFile(PlayListFileName);
      TitlePanel.Caption := 'PlayList : ' + ExtractFileName(PlayListFileName);
      BeatFrom.Text := ExtractDelimited(1, ProgramList[0], [CSep]);
      BeatTo.Text   := ExtractDelimited(2, ProgramList[0], [CSep]);
      BeatDelta.Text:= ExtractDelimited(3, ProgramList[0], [CSep]);
      Duration.Text := ExtractDelimited(4, ProgramList[0], [CSep]);
      RepeatCheck.Checked := (ExtractDelimited(5, ProgramList[0], [CSep]) = '1');
      i := 1;
      While i <= ProgramList.Count-1 do
      begin
        if ProgramList[i] <> '' then
        begin
          if ProgramList[i][1] = C_ProgramStart then
          begin
            StartList.Add(ProgramList[i]);
            StartListBox.Items.Add(GetSeperatedItem( ProgramList[i] ));
          end
          else
          if ProgramList[i][1] = C_ProgramBody then
          begin
            BodyList.Add( ProgramList[i] );
            BodyListBox.Items.Add(GetSeperatedItem( ProgramList[i] ));
          end
          else
          if ProgramList[i][1] = C_ProgramEnd then
          begin
            EndList.Add(ProgramList[i]);
            EndListBox.Items.Add(GetSeperatedItem(ProgramList[i]));
          end;
        end;
        inc(i);
      end;
    except
      ShowMessage(C_ProblemLoadingFile + PlayListFileName);
    end;
  Finally
    ProgramList.Free;
  end;
end;

procedure TForm1.SavePlayList(FileName : String);
var
  ProgramList : TStringList;
  i : Integer;
begin
  ProgramList := TStringList.Create;
  try
    ProgramList.Add( BeatFrom.EditText + CSep + BeatTo.EditText + CSep +
                     BeatDelta.EditText + CSep + Duration.EditText + CSep +
                     ReturnString(RepeatCheck.Checked, '1', '0'));
    for i := 0 to StartList.Count -1 do
      ProgramList.Add(StartList[i]);
    for i := 0 to BodyList.Count-1 do
      ProgramList.Add(BodyList[i]);
    for i := 0 to EndList.Count-1 do
      ProgramList.Add(EndList[i]);
    Try
      ProgramList.SaveToFile(FileName);
      PlayListFileName := FileName;
      TitlePanel.Caption := 'PlayList : ' + ExtractFileName(PlayListFileName);
    except
      ShowMessage(C_ProblemSavingFile + PlayListFileName);
    end;
  finally
    ProgramList.Free;
  end;
end;

procedure TForm1.btnLoadClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    LoadPlayList(OpenDialog1.FileName);
end;

procedure TForm1.btnSaveClick(Sender: TObject);
begin
  SaveDialog1.FileName := PlayListFileName;
  if SaveDialog1.Execute then
    SavePlayList(SaveDialog1.FileName);
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  ClearAll;
  PlayListFileName := '';
end;

procedure TForm1.StartListBoxKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 46) and (TJvTextListBox(Sender).ItemIndex > -1) then
  begin
    if Sender = StartListBox then
      StartList.Delete(TJvTextListBox(Sender).ItemIndex)
    else
    if Sender = BodyListBox then
      BodyList.Delete(TJvTextListBox(Sender).ItemIndex)
    else
    if Sender = EndListBox then
      EndList.Delete(TJvTextListBox(Sender).ItemIndex);
    TJvTextListBox(Sender).Items.Delete( TJvTextListBox(Sender).ItemIndex );
  end;  
end;

procedure TForm1.MoveUp(TheListBox : TJvTextListBox; StrList : TStringList);
var
  idx : Integer;
begin
  if TheListBox.ItemIndex > 0 then
  begin
    idx := TheListBox.ItemIndex;
    TheListBox.Items.Move(idx, idx - 1);
    StrList.Move(idx, idx - 1);
    TheListBox.ItemIndex := idx - 1;
  end;
end;

procedure TForm1.MoveDown(TheListBox : TJvTextListBox; StrList : TStringList);
var
  idx : Integer;
begin
  if TheListBox.ItemIndex < TheListBox.Items.Count-1 then
  begin
    idx := TheListBox.ItemIndex;
    TheListBox.Items.Move(idx, idx + 1);
    StrList.Move(idx, idx + 1);
    TheListBox.ItemIndex := idx + 1;
  end;
end;

procedure TForm1.SpinButton1UpClick(Sender: TObject);
begin
  if Sender = SpinButton1 then
    MoveUp(StartListBox, StartList)
  else
  if Sender = SpinButton2 then
    MoveUp(BodyListBox, BodyList)
  else
  if Sender = SpinButton3 then
    MoveUp(EndListBox, EndList);
end;

procedure TForm1.SpinButton1DownClick(Sender: TObject);
begin
  if Sender = SpinButton1 then
    MoveDown(StartListBox, StartList)
  else
  if Sender = SpinButton2 then
    MoveDown(BodyListBox, BodyList)
  else
  if Sender = SpinButton3 then
    MoveDown(EndListBox, EndList);
end;

procedure TForm1.btnNewPrgHourClick(Sender: TObject);
var
  s : String;
  HourFound : Boolean;
  i : Integer;
begin
  if NewHourForm.ShowModal = mrOK then
  begin
    // Υπάρχει ήδη η ώρα ?
    HourFound := False;
    i := 0;
    While (i <= ProgramsListBox.Items.Count - 1) and (not HourFound) do
      if ExtractDelimited(2, ProgramsListBox.Items[i], [CSep, CSep1]) = NewHourForm.Hour then
        HourFound := True
      else
        Inc(i);
    if HourFound then
      ShowMessage(C_HourExists)
    else
    begin
      s := IntToStr(DaysListBox.ItemIndex) + CSep +
                    NewHourForm.Hour + CSep1 + NewHourForm.PlayList;
      ProgramsList.Add(s);
      ProgramsListBox.ItemIndex := ProgramsListBox.Items.Add(s);
    end;  
  end;
end;

procedure TForm1.ProgramsListBoxDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  R: TRect;
  C: array[0..255] of Char;
  S: string;
begin
  R := Rect;
  ProgramsListBox.Canvas.FillRect(R);

  R.Right := 30;
  s := ExtractDelimited(2, ProgramsListBox.items[Index], [CSep, CSep1]);

  ExtTextOut(ProgramsListBox.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
             ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);

  s := ExtractDelimited(3, ProgramsListBox.items[Index], [CSep, CSep1]);

  R.Left := 32;
  R.Right:= R.Left + ProgramsListBox.Width;

  ExtTextOut(ProgramsListBox.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
               ETO_OPAQUE, @R, StrPCopy(C, S), System.Length(s), nil);
end;

procedure TForm1.UpdateDayPlayList(day : Integer);
var
  i : Integer;
begin
  ProgramsListBox.Items.Clear;
  for i := 0 to ProgramsList.Count -1 do
    if StrToInt(ExtractDelimited(1, ProgramsList[i], [CSep])) = day then
      ProgramsListBox.Items.Add(ProgramsList[i]);
end;

procedure TForm1.btnSavePrgClick(Sender: TObject);
begin
  Try
    if CheckOK then
    Begin
      ProgramsList.SaveToFile(RadioSettings.ServerDataDir + C_WeekProgramFile);
      ShowMessage('Saved OK');
    end;
  except
    ShowMessage(C_ErrorSavingWeekProgram);
  end;
end;

Function TForm1.CheckOK : Boolean;
var
  i : Integer;
  s : String;
begin
  Result := True;
  i := 0;
  while i <= ProgramsList.Count-1 do
  begin
    s := ExtractDelimited(3, ProgramsList[i], [CSep,CSep1]);
    if Not FileExists(RadioSettings.PlayListsDir + s) then
    begin
      Result := False;
      if MessageDlg( Format(C_PlaylistDoesNotExist, [s, LongDayNames[StrToInt(ProgramsList[i][1]) + 1],
                                                     ExtractDelimited(2, ProgramsList[i], [CSep,CSep1])])
{      'Το PlayList "' + s + '" Ημέρα : ' +
                 LongDayNames[StrToInt(ProgramsList[i][1]) + 1] +
                 ' Ώρα : ' + ExtractDelimited(2, ProgramsList[i], [CSep,CSep1]) +
                 ' Δεν υπάρχει.'} , mtError,[mbOk, mbAbort], 0) = mrAbort then
        i := ProgramsList.Count-1;
    end;
    inc(i);
  end;
end;


procedure TForm1.DaysListBoxClick(Sender: TObject);
begin
  ClearAll;
  UpdateDayPlayList(DaysListBox.ItemIndex);
end;

procedure TForm1.btnDeletePrgHourClick(Sender: TObject);
var
  s : String;
  i : Integer;
begin
  if  ProgramsListBox.ItemIndex = -1 then
    Exit;
  s := ProgramsListBox.Items[ProgramsListBox.ItemIndex];
  i := ProgramsList.IndexOf(s);
  if i > -1 then
  begin
    if MessageDlg( Format(C_DeleteHourFromProgram, [ExtractDelimited(3, s, [CSep, CSep1])])
{    'Διαγραφή του ' + ExtractDelimited(3, s, [CSep, CSep1]) +
                  ' από το πρόγραμμα της ημέρας ? '}, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      ProgramsList.Delete(i);
      ProgramslistBox.Items.Delete(ProgramsListBox.ItemIndex);
    end;
  end;
end;

procedure TForm1.ProgramsListBoxClick(Sender: TObject);
begin
  if ProgramsListBox.ItemIndex = -1 then
    Exit;
  LoadPlayList(RadioSettings.PlayListsDir +
               ExtractDelimited(3, ProgramsListBox.Items[ProgramsListBox.ItemIndex] , [CSep, CSep1]));
end;

procedure TForm1.CopyHourToDay(PrgStr: String; TheDay: Integer; TheHour : String);
var
  HourFound : Boolean;
  i, idx : Integer;
begin
  HourFound := False;
  i := 0;
  idx := -1;
  While (i <= ProgramsList.Count -1) and (not HourFound) do
    if (ExtractDelimited(2, ProgramsList[i], [CSep, CSep1]) = TheHour) and
       (TheDay = StrToInt( ProgramsList[i][1] )) then
    begin
      HourFound := True;
      idx := i;
    end
    else
      Inc(i);
  if HourFound then
    if MessageDlg( Format(C_ReplaceProgrammedTime, [LongDayNames[TheDay+1],
                                                   TheHour,
                                                   ExtractDelimited(3, ProgramsList[idx], [CSep, CSep1])])
{          'Υπάρχει ήδη ώρα προγραμματισμένη την ' +
                  LongDayNames[TheDay+1] + ' και ώρα ' + TheHour + ' (' +
                  ExtractDelimited(3, ProgramsList[idx], [CSep, CSep1]) + ')' + #13 +
                  'Να γίνει αντικατάσταση ?'}, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ProgramsList.Delete(idx)
    else
      Exit;

  ProgramsList.Add(IntToStr(TheDay) + CSep + TheHour + CSep1 + ExtractDelimited(3, PrgStr, [CSep, CSep1]));
//
end;

procedure TForm1.btnCopyPrgHourClick(Sender: TObject);
var
  day, i : Integer;
  s   : String;
begin
  if ProgramsListBox.ItemIndex = -1 then
    Exit;
  if CopyHourForm.ShowModal = mrOK then
  begin
    if CopyHourForm.RadioGroup1.ItemIndex = 0 then
    begin
      for day := 0 to 6 do
        if CopyHourForm.DaysListBox.Selected[day] then
          for i := 0 to ProgramsListBox.Items.Count -1 do
            CopyHourToDay(ProgramsListBox.Items[i], day, ExtractDelimited(2, ProgramsListBox.Items[i], [CSep, CSep1]) );
    end
    else
    begin
      s := ProgramsListBox.Items[ProgramsListBox.ItemIndex];
      for Day := 0 to 6 do
        if CopyHourForm.DaysListBox.Selected[day] then
          CopyHourToDay(s, day, CopyHourForm.MaskEdit1.EditText);
    end;
    UpdateDayPlayList(DaysListBox.ItemIndex);
  end;
end;

procedure TForm1.btnCheckClick(Sender: TObject);
begin
  if CheckOK then
    MessageDlg(C_PlaylistsExistOnHardDisc, mtInformation, [mbOk], 0);
end;

procedure TForm1.LoadWeek1Click(Sender: TObject);
begin
  OpenDialog2.Filter := C_PrgWeekExtFilter;
  OpenDialog2.DefaultExt := C_PrgWeekExt;
  if OpenDialog2.Execute then
    if MessageDlg( Format(C_ReplaceProgramWeek, [ExtractFileName(OpenDialog2.FileName)]),
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Try
      ProgramsList.LoadFromFile(OpenDialog2.FileName);
      ShowMessage('Ok');
    except
      ShowMessage('Error');
    end;
end;

procedure TForm1.SaveWeek1Click(Sender: TObject);
begin
  SaveDialog2.Filter := C_PrgWeekExtFilter;
  SaveDialog2.DefaultExt := C_PrgWeekExt;
  if SaveDialog2.Execute then
  Try
    ProgramsList.SaveToFile(SaveDialog2.FileName);
    ShowMessage('Ok')
  Except
    ShowMessage('Error');
  end;  
end;

procedure TForm1.LoadDay1Click(Sender: TObject);
var
  day : Integer;
  i : Integer;
  StrL : TStringList;
begin
  StrL := TStringList.Create;
  Try
    OpenDialog2.Filter := C_PrgDayExtFilter;
    OpenDialog2.DefaultExt := C_PrgDayExt;
    day := DaysListBox.ItemIndex;
    if OpenDialog2.Execute then
      if MessageDlg( Format(C_ReplaceProgramDay, [LongDayNames[Day+1], ExtractFileName(OpenDialog2.FileName)]),
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Begin
        i := 0;
        While i <= ProgramsList.Count-1 do
          if ProgramsList[i][1] = IntToStr(day) then
            ProgramsList.Delete(i)
          else
            inc(i);
        StrL.LoadFromFile(OpenDialog2.FileName);
        ProgramsList.AddStrings(StrL);
        DaysListBoxClick(self);
      end;
  Finally
    StrL.Free;
  end;
end;

procedure TForm1.SaveDay1Click(Sender: TObject);
Var
  day, i : Integer;
  StrL : TStringList;
begin
  StrL := TStringList.Create;
  Try
    day := DaysListBox.ItemIndex;
    SaveDialog2.Filter := C_PrgDayExtFilter;
    SaveDialog2.DefaultExt := C_PrgDayExt;
    day := DaysListBox.ItemIndex;
    if SaveDialog2.Execute then
    begin
      i := 0;
      While i <= ProgramsList.Count-1 do
      begin
        if ProgramsList[i][1] = IntToStr(day) then
          StrL.Add(ProgramsList[i]);
        inc(i);
      end;
      StrL.SaveToFile(SaveDialog2.FileName);
    end;
  finally
    StrL.Free;
  end;
end;

procedure TForm1.OnFileFoundEvent(Sender : TObject; var SearchRec : TSearchRec);
begin
  DirFiles.Add(SearchRec.Name)
end;

procedure TForm1.RefreshListView(TheListView : TListView; Var DirName : String; Extens : String);
var
  i : Integer;
  ListItem : TListItem;
  GetDirFiles : TGetDirFiles;

begin
  GetDirFiles := TGetDirFiles.Create;
  GetDirFiles.OnFileFound := OnFileFoundEvent;
  DirFiles := TStringList.Create;
  Try
    GetDirFiles.GetDirectoryFiles(DirName, Extens);
    i := 0;
    TheListView.Items.BeginUpdate;
    TheListView.Items.Clear;
    While i <= DirFiles.Count - 1 do
    Begin
      ListItem := TheListView.Items.Add;
      ListItem.Caption := DirFiles[i];
      inc(i);
    end;
  Finally
    TheListView.Items.EndUpdate;
    DirFiles.Clear;
    FreeAndNil(DirFiles);
    FreeAndNil(GetDirFiles);
  end;
end;

procedure TForm1.InitializeWeekProgram;
Var
  i : Integer;
begin
  for i := 0 to ProgramGrid1.ColCount do
    ProgramGrid1.Cols[i].Clear;
  for i := 0 to ProgramGrid1.RowCount do
    ProgramGrid1.Rows[i].Clear;          // this will delete all data
  AddDaysToGrid;
  AddHoursToGrid;
  FillGridWithProgram;
end;

Procedure TForm1.AddDaysToGrid;
Var
  i : Integer;
begin
  for i := 1 to 7 do
    ProgramGrid1.Cells[i, 0] := LongDayNames[i];
end;

Procedure TForm1.AddHoursToGrid;
var
  dif,
  i, m, c : Integer;
  t    : TDateTime;
begin
  dif := 0;
  ProgramGrid1.ColWidths[0] := 30;   // first col to show time
  if N1Hour1.Checked then
  begin
    dif := 60;
    ProgramGrid1.RowCount := 25;
    MinuteButton1.Caption := '1 Hour';
  end
  else
    if N30Minutes1.Checked then
    begin
      dif := 30;
      ProgramGrid1.RowCount := 49;
      MinuteButton1.Caption := '30 Minutes';
    end
    else
      if N15Minutes1.Checked then
      begin
        dif := 15;
        ProgramGrid1.RowCount := 97;
        MinuteButton1.Caption := '15 Minutes';
      end;

  t := 0;
  For i := 1 to ProgramGrid1.RowCount do
  begin
    c := StrToInt(FormatDateTime('nn', t));
    ProgramGrid1.Cells[0, i] := FormatDateTime('hh:mm', t);
    t := t + dif * (1 / 1440);
{    Case c of
      0  : ProgramGrid1.row ColorRow[i] := $0000FF80;
      15 : ProgramGrid1.ColorRow[i] := $0080FF80;
      30 : ProgramGrid1.ColorRow[i] := clYellow;
      45 : ProgramGrid1.ColorRow[i] := $0080FFFF;
    end;                                         }
  end;
end;

Procedure TForm1.GetGridColRow(Var col, row: Integer; Str : String);
var
  i : Integer;
begin
  col := StrToInt(ExtractDelimited(1, str, [CSep])) + 1;
  i := 1;
  While i <= ProgramGrid1.RowCount-1 do
    if ExtractDelimited(2, Str, [CSep, CSep1]) = ProgramGrid1.Cells[0, i] then
    begin
      Row := i;
      i := ProgramGrid1.RowCount;
    end
    else
      Inc(i);  
end;

procedure TForm1.FillGridWithProgram;
var
  i, col, row : Integer;
begin
  Try
    ProgramsList.LoadFromFile(RadioSettings.ServerDataDir + C_WeekProgramFile);
    for i := 0 to ProgramsList.Count - 1 do
    begin
      GetGridColRow(col, row, ProgramsList[i]);
      ProgramGrid1.Cells[Col, Row] := ExtractDelimited(3, ProgramsList[i], [CSep, CSep1]);
//      ProgramGrid1.HintCell[Col, Row] := ProgramGrid1.Cells[Col, Row];
    end;
  Except
    ShowMessage(C_ErrorLoadingWeekProgram);
  end;
end;

procedure TForm1.MinutesPopUpChange1(Sender: TObject);
begin
  // check if there are 30s or 15s with programs
  TMenuItem(Sender).Checked := True;
  AddHoursToGrid;
  InitializeWeekProgram;
end;

begin
 {Tell Delphi to hide it's hidden application window for now to avoid}
 {a "flash" on the taskbar if we halt due to another instance}
  ShowWindow(Application.Handle, SW_HIDE);
end.

