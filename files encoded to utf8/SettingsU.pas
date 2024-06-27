unit SettingsU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, ComCtrls, StdCtrls, Spin, ExtCtrls, Hintctrl,
  Mask, Buttons, MyXaudioPlayer1, rDragController;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    DataDirButton1: TSpeedButton;
    AudioFilesDirButton1: TSpeedButton;
    Label5: TLabel;
    AddButton1: TSpeedButton;
    DeleteButton1: TSpeedButton;
    UpdateButton1: TSpeedButton;
    BrowseButton1: TSpeedButton;
    TrafficDirButton1: TSpeedButton;
    PlayListsDirButton1: TSpeedButton;
    btnPrograms: TSpeedButton;
    LogLines: TMaskEdit;
    SearchDirEdit1: TEdit;
    AutoPlayCheck1: TCheckBox;
    TabSheet4: TTabSheet;
    AddButton2: TSpeedButton;
    Label9: TLabel;
    Label10: TLabel;
    UpdateButton2: TSpeedButton;
    BrowseButton2: TSpeedButton;
    DeleteButton2: TSpeedButton;
    Panel1: TJvPanel;
    CategoriesList1: TListBox;
    HeaderControl1: THeaderControl;
    CategoryEdit1: TEdit;
    CategoryDirEdit1: TEdit;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    CheckBeforeSpin: TSpinEdit;
    LoadBeforeSpin: TSpinEdit;
    TabSheet3: TTabSheet;
    Label6: TLabel;
    Label11: TLabel;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    AudioTime: TMaskEdit;
    JinglesMix: TMaskEdit;
    SongsMix: TMaskEdit;
    DefFadeOut: TMaskEdit;
    AudioTab: TTabSheet;
    Label7: TLabel;
    PlayButton1: TSpeedButton;
    CueButton1: TSpeedButton;
    TreeView1: TTreeView;
    PlayPanel1: TJvPanel;
    CuePanel1: TJvPanel;
    ImageList1: TImageList;
    CancelBtn: TBitBtn;
    OKbtn: TBitBtn;
    TabSheet5: TTabSheet;
    cbxAliases: TComboBox;
    Label18: TLabel;
    TabSheet6: TTabSheet;
    Panel2: TJvPanel;
    ReplaceButton: TSpeedButton;
    Header1: THeaderControl;
    ListBox1: TListBox;
    NameEdit1: TEdit;
    GroupBox2: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    RadioFrom1: TRadioButton;
    RadioFrom2: TRadioButton;
    RadioFrom3: TRadioButton;
    DaysEdit1: TMaskEdit;
    YearsEdit1: TMaskEdit;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    RadioTo1: TRadioButton;
    RadioTo2: TRadioButton;
    RadioTo3: TRadioButton;
    DaysEdit2: TMaskEdit;
    YearsEdit2: TMaskEdit;
    btnNetDir: TSpeedButton;
    CheckBox1: TCheckBox;
    DataDir1: TEdit;
    TrafficDir1: TEdit;
    ProgramsDirLabel: TEdit;
    PlayListsDirLabel1: TEdit;
    AudioFilesDir1: TEdit;
    NetDirLabel: TEdit;
    SaveBtn: TBitBtn;
    StartupRadioGroup: TRadioGroup;
    SearchDirsList: TListBox;
    rDragController1: TrDragController;
    procedure FormActivate(Sender: TObject);
    procedure CheckBeforeSpinChange(Sender: TObject);
    procedure LoadBeforeSpinChange(Sender: TObject);
    procedure SongsMixChange(Sender: TObject);
    procedure PlayButton1Click(Sender: TObject);
    procedure CueButton1Click(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure DataDirButton1Click(Sender: TObject);
    procedure TrafficDirButton1Click(Sender: TObject);
    procedure btnProgramsClick(Sender: TObject);
    procedure PlayListsDirButton1Click(Sender: TObject);
    procedure AudioFilesDirButton1Click(Sender: TObject);
    procedure OKbtnClick(Sender: TObject);
    procedure BrowseButton1Click(Sender: TObject);
    procedure AddButton1Click(Sender: TObject);
    procedure UpdateButton1Click(Sender: TObject);
    procedure DeleteButton1Click(Sender: TObject);
    procedure LogLinesChange(Sender: TObject);
    procedure SearchDirsListClick(Sender: TObject);
    procedure CategoriesList1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure HeaderControl1SectionResize(HeaderControl: THeaderControl;
      Section: THeaderSection);
    procedure AddButton2Click(Sender: TObject);
    procedure UpdateButton2Click(Sender: TObject);
    procedure DeleteButton2Click(Sender: TObject);
    procedure CategoriesList1Click(Sender: TObject);
    procedure BrowseButton2Click(Sender: TObject);
    procedure AutoPlayCheck1Click(Sender: TObject);
    procedure JinglesMixChange(Sender: TObject);
    procedure DefFadeOutChange(Sender: TObject);
    procedure AudioTimeChange(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure cbxAliasesChange(Sender: TObject);
    procedure Audio1OutputDeviceInfo(Sender: TObject; ModuleID, Index,
      Flags: Byte; const Name, Description: String);
    procedure Audio1OutputModuleInfo(Sender: TObject; ID, NbDevices: Byte;
      const Name, Description: String);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure Header1SectionResize(HeaderControl: THeaderControl;
      Section: THeaderSection);
    procedure ReplaceButtonClick(Sender: TObject);
    procedure btnNetDirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure StartupRadioGroupClick(Sender: TObject);
  private
    { Private declarations }
    procedure LoadDataFiles;
    procedure SaveDataFiles;
    procedure ClearEdits2;
    Procedure ShowListBoxValues;
    procedure UpdateSettings;
    procedure AutoConfigure;
    Procedure GetSettings;
  public
    { Public declarations }
    Audio1 : TMyXAudioPlayer;
  end;

Type
  PXaudioDevices = ^TXAudioDevices;
  TXAudioDevices = Record
    Name        : String;
    Description : String;
  end;

var
  nNode : Integer;
  Form1: TForm1;

implementation

{$R *.DFM}

Uses
  SettingsR, MyLibrary, MyLibrary1, MyTypes, JvStrUtils, JvFileUtil, DBTables, ResStringsU;

procedure GetThreeItemsFromString(s:String; var Name1:String; Var DateFrom,DateTo:TDateTime);
var
  s1 : String;
begin
  { first section }
  s1 := ExtractDelimited(1, s, [CSep]);
  {Second Section }
  s1 := ExtractDelimited(2, s, [CSep]);

  if Pos(CToday, s1) <> 0 then
    DateFrom := SysUtils.Now
  else
  if Pos('-',s1) <> 0 then
    DateFrom := SysUtils.Now + StrToInt(s1)
  else
    DateFrom := EncodeDate(StrToInt(s1), 1, 1);
  { third section }
  s1 := ExtractDelimited(3, s, [CSep]);

  if Pos(CToday, s1) <> 0 then
    DateTo := SysUtils.Now
  else
  if Pos('-',s1) <> 0 then
    DateTo := SysUtils.Now + StrToInt(s1)
  else
    DateTo := EncodeDate(StrToInt(s1), 12, 31);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Session.GetAliasNames(cbxAliases.Items);
  if TreeView1.Items.Count = 0 then
  Try
    Audio1.ListModules;
  except
    ShowMessage(C_ErrorEnumSoundCards);
  end;

  LoadSettings;

  UpdateSettings;
  PlayButton1.Enabled := False;
  CueButton1.Enabled  := False;
end;


procedure TForm1.UpdateSettings;
begin
  with RadioSettings do
  begin
//    UseDroppedFiles1.Checked := UseDroppedFiles;
    CheckBeforeSpin.Value    := CheckSpotsBefore;
    LoadBeforeSpin.Value     := LoadSpotsBefore;
//    SelectCD.Checked         := CACV3000;
    SongsMix.Text            := Format('%5d',[DefaultSongMix]);
    JinglesMix.Text          := Format('%4d',[DefaultJingleMix]);
    DefFadeOut.Text          := Format('%4d',[DefaultFadeOut]);
    AudioTime.Text           := FormatDateTime('nn:ss', MyConvertLongIntToDateTime(DefaultJingleSep));
    PlayPanel1.Caption       := PlayDevice;
    CuePanel1.Caption        := CueDevice;
    LogLines.Text            := Format('%4d',[MaxLogLines]);
    DataDir1.Text            := ServerDataDir;
    TrafficDir1.Text         := TrafficDir;
    PlayListsDirLabel1.Text  := PlayListsDir;
    AudioFilesDir1.Text      := AudioFilesDir;
    AutoPlayCheck1.Checked   := CueAutoPlay;
    ProgramsDirLabel.Text    := ProgramsDir;
    cbxAliases.ItemIndex     := cbxAliases.Items.IndexOf(DBAlias);
    NetDirLabel.Text         := NetDir;
    StartupRadioGroup.ItemIndex := ord(StartupState);
  end;
  LoadDataFiles;
end;

procedure TForm1.LoadDataFiles;
var
  fn : TFileName;
begin
  fn := NormalDir(RadioSettings.LocalDataDir) + C_SearchDirsFile;
  if FileExists(fn) then
    SearchDirsList.Items.LoadFromFile(fn);
  fn := NormalDir(RadioSettings.ServerDataDir) + C_JingleCategoriesFile;
  if FileExists(fn) then
    CategoriesList1.Items.LoadFromFile(fn);
  fn := NormalDir(RadioSettings.ServerDataDir) + CPeriodsFile;
  if FileExists(fn) then
    ListBox1.Items.LoadFromFile(fn);
end;

procedure TForm1.SaveDataFiles;
Var
  fn : String;
begin
  fn := NormalDir(RadioSettings.LocalDataDir) + C_SearchDirsFile;
  try
    SearchDirsList.Items.SaveToFile(fn);
  except
    ShowMessage(C_ProblemSavingFile + fn);
  end;
  fn := NormalDir(RadioSettings.ServerDataDir) + C_JingleCategoriesFile;
  try
    CategoriesList1.Items.SaveToFile(fn);
  except
    ShowMessage(C_ProblemSavingFile + fn);
  end;
  fn := NormalDir(RadioSettings.ServerDataDir) + CPeriodsFile;
  try
    ListBox1.Items.SaveToFile(fn);
  except
    ShowMessage(C_ProblemSavingFile + fn);
  end;
end;

procedure TForm1.CheckBeforeSpinChange(Sender: TObject);
begin
  RadioSettings.CheckSpotsBefore := CheckBeforeSpin.Value;
end;

procedure TForm1.LoadBeforeSpinChange(Sender: TObject);
begin
  RadioSettings.LoadSpotsBefore := LoadBeforeSpin.Value;
end;

procedure TForm1.SongsMixChange(Sender: TObject);
begin
  RadioSettings.DefaultSongMix := StrToInt(SongsMix.EditText);
end;

procedure TForm1.PlayButton1Click(Sender: TObject);
begin
  RadioSettings.PlayDevice := PXaudioDevices(TreeView1.Selected.data)^.Name;
  PlayPanel1.Caption       := PXaudioDevices(TreeView1.Selected.data)^.Description;
end;

procedure TForm1.CueButton1Click(Sender: TObject);
begin
  RadioSettings.CueDevice := PXaudioDevices(TreeView1.Selected.data)^.Name;
  CuePanel1.Caption := PXaudioDevices(TreeView1.Selected.data)^.Description;
end;

procedure TForm1.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  PlayButton1.Enabled := TreeView1.Selected.Parent.Index <> -1;
  CueButton1.Enabled := TreeView1.Selected.Parent.Index <> -1;
end;

procedure TForm1.DataDirButton1Click(Sender: TObject);
begin
  if BrowseDir(RadioSettings.ServerDataDir, C_DataServerDir) then
  Begin
    DataDir1.Text := RadioSettings.ServerDataDir;
    LoadDataFiles;
  end;
end;

procedure TForm1.TrafficDirButton1Click(Sender: TObject);
begin
  if BrowseDir(RadioSettings.TrafficDir, C_TrafficDir) then
    TrafficDir1.Text := RadioSettings.TrafficDir;
end;

procedure TForm1.btnProgramsClick(Sender: TObject);
begin
  if BrowseDir(RadioSettings.ProgramsDir, C_ProgramsDir) then
    ProgramsDirLabel.Text := RadioSettings.ProgramsDir;
end;

procedure TForm1.PlayListsDirButton1Click(Sender: TObject);
begin
  if BrowseDir(RadioSettings.PlayListsDir, C_PlayListsDir) then
    PlayListsDirLabel1.Text := RadioSettings.PlayListsDir;
end;

procedure TForm1.AudioFilesDirButton1Click(Sender: TObject);
begin
  if BrowseDir(RadioSettings.AudioFilesDir, C_AudioDir) then
    AudioFilesDir1.Text := RadioSettings.AudioFilesDir;
end;

procedure TForm1.OKbtnClick(Sender: TObject);
begin
  GetSettings;
  SaveDataFiles;
  SaveSettings;
  Application.Terminate;
end;

procedure TForm1.BrowseButton1Click(Sender: TObject);
var
  dir : String;
begin
  dir := SearchDirEdit1.Text;
  if BrowseDir(dir, C_AudioDir) then
    SearchDirEdit1.Text := dir;
end;

procedure TForm1.AddButton1Click(Sender: TObject);
begin
  if trim(SearchDirEdit1.Text) <> '' then
  begin
    SearchDirsList.Items.Add(SearchDirEdit1.Text);
    SearchDirEdit1.Text := '';
  end;
end;

procedure TForm1.UpdateButton1Click(Sender: TObject);
begin
  if SearchDirsList.ItemIndex > -1 then
  begin
    SearchDirsList.Items[SearchDirsList.ItemIndex] := SearchDirEdit1.Text;
    SearchDirEdit1.Text := '';
  end;
end;

procedure TForm1.DeleteButton1Click(Sender: TObject);
begin
  if SearchDirsList.ItemIndex > -1 then
    SearchDirsList.Items.Delete(SearchDirsList.ItemIndex);
end;

procedure TForm1.LogLinesChange(Sender: TObject);
begin
  RadioSettings.MaxLogLines := StrToInt(LogLines.EditText);
end;

procedure TForm1.SearchDirsListClick(Sender: TObject);
begin
  SearchDirEdit1.Text := SearchDirsList.Items[SearchDirsList.ItemIndex];
end;

procedure TForm1.CategoriesList1DrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  R: TRect;
  C: array[0..255] of Char;
  s: string;
begin
  R := Rect;
  TListBox(Control).Canvas.FillRect(R);

  R.Right := R.Left + HeaderControl1.Sections[0].Width;
  s := TListBox(Control).Items[Index];
  s := ExtractDelimited(1, s, [CSep]);

  ExtTextOut(TListBox(Control).Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
            ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);

  R.Left := R.Left + HeaderControl1.Sections[0].Width;
  R.Right:= R.Left + HeaderControl1.Sections[1].Width-2;

  s := TListBox(Control).Items[Index];
  s := ExtractDelimited(2, s, [CSep]);

  ExtTextOut(TListBox(Control).Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
             ETO_OPAQUE, @R, StrPCopy(C, S), System.Length(s), nil);

end;

procedure TForm1.HeaderControl1SectionResize(HeaderControl: THeaderControl;
  Section: THeaderSection);
begin
  CategoriesList1.Invalidate;
end;


procedure TForm1.ClearEdits2;
Begin
  CategoryEdit1.Text := '';
  CategoryDirEdit1.Text := '';
end;

procedure TForm1.AddButton2Click(Sender: TObject);
begin
  CategoriesList1.Items.Add(CategoryEdit1.Text + CSep + CategoryDirEdit1.Text);
  ClearEdits2;
end;

procedure TForm1.UpdateButton2Click(Sender: TObject);
begin
  if CategoriesList1.ItemIndex >= 0 then
  Begin
    CategoriesList1.Items[CategoriesList1.ItemIndex] := CategoryEdit1.Text + CSep + CategoryDirEdit1.Text;
    ClearEdits2;
  end;
end;

procedure TForm1.DeleteButton2Click(Sender: TObject);
begin
  if CategoriesList1.ItemIndex >= 0 then
    CategoriesList1.Items.Delete(CategoriesList1.ItemIndex);
end;

procedure TForm1.CategoriesList1Click(Sender: TObject);
var
  s : String;
begin
  s := CategoriesList1.Items[CategoriesList1.ItemIndex];
  CategoryEdit1.Text    := ExtractDelimited(1, s, [CSep]);
  CategoryDirEdit1.Text := ExtractDelimited(2, s, [CSep]);
end;

procedure TForm1.BrowseButton2Click(Sender: TObject);
var
 dir : String;
begin
  dir := CategoryDirEdit1.Text;
  if BrowseDir(dir, C_CategoryDir) then
    CategoryDirEdit1.Text := dir;
end;

procedure TForm1.AutoPlayCheck1Click(Sender: TObject);
begin
  RadioSettings.CueAutoPlay := AutoPlayCheck1.Checked;
end;

procedure TForm1.JinglesMixChange(Sender: TObject);
begin
  RadioSettings.DefaultJingleMix := StrToInt(JinglesMix.EditText);
end;

procedure TForm1.DefFadeOutChange(Sender: TObject);
begin
  RadioSettings.DefaultFadeOut := StrToInt(DefFadeOut.EditText);
end;

procedure TForm1.AudioTimeChange(Sender: TObject);
begin
  Try
    RadioSettings.DefaultJingleSep := MyConvertDateTimeToInt(StrToDateTime('1/1/1 00:' + AudioTime.EditText));
  except
    AudioTime.Text := '01:30';
  end;
end;

procedure TForm1.CancelBtnClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.cbxAliasesChange(Sender: TObject);
begin
  RadioSettings.DBAlias := cbxAliases.items[cbxAliases.ItemIndex];
  if CheckBox1.Checked then
  Begin
    AutoConfigure;
    UpdateSettings;
  end;  
end;

procedure TForm1.Audio1OutputDeviceInfo(Sender: TObject; ModuleID, Index,
  Flags: Byte; const Name, Description: String);
Var
    XDevices: PXAudioDevices;
begin
  New(XDevices);
  XDevices^.Name := String(Name);
  xDevices^.Description := String(Description);
  TreeView1.Items.AddChildObject(TreeView1.Items[nNode],String(Description),XDevices);
end;

procedure TForm1.Audio1OutputModuleInfo(Sender: TObject; ID,
  NbDevices: Byte; const Name, Description: String);
begin
  nNode := TreeView1.Items.Add(nil,String(Name) + ' [' + String(Description) + ']').AbsoluteIndex;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  ShowListBoxValues;
end;

procedure TForm1.ShowListBoxValues;
var
  s,os : String;
Begin
  os := ListBox1.Items[ListBox1.ItemIndex];
  { First section }
  s := ExtractDelimited(1, os, [CSep]);
  NameEdit1.Text := s;

  {Second Section }
  s := ExtractDelimited(2, os, [CSep]);
  if Pos(CToday, s) <> 0 then
    RadioFrom1.Checked := True
  else
  if Pos('-',s) <> 0 then
  begin
    RadioFrom2.Checked := True;
    Delete(s,1,1); // σβήσε το -
    DaysEdit1.Text := s;
  end
  else
  Begin
    RadioFrom3.Checked := True;
    YearsEdit1.Text := s;
  end;
  { third section }
  s := ExtractDelimited(3, os, [CSep]);

  if Pos(CToday, s) <> 0 then
    RadioTo1.Checked := True
  else
  if Pos('-',s) <> 0 then
  Begin
    RadioTo2.Checked := True;
    DaysEdit2.Text := s;
  end
  else
  Begin
    RadioTo3.Checked := True;
    YearsEdit2.Text := s;
  end;
end;

procedure TForm1.ListBox1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  R: TRect;
  C : array[0..255] of Char;
  S : string;
  s1 : String;
begin
  R := Rect;
  TListBox(Control).Canvas.FillRect(R);
  s1 := TListBox(Control).Items[Index];
  { First Section }
  s := ExtractDelimited(1, s1, [CSep]);

  R.Right := R.Left + Header1.Sections[0].Width;
  ExtTextOut(TListBox(Control).Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
            ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);
  { Second section }
  s := ExtractDelimited(2, s1, [CSep]);
  if Pos(CToday, s) <> 0 then
    s := CToday
  else
  if Pos('-', s) <> 0 then
    s := s + C_Days1
  else
    s := C_Year1 + s;
  R.Left := R.Left + Header1.Sections[0].Width;
  R.Right:= R.Left + Header1.Sections[1].Width-2;
  ExtTextOut(TListBox(Control).Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
            ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);
  { Third Section }
  s := ExtractDelimited(3, s1, [CSep]);
  if Pos(CToday, s) <> 0 then
    s := CToday
  else
  if Pos('-', s) <> 0 then
    s := s + C_Days1
  else
    s := C_Year1 + s;
  R.Left := R.Left + Header1.Sections[1].Width;
  R.Right:= R.Left + Header1.Sections[2].Width;
  ExtTextOut(TListBox(Control).Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
            ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);
end;

procedure TForm1.Header1SectionResize(HeaderControl: THeaderControl;
  Section: THeaderSection);
begin
  ListBox1.Invalidate;
end;

procedure TForm1.ReplaceButtonClick(Sender: TObject);
var
  s : String;
begin
  if ListBox1.ItemIndex < 0 then
    exit;
  s := NameEdit1.Text + CSep;
  If RadioFrom1.Checked then
    s := s + CToday
  else
  if RadioFrom2.Checked then
    s := s + '-' + DaysEdit1.Text
  else
  if RadioFrom3.Checked then
    s := s + YearsEdit1.Text;
  s := s + CSep;
  If RadioTo1.Checked then
    s := s + CToday
  else
  if RadioTo2.Checked then
    s := s + '-' + DaysEdit2.Text
  else
  if RadioTo3.Checked then
    s := s + YearsEdit2.Text;
  ListBox1.Items[ListBox1.ItemIndex] := s;
end;

procedure TForm1.btnNetDirClick(Sender: TObject);
begin
  if BrowseDir(RadioSettings.NetDir, C_ServerNetDir) then
     NetDirLabel.Text := RadioSettings.NetDir;
end;

Procedure TForm1.AutoConfigure;
var
  ServerDir : String;
  ClientDir : String;
  MyStringList : TStringList;
begin
  ClientDir := ExtractFilePath(Application.ExeName);
  if ClientDir[Length(ClientDir)] = '\' then
    Delete(ClientDir, Length(ClientDir), 1);
  ClientDir := Copy(ClientDir, 1, LastDelimiter('\', ClientDir));

  MyStringList := TStringList.Create;
  try
    Session.GetAliasParams(RadioSettings.DBAlias, MyStringList);
    { fill a list box with driver names for the user to select from }
    ServerDir := MyStringList.Values['PATH'];
    if ServerDir[Length(ServerDir)] = '\' then
      Delete(ServerDir, Length(ServerDir), 1);
    ServerDir := Copy(ServerDir, 1, LastDelimiter('\', ServerDir));

  finally
    MyStringList.Free;
  end;

//  cbxAliases.ItemIndex := cbxAliases.Items.IndexOf(RadioSettings.DBAlias);
  RadioSettings.NetDir := NormalDir(ServerDir + 'NetDir');
  NetDirLabel.Text  := RadioSettings.NetDir;

  RadioSettings.LocalDataDir := NormalDir( ClientDir + 'Data');
  RadioSettings.ServerDataDir := NormalDir( ServerDir + 'Data');
  RadioSettings.ServerBinDir := NormalDir(ServerDir + 'Bin');
//  RadioSettings.InstallDir := ClientDir;
  RadioSettings.PlayListsDir := NormalDir(ServerDir + 'PlayLists');
  RadioSettings.TrafficDir   := NormalDir(ServerDir + 'TrafficData');
  RadioSettings.ProgramsDir  := NormalDir(ServerDir + 'Programs');
  LoadDataFiles;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Audio1 := TMyXAudioPlayer.Create(self);
  Audio1.OnOutputDeviceInfo := Audio1OutputDeviceInfo;
  Audio1.OnOutputModuleInfo := Audio1OutputModuleInfo;
end;

procedure TForm1.GetSettings;
begin
  RadioSettings.ServerDataDir := DataDir1.Text;
  RadioSettings.TrafficDir := TrafficDir1.Text;
  RadioSettings.ProgramsDir := ProgramsDirLabel.Text;
  RadioSettings.PlayListsDir := PlayListsDirLabel1.Text;
  RadioSettings.AudioFilesDir := AudioFilesDir1.Text;
end;

procedure TForm1.SaveBtnClick(Sender: TObject);
begin
  GetSettings;
  SaveDataFiles;
  SaveSettings;
end;

procedure TForm1.StartupRadioGroupClick(Sender: TObject);
begin
  RadioSettings.StartupState := TStartupState(StartupRadioGroup.ItemIndex);
end;

end.
