unit SelectU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, StdCtrls, DBFEdit, Grids, DBGrids, Db, DBTables,
  Buttons, BPMEdit, CheckLst, DBCtrls, MyTypes,
  SettingsR, Spin, JvExStdCtrls, JvEdit, JvDBSearchEdit, JvExDBGrids,
  JvDBGrid, JvDBUltimGrid, JvPanel, JvExExtCtrls, JvComponent,
  JvExControls, JvDBLookup, JvBaseDlg, JvBrowseFolder;

Type
  TChoosenItem = (ciNone, ciHDFile, ciFilesPack, ciDatabaseSong, ciDatabaseFilter);
  TSelectTabs = (stHardDiscFiles, stSongPacks, stDatabase, stInsertFiles);
  TShowSelectTabs = Set of TSelectTabs;

type
  TSelectForm = class(TForm)
    Panel1: TJvPanel;
    MainTab: TPageControl;
    HardDiscTab: TTabSheet;
    ArtistsTab: TTabSheet;
    TitlesTab: TTabSheet;
    FiltersTab: TTabSheet;
    Panel2: TJvPanel;
    Panel5: TJvPanel;
    tblArtists1: TTable;
    dsArtists1: TDataSource;
    tblTitles1: TTable;
    dsTitles1: TDataSource;
    Panel6: TJvPanel;
    Panel7: TJvPanel;
    Panel8: TJvPanel;
    Panel11: TJvPanel;
    Panel3: TJvPanel;
    Panel4: TJvPanel;
    Panel10: TJvPanel;
    tblArtists2: TTable;
    dsArtists2: TDataSource;
    tblTitles2: TTable;
    dsTitles2: TDataSource;
    Panel13: TJvPanel;
    Panel25: TJvPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ExecuteButton1: TSpeedButton;
    DateCheck1: TCheckBox;
    QualityCheck1: TCheckBox;
    QualityFrom1: TComboBox;
    QualityTo1: TComboBox;
    BeatCheck1: TCheckBox;
    BeatFrom1: TBPMEdit;
    BeatTo1: TBPMEdit;
    SexCombo1: TComboBox;
    SexCheck1: TCheckBox;
    SubjectCheck1: TCheckBox;
    SubjectCombo1: TDBLookupComboBox;
    OpenerCheck1: TCheckBox;
    OpenerCombo1: TComboBox;
    PeriodFrom1: TComboBox;
    PeriodTo1: TComboBox;
    tblStyles: TTable;
    dsStyle: TDataSource;
    tblSubject: TTable;
    dsSubject: TDataSource;
    Query1: TQuery;
    dsQuery: TDataSource;
    Panel14: TJvPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Session1: TSession;
    btnEdit: TSpeedButton;
    btnCue: TSpeedButton;
    NewRecordsTab: TTabSheet;
    Panel15: TJvPanel;
    Panel16: TJvPanel;
    Panel17: TJvPanel;
    Panel18: TJvPanel;
    Panel19: TJvPanel;
    btnAddFiles: TSpeedButton;
    btnLoadList: TSpeedButton;
    btnSaveList: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Session2: TSession;
    btnCancel: TBitBtn;
    btnSelect: TBitBtn;
    SongsCountLabel: TLabel;
    FilesPacksTab: TTabSheet;
    Panel20: TJvPanel;
    Panel21: TJvPanel;
    ListView1: TListView;
    Panel22: TJvPanel;
    btnDirectory: TSpeedButton;
    Panel23: TJvPanel;
    Panel24: TJvPanel;
    Panel26: TJvPanel;
    ListView2: TListView;
    btnPacksDir: TSpeedButton;
    Panel27: TJvPanel;
    btnNewFilesPack: TSpeedButton;
    btnDeleteFilesPack: TSpeedButton;
    btnAddFilesToPack: TSpeedButton;
    btnRenameFilesPack: TSpeedButton;
    OpenDialog2: TOpenDialog;
    btnSaveFilesPack: TSpeedButton;
    Panel28: TJvPanel;
    btnInsertFile: TSpeedButton;
    SpinButton1: TSpinButton;
    SortedCheck1: TCheckBox;
    Label1: TLabel;
    Splitter1: TSplitter;
    Panel9: TJvPanel;
    Splitter2: TSplitter;
    Panel12: TJvPanel;
    TextListBox1: TListBox;
    FilesListBox2: TListBox;
    FilesListBox1: TListBox;
    JvDBSearchEdit1: TJvDBSearchEdit;
    JvDBSearchEdit2: TJvDBSearchEdit;
    JvDBUltimGrid1: TJvDBUltimGrid;
    JvDBUltimGrid2: TJvDBUltimGrid;
    JvDBUltimGrid3: TJvDBUltimGrid;
    JvDBUltimGrid4: TJvDBUltimGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    StylesLookup: TJvDBLookupCombo;
    JvFolderDialog1: TJvBrowseForFolderDialog;
    JvDBUltimGrid5: TJvDBUltimGrid;
    procedure DBTextClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ExecuteButton1Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCueClick(Sender: TObject);
    procedure btnAddFilesClick(Sender: TObject);
    procedure btnLoadListClick(Sender: TObject);
    procedure btnSaveListClick(Sender: TObject);
    procedure btnInsertFileClick(Sender: TObject);
    procedure FilesListBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelectClick(Sender: TObject);
    procedure btnDirectoryClick(Sender: TObject);
    procedure btnPacksDirClick(Sender: TObject);
    procedure ListView2Click(Sender: TObject);
    procedure MainTabChange(Sender: TObject);
    procedure TextListBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListView2Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btnAddFilesToPackClick(Sender: TObject);
    procedure btnSaveFilesPackClick(Sender: TObject);
    procedure btnDeleteFilesPackClick(Sender: TObject);
    procedure btnNewFilesPackClick(Sender: TObject);
    procedure btnRenameFilesPackClick(Sender: TObject);
    procedure FilesListBox1DblClick(Sender: TObject);
    procedure SortedCheck1Click(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure LMDFMDrop1FMDragDrop(Sender: TObject; fcount, x, y: Integer;
      FileList: TStrings);
  private
    { Private declarations }
    procedure LoadPeriods;
    Function MakeSearchSQLString : String;
    Function GetTabInfo : Boolean;
    procedure RefreshListView(TheListView : TListView; Var DirName : String; Extens : String);
    procedure AddFilesToPack(TheFiles : TStrings);
    procedure OnDirFileFound(Sender : TObject; Var SearchRec : TSearchRec);
  public
    { Public declarations }
    PeriodsList : TStringList;
    ServerDataDir : String;
    DBAlias   : String;
    Info      : TPlayItem;
    ShowSelectTabs : TShowSelectTabs;
    FilterString : String;
    FilterName   : String;
    ChoosenItem : TChoosenItem;
    FilesPackFileName : String;
    procedure InitializeForm;
  end;

var
  SelectForm: TSelectForm;

implementation

{$R *.DFM}

uses
  MyLibrary, MyLibrary1, GetDirFiles, JclStrings, JclFileUtils,
  DataFormU, FindFile, CueForm, ResStringsU, DataModule;

Var
  tmpDir1, tmpDir2 : String;

procedure TSelectForm.FormCreate(Sender: TObject);
Var
  tmpS : String;
  AppName : String;
begin
  PeriodsList := TStringList.Create;


  tmpS := ExtractFilePath(Application.ExeName);
  AppName := MyExtractFileName(Application.ExeName);
{  tmpDir1 := GetUniqueDirectoryName(tmpS, 'TMPDB01%d.TMP');
  tmpDir1 := tmpS + tmpDir1; }
  tmpDir1 := TmpS + AppName + '-DB01.tmp';
  try
    DelTree(tmpDir1);
    ForceDirectories(tmpDir1);
    Session1.NetFileDir := RadioSettings.NetDir;
    Session1.PrivateDir := tmpDir1;
    Session1.Active := True;
  Except
    ShowMessage(C_ErrorCanNotCreateTmpDir + tmpDir1);
  end;

  tmpS := ExtractFilePath(Application.ExeName);
{  tmpDir2 := GetUniqueDirectoryName(tmpS, 'TMPDB00%d.TMP');
  tmpDir2 := tmpS + tmpDir2; }
  tmpDir2 := TmpS + AppName + '-DB02.tmp';
  try
    DelTree(tmpDir2);
    ForceDirectories(tmpDir2);
    Session2.NetFileDir := RadioSettings.NetDir;
    Session2.PrivateDir := tmpDir2;
    Session2.Active := True;
  Except
    ShowMessage(C_ErrorCanNotCreateTmpDir + tmpDir2);
  end;

//  LoadSettings;

end;

procedure TSelectForm.FormDestroy(Sender: TObject);
begin

  PeriodsList.Free;

  tblArtists1.Close;
  tblTitles1.Close;
  tblTitles2.Close;
  tblArtists2.Close;
  tblStyles.Close;
  tblSubject.Close;
  Query1.Close;
  Session1.Active := False;
  Session2.Active := False;
  // delete tmp directories
  DelTree(tmpDir1);
  DelTree(tmpDir2);
end;

procedure TSelectForm.InitializeForm;
begin
  if not (stHardDiscFiles in ShowSelectTabs) then
    HardDiscTab.TabVisible := False;
  if not (stInsertFiles in ShowSelectTabs) then
    NewRecordsTab.TabVisible := False;
  if not (stSongPacks in ShowSelectTabs) then
    FilesPacksTab.TabVisible := False;
  Try
    DataModule1.FileFind1.Directories.LoadFromFile(RadioSettings.LocalDataDir + C_SearchDirsFile);
    DataForm1.Directories.AddStrings(DataModule1.FileFind1.Directories);
    DataForm1.AutoPlay  := RadioSettings.CueAutoPlay;
    DataForm1.AudioCard := RadioSettings.CueDevice;
    CueForm1.AudioCard := RadioSettings.CueDevice;
    CueForm1.AutoPlay := RadioSettings.CueAutoPlay;
    DataForm1.SetProperties;
    CueForm1.SetProperties;
  Except
    ShowMessage(C_NoSearchDirsDefined);
  end;
  Try
    RefreshListView(ListView1, RadioSettings.AudioFilesDir, C_FilesExt);
    RefreshListView(ListView2, RadioSettings.PlayListsDir, '*' + C_FilePacksExt);
  except
  end;
  ServerDataDir := RadioSettings.ServerDataDir;
  DBAlias := RadioSettings.DBAlias;
  LoadPeriods;
  Query1.DatabaseName := DBAlias;
  tblArtists1.DatabaseName := DBAlias;
  tblTitles1.DatabaseName  := DBAlias;
  tblTitles2.DatabaseName  := DBAlias;
  tblArtists2.DatabaseName := DBAlias;
  tblStyles.DatabaseName   := DBAlias;
  tblSubject.DatabaseName  := DBAlias;
  tblArtists1.Open;
  tblTitles1.Open;
  tblTitles2.Open;
  tblArtists2.Open;
  tblStyles.Open;
  tblSubject.Open;
  DataForm1.InitializeForm;
end;

procedure TSelectForm.DBTextClick(Sender: TObject);
begin
  if Sender = DBText1 then
    CheckBox1.Checked := Not CheckBox1.Checked
  else
  if Sender = DBText2 then
    CheckBox2.Checked := Not CheckBox2.Checked
  else
  if Sender = DBText3 then
    CheckBox3.Checked := Not CheckBox3.Checked
  else
  if Sender = DBText4 then
    CheckBox4.Checked := Not CheckBox4.Checked
  else
  if Sender = DBText5 then
    CheckBox5.Checked := Not CheckBox5.Checked
  else
  if Sender = DBText6 then
    CheckBox6.Checked := Not CheckBox6.Checked
  else
  if Sender = DBText7 then
    CheckBox7.Checked := Not CheckBox7.Checked
  else
  if Sender = DBText8 then
    CheckBox8.Checked := Not CheckBox8.Checked
end;

procedure TSelectForm.LoadPeriods;
var
  i : Integer;
  s : String;
begin
  Try
    PeriodsList.LoadFromFile(ServerDataDir + CPeriodsFile);
    for i := 0 to PeriodsList.Count - 1 do
    begin
      s := ExtractDelimited(1, PeriodsList[i], [CSep]);
      PeriodFrom1.Items.Add(s);
      PeriodTo1.Items.Add(s);
    end;
  Except
    ShowMessage(C_CanNotLoadPeriodsFile);
  End;
end;

procedure GetThreeItemsFromString(s:String; var Name1:String; Var DateFrom,DateTo:TDateTime);
var
  s1 : String;
begin
  { first section }
  s1 := ExtractDelimited(1, s, [CSep]);
  Name1 := s1;
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

function TSelectForm.MakeSearchSQLString : String;
var
  s, tmpS, tmpS1: String;
  IsOneSelected : Boolean;
  tmpFrom,tmpTo : TDateTime;

begin
  FilterString := IntToStr(tblStyles.FieldByName('StyleCode').AsInteger);
  s := 'Select A.*, B.* from Artists A, Songs B where (A.ArtistCode = B.ArtistCode) ';
  s := s + 'and (B.Style = "' + FilterString + '") ';

  FilterString := FilterString + CSep;
  FilterName   := tblStyles.FieldByName('Name').AsString;

  IsOneSelected := CheckBox1.Checked or
                   CheckBox2.Checked or
                   CheckBox3.Checked or
                   CheckBox4.Checked or
                   CheckBox5.Checked or
                   CheckBox6.Checked or
                   CheckBox7.Checked or
                   CheckBox8.Checked;
  tmpS1 := '000000000';
  if IsOneSelected then
  begin
    tmpS1[1] := '1';
    s := s + 'and (';
    if CheckBox1.Checked then
    begin
      tmpS1[2] := '1';
      s := s + '(B.Category1 = True) or ';
      FilterName := FilterName + ' , ' + tblStyles.FieldByName('Category1').AsString;
    end;
    if CheckBox2.Checked then
    begin
      tmpS1[3] := '1';
      s := s + '(B.Category2 = True) or ';
      FilterName := FilterName + ' , ' + tblStyles.FieldByName('Category2').AsString;
    end;
    if CheckBox3.Checked then
    begin
      tmpS1[4] := '1';
      s := s + '(B.Category3 = True) or ';
      FilterName := FilterName + ' , ' + tblStyles.FieldByName('Category3').AsString;
    end;
    if CheckBox4.Checked then
    begin
      tmpS1[5] := '1';
      s := s + '(B.Category4 = True) or ';
      FilterName := FilterName + ' , ' + tblStyles.FieldByName('Category4').AsString;
    end;
    if CheckBox5.Checked then
    begin
      tmpS1[6] := '1';
      s := s + '(B.Category5 = True) or ';
      FilterName := FilterName + ' , ' + tblStyles.FieldByName('Category5').AsString;
    end;
    if CheckBox6.Checked then
    begin
      tmpS1[7] := '1';
      s := s + '(B.Category6 = True) or ';
      FilterName := FilterName + ' , ' + tblStyles.FieldByName('Category6').AsString;
    end;
    if CheckBox7.Checked then
    begin
      tmpS1[8] := '1';
      s := s + '(B.Category7 = True) or ';
      FilterName := FilterName + ' , ' + tblStyles.FieldByName('Category7').AsString;
    end;
    if CheckBox8.Checked then
    begin
      tmpS1[9] := '1';
      s := s + '(B.Category8 = True) or ';
      FilterName := FilterName + ' , ' + tblStyles.FieldByName('Category8').AsString;
    end;
    Delete(s, Length(s)-3, 3);    // Σβήσε το τελευταίο  or
    s := s + ') ';
  end;

  FilterString := FilterString + tmpS1 + CSep;

  tmpS1 := '000';
  if DateCheck1.Checked then
  Begin
    tmpS1[1] := '1';
    tmpS1[2] := Char(PeriodFrom1.ItemIndex + 48); // 48 = '0'
    tmpS1[3] := Char(PeriodTo1.ItemIndex + 48);
    GetThreeItemsFromString(PeriodsList[PeriodFrom1.ItemIndex], tmps, tmpFrom, tmpTo);
    s := s + 'and (B.SYear between "' + FormatDateTime('mm/dd/yyyy',tmpFrom) +
             '" and "';
    GetThreeItemsFromString(PeriodsList[PeriodTo1.ItemIndex], tmps, tmpFrom, tmpTo);
    s := s + FormatDateTime('mm/dd/yyyy', tmpTo) + '") ';
    FilterName := FilterName + C_FilterFrom + PeriodFrom1.Items[PeriodFrom1.ItemIndex] +
                               C_FilterTo + PeriodTo1.Items[PeriodTo1.ItemIndex];
  end;

  FilterString := FilterString + tmpS1 + CSep;

  tmpS1 := '000';

  if QualityCheck1.Checked then
  begin
    tmpS1[1] := '1';
    tmpS1[2] := Char(QualityFrom1.ItemIndex + 48);
    tmpS1[3] := Char(QualityTo1.ItemIndex + 48);
    s := s + 'and (B.Quality between "' + IntToStr(QualityFrom1.ItemIndex) +
             '" and "' + IntToStr(QualityTo1.ItemIndex) + '") ';
    FilterName := FilterName + ' , Βαθμός Από :' + IntToStr(QualityFrom1.ItemIndex) +
                               ' Έως :' + IntToStr(QualityTo1.ItemIndex)
  end;

  FilterString := FilterString + tmpS1 + CSep;

  if BeatCheck1.Checked then
    s := s + 'and (B.BPM between "' + BeatFrom1.Text +
             '" and "' + BeatTo1.Text + '") ';

  tmpS1 := '00';
  if SexCheck1.Checked then
  begin
    tmpS1[1] := '1';
    tmpS1[2] := Char(SexCombo1.ItemIndex + 48);
    s := s + 'and (B.Sex = "' + IntToStr(SexCombo1.ItemIndex) + '") ';
    FilterName := FilterName + ' , Φύλο :' + SexCombo1.Items[SexCombo1.ItemIndex];
  end;

  FilterString := FilterString + tmpS1 + CSep;

  tmpS1 := '00';
  if SubjectCheck1.Checked then
  begin
    tmpS1 := '1' + IntToStr(tblSubject.FieldByName('SubjectCode').AsInteger);
    s := s + 'and (B.Subject = "' + IntToStr(tblSubject.FieldByName('SubjectCode').AsInteger) +
             '") ';
    FilterName := FilterName + C_FilterSubject + tblSubject.FieldByName('SubjectName').AsString;
  end;

  FilterString := FilterString + tmpS1 + CSep;

  tmpS1 := '00';
  if OpenerCheck1.Checked then
  begin
    tmpS1 := '11';
    s := s + 'and (B.Opener = "';
    if OpenerCombo1.ItemIndex = 0 then
    Begin
      s := s + 'True';
      FilterName := FilterName + C_FilterOpener;
    end
    else
    begin
      s := s + 'False';
    end;
    s := s + '") ';
  end;

  FilterString := FilterString + tmpS1; //+ CSep;

  s := s + 'Order by A.Name';
//  ShowMessage(FilterName);
  Result := s;
end;


procedure TSelectForm.ExecuteButton1Click(Sender: TObject);
begin
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(MakeSearchSQLString);
  Query1.Active := True;
  SongsCountLabel.Caption := C_Songs + IntToStr(Query1.RecordCount);
end;

Function TSelectForm.GetTabInfo : Boolean;
begin
  Result := True;
  if MainTab.ActivePage = ArtistsTab then
  begin
    ChoosenItem := ciDatabaseSong;
    Info.PlayType := ptSong;
    Info.Artist   := tblArtists1.FieldByName('Name').AsString;
    Info.Song     := tblTitles1.FieldByName('Title').AsString;
    Info.FileName := tblTitles1.FieldByName('FileName').AsString;
    Info.PlayInfo.Length := tblTitles1.FieldByName('SLength').AsInteger;
    Info.PlayInfo.PlayStart := tblTitles1.FieldByName('Start').AsInteger;
    Info.PlayInfo.FadeIn    := tblTitles1.FieldByName('FadeIn').AsInteger;
    Info.PlayInfo.Intro     := tblTitles1.FieldByName('Intro').AsInteger;
    Info.PlayInfo.FadeOut   := tblTitles1.FieldByName('FadeOut').AsInteger;
    Info.PlayInfo.MixPos    := tblTitles1.FieldByName('MixPosition').AsInteger;
    Info.PlayInfo.Volume    := tblTitles1.FieldByName('Volume').AsInteger;
    Info.TitleCode  := tblTitles1.FieldByName('TitleCode').AsInteger;
    Info.ArtistCode := tblArtists1.FieldByName('ArtistCode').AsInteger;
    Info.Beat       := tblTitles1.FieldByName('BPM').AsInteger;
    Info.ArtistLastPlayed := tblArtists1.FieldByName('LastPlayed').AsDateTime;
    Info.TitleLastPlayed  := tblTitles1.FieldByName('PlayedLast').AsDateTime;
  end
  else
  if MainTab.ActivePage = TitlesTab then
  begin
    ChoosenItem := ciDatabaseSong;
    Info.PlayType := ptSong;
    Info.Artist   := tblArtists2.FieldByName('Name').AsString;
    Info.Song     := tblTitles2.FieldByName('Title').AsString;
    Info.FileName := tblTitles2.FieldByName('FileName').AsString;
    Info.PlayInfo.Length := tblTitles2.FieldByName('SLength').AsInteger;
    Info.PlayInfo.PlayStart := tblTitles2.FieldByName('Start').AsInteger;
    Info.PlayInfo.FadeIn    := tblTitles2.FieldByName('FadeIn').AsInteger;
    Info.PlayInfo.Intro     := tblTitles2.FieldByName('Intro').AsInteger;
    Info.PlayInfo.FadeOut   := tblTitles2.FieldByName('FadeOut').AsInteger;
    Info.PlayInfo.MixPos    := tblTitles2.FieldByName('MixPosition').AsInteger;
    Info.PlayInfo.Volume    := tblTitles2.FieldByName('Volume').AsInteger;
    Info.TitleCode  := tblTitles2.FieldByName('TitleCode').AsInteger;
    Info.ArtistCode := tblArtists2.FieldByName('ArtistCode').AsInteger;
    Info.Beat       := tblTitles2.FieldByName('BPM').AsInteger;
    Info.ArtistLastPlayed := tblArtists2.FieldByName('LastPlayed').AsDateTime;
    Info.TitleLastPlayed  := tblTitles2.FieldByName('PlayedLast').AsDateTime;
  end
  else
  if MainTab.ActivePage = FiltersTab then
  begin
    if (Query1.Active = False) or (Query1.RecordCount = 0) then
    begin
      Result := False;
      Exit;
    end;
    ChoosenItem := ciDatabaseFilter;
    Info.PlayType := ptSong;
    Info.Artist   := Query1.FieldByName('Name').AsString;
    Info.Song     := Query1.FieldByName('Title').AsString;
    Info.FileName := Query1.FieldByName('FileName').AsString;
    Info.PlayInfo.Length := Query1.FieldByName('SLength').AsInteger;
    Info.PlayInfo.PlayStart := Query1.FieldByName('Start').AsInteger;
    Info.PlayInfo.FadeIn    := Query1.FieldByName('FadeIn').AsInteger;
    Info.PlayInfo.Intro     := Query1.FieldByName('Intro').AsInteger;
    Info.PlayInfo.FadeOut   := Query1.FieldByName('FadeOut').AsInteger;
    Info.PlayInfo.MixPos    := Query1.FieldByName('MixPosition').AsInteger;
    Info.PlayInfo.Volume    := Query1.FieldByName('Volume').AsInteger;
    Info.TitleCode  := Query1.FieldByName('TitleCode').AsInteger;
    Info.ArtistCode := Query1.FieldByName('ArtistCode').AsInteger;
    Info.Beat       := Query1.FieldByName('BPM').AsInteger;
    Info.ArtistLastPlayed := Query1.FieldByName('LastPlayed').AsDateTime;
    Info.TitleLastPlayed  := Query1.FieldByName('PlayedLast').AsDateTime;
  end
  else
  if MainTab.ActivePage = NewRecordsTab then
  begin
    ChoosenItem := ciNone;
    Info.TitleCode := -1;
    if (FilesListBox1.ItemIndex >= 0) and (FilesListBox1.Items.count > 0) then
      Info.FileName := FilesListBox1.Items[FilesListBox1.ItemIndex]
    else
      Info.FileName := '';
  end
  else
  if MainTab.ActivePage = HardDiscTab then
  begin
    ChoosenItem := ciHDFile;
    if ListView1.Selected <> nil then
      Info.FileName := ListView1.Items.Item[ListView1.Selected.Index].Caption
    else
    begin
      Info.FileName := '';
      ChoosenItem := ciNone;
    end;
  end
  else
  if MainTab.ActivePage = FilesPacksTab then
  begin
    ChoosenItem := ciFilesPack;
    FilesPackFileName := '';
    if ListView2.Selected <> nil then
      FilesPackFileName := ListView2.Items.Item[ListView2.Selected.Index].Caption
    else
      ChoosenItem := ciNone;
    if (TextListBox1.ItemIndex > -1) and (TextListBox1.Items.Count > 0) then
    begin
      Info.FileName := TextListBox1.Items[TextListBox1.ItemIndex];
    end
    else
      Info.FileName := '';
  end;
  Info.SelectionType := stManual;;
  Info.Status        := isUnloaded;
  Info.Kind          := pkHD;
  Info.ButtonsStatus := [];
  Info.Player        := nil;
end;

procedure TSelectForm.btnEditClick(Sender: TObject);
begin
  GetTabInfo;
  if Info.TitleCode = -1 then
    exit;
  DataForm1.TitleCode := Info.TitleCode;
  DataForm1.FileName  := Info.FileName;
  if DataForm1.ShowModal = mrOK then
  begin
    dsArtists1.DataSet.Refresh;
    dsArtists2.DataSet.Refresh;
    dsTitles1.DataSet.Refresh;
    dsTitles2.DataSet.Refresh;
    dsSubject.DataSet.Refresh;
    dsStyle.DataSet.Refresh;
  end;
end;

procedure TSelectForm.btnCueClick(Sender: TObject);
begin
  GetTabInfo;
  if Info.FileName = '' then
    Exit;
  CueForm1.FileName := Info.FileName;
  CueForm1.UseThread := True;
  CueForm1.SearchDirectories := DataModule1.FileFind1.Directories;
  CueForm1.ShowModal;

{  FName := FindFile1.FindFile(Info.FileName);
  if FName <> '' then
  begin
    CueForm1.FileName := FName;
    CueForm1.ShowModal;
  end
  else
    ShowMessage('Δεν βρέθηκε το αρχείο στους ορισμένους καταλόγους'); }
end;

procedure TSelectForm.btnAddFilesClick(Sender: TObject);
var
  i : Integer;
begin
  OpenDialog1.FilterIndex := 1;
  if OpenDialog1.Execute then
  begin
    i := 0;
    While i <= OpenDialog1.Files.Count-1 do
    begin
      FilesListBox1.Items.Add(ExtractFileName(OpenDialog1.Files[i]));
      inc(i);
    end;
  end;
end;

procedure TSelectForm.btnLoadListClick(Sender: TObject);
begin
  OpenDialog1.FilterIndex := 3;
  if OpenDialog1.Execute then
  try
    FilesListBox1.Items.LoadFromFile(OpenDialog1.FileName);
  except
    ShowMessage(C_ProblemLoadingFile + OpenDialog1.FileName );
  end;
end;

procedure TSelectForm.btnSaveListClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  try
    FilesListBox1.Items.SaveToFile(SaveDialog1.FileName);
  except
    ShowMessage(C_ProblemSavingFile + SaveDialog1.FileName);
  end;
end;

procedure TSelectForm.btnInsertFileClick(Sender: TObject);
var
  i : Integer;
begin
  i := FilesListBox1.ItemIndex;
  if (i < 0) or (i > FilesListBox1.Items.Count-1) then
    Exit;
  if tblTitles2.Locate('FileName', FilesListBox1.Items[i], [loCaseInsensitive]) then
    ShowMessage(C_FileExistsInDB)
  else
  begin
    DataForm1.FileName := FilesListBox1.Items[i];
    DataForm1.TitleCode := -1;
    if DataForm1.ShowModal = mrOK then
    begin
      FilesListBox2.Items.Add( FilesListBox1.Items[i] );
      FilesListBox1.Items.Delete(i);
    end;
  end;
end;

procedure TSelectForm.FilesListBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i : Integer;
begin
  i := 0;
  if Key = 46 then
    if FilesListBox1.ItemIndex > -1 then
      While i <= FilesListBox1.Items.Count-1 do
        if FilesListBox1.Selected[i] then
          FilesListBox1.Items.Delete(i)
        else
          inc(i);
end;

procedure TSelectForm.btnSelectClick(Sender: TObject);
begin
  if GetTabInfo then
    ModalResult := mrOK
  else
    ModalResult := mrNone;
end;

procedure TSelectForm.btnDirectoryClick(Sender: TObject);
begin
  JvFolderDialog1.Directory := RadioSettings.AudioFilesDir;
  JvFolderDialog1.StatusText := C_SongsDir;
  if JvFolderDialog1.Execute then
  begin
    RadioSettings.AudioFilesDir := JvFolderDialog1.Directory;
//    DataModule1.FindFile1.Directories.Add( RadioSettings.AudioFilesDir );
    RefreshListView(ListView1, RadioSettings.AudioFilesDir, C_FilesExt);
  end;
end;

procedure TSelectForm.btnPacksDirClick(Sender: TObject);
begin
  JvFolderDialog1.Directory := RadioSettings.PlayListsDir;
  JvFolderDialog1.StatusText := C_FilePacksDir;
  if JvFolderDialog1.Execute then
  begin
    RadioSettings.PlayListsDir := PathAddSeparator(JvFolderDialog1.Directory);
//    FindFile1.Directories.Add( RadioSettings.PlayListsDir );
    RefreshListView(ListView2, RadioSettings.PlayListsDir, '*' + C_FilePacksExt);
  end;
end;

procedure TSelectForm.OnDirFileFound(Sender : TObject; Var SearchRec : TSearchRec);
Var
  ListItem : TListItem;
begin
  ListItem := TListView(TGetDirFiles(sender).ObjectTag).Items.Add;
  ListItem.Caption := SearchRec.Name;
end;

procedure TSelectForm.RefreshListView(TheListView : TListView; Var DirName : String; Extens : String);
var

  DirFiles : TGetDirFiles;
begin
  DirFiles := TGetDirFiles.Create;
  DirFiles.ObjectTag := TheListView;
  DirFiles.OnFileFound := OnDirFileFound;

  Try
    TheListView.Items.BeginUpdate;
    TheListView.Items.Clear;

    DirFiles.GetDirectoryFiles(DirName, Extens);
{    i := 0;
    While i <= DirFiles.DirectoryFiles.Count - 1 do
    Begin
      ListItem := TheListView.Items.Add;
      ListItem.Caption := DirFiles.DirectoryFiles[i];
      inc(i);
    end; }
  Finally
    TheListView.Items.EndUpdate;
//    DirFiles.ClearList;
    DirFiles.Free;
  end;
end;

procedure TSelectForm.ListView2Click(Sender: TObject);
Var
  FName : String;
begin
  if ListView2.Selected = nil then
    Exit;
  FName := ListView2.Items.Item[ListView2.Selected.Index].Caption;
  FName := RadioSettings.PlayListsDir + FName ;
  Try
    TextListBox1.Items.LoadFromFile(FName);
  except
    ShowMessage(C_ProblemLoadingFile + FName);
  end;
end;

procedure TSelectForm.MainTabChange(Sender: TObject);
begin
  btnEdit.Enabled := (MainTab.ActivePage = ArtistsTab) or
                     (MainTab.ActivePage = TitlesTab) or
                     (MainTab.ActivePage = FiltersTab);
  btnSelect.Enabled := not (MainTab.ActivePage = NewRecordsTab);
end;

procedure TSelectForm.TextListBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i : Integer;
begin
  i := 0;
  if Key = 46 then
    if TextListBox1.ItemIndex > -1 then
      While i <= TextListBox1.Items.Count-1 do
        if TextListBox1.Selected[i] then
          TextListBox1.Items.Delete(i)
        else
          inc(i);
end;

procedure TSelectForm.ListView2Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
 if Change = ctState then
   ListView2Click(nil);
end;

procedure TSelectForm.btnAddFilesToPackClick(Sender: TObject);
begin
  OpenDialog2.InitialDir := RadioSettings.AudioFilesDir;
  if OpenDialog2.Execute then
    AddFilesToPack(OpenDialog2.Files);
end;

procedure TSelectForm.AddFilesToPack(TheFiles : TStrings);
var
  i: Integer;
begin
  for i := 0 to TheFiles.Count-1 do
    TextListBox1.Items.Add(ExtractFileName(TheFiles[i]));
end;

procedure TSelectForm.btnSaveFilesPackClick(Sender: TObject);
var
  FName : String;
begin
  if ListView2.Selected = nil then
    Exit;
  FName := ListView2.Items.Item[ListView2.Selected.Index].Caption;
  FName := RadioSettings.PlayListsDir + FName ;
  Try
    TextListBox1.Items.SaveToFile( FName );
    ShowMessage('Saved OK');
  except
    ShowMessage(C_ProblemSavingFile + FName);
  end;
end;

procedure TSelectForm.btnDeleteFilesPackClick(Sender: TObject);
var
  FName : String;
  eFName : String;
begin
  if ListView2.Selected = nil then
    Exit;
  eFName := ListView2.Items.Item[ListView2.Selected.Index].Caption;
  FName := RadioSettings.PlayListsDir + eFName ;
  if MessageDlg(C_SureDeleteFile + eFName,
                 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  try
    DeleteFile(FName);
    RefreshListView(ListView2, RadioSettings.PlayListsDir, '*' + C_FilePacksExt);
  except
    ShowMessage(C_CanNotDeleteFile + FName);
  end;
end;

procedure TSelectForm.btnNewFilesPackClick(Sender: TObject);
var
  FName : String;
  f : TextFile;
begin
  FName := '';
  if InputQuery(C_CreateFilesPack, C_FilesPackName, FName) then
  begin
    FName := RadioSettings.PlayListsDir + FName + C_FilePacksExt;
    if FileExists(FName) then
    begin
      ShowMessage(Format(C_FileExists, [FName]));
      exit;
    end;
    AssignFile(f, FName);
    Rewrite(f);
    CloseFile(f);
    RefreshListView(ListView2, RadioSettings.PlayListsDir, '*' + C_FilePacksExt);
  end;
end;

procedure TSelectForm.btnRenameFilesPackClick(Sender: TObject);
var
  FName : String;
  eFName : String;
  OldFName : String;
begin
  if ListView2.Selected = nil then
    Exit;
  eFName := ListView2.Items.Item[ListView2.Selected.Index].Caption;
  OldFName := RadioSettings.PlayListsDir + eFName ;
  eFName := MyExtractFileName(eFName);
  if InputQuery(C_ChangeName, C_NewFilesPackName, eFName) then
  begin
    FName := RadioSettings.PlayListsDir + eFName + C_FilePacksExt;;
    if FileExists(FName) then
    Begin
      ShowMessage(Format(C_FileExists, [FName]));
      exit;
    end;
    Try
      RenameFile(OldFName, FName);
    Except
      ShowMessage(C_ErrorRenamingFile);
    end;  
    RefreshListView(ListView2, RadioSettings.PlayListsDir, '*' + C_FilePacksExt);
  end;
end;

procedure TSelectForm.FilesListBox1DblClick(Sender: TObject);
begin
  btnInsertFileClick(nil);
end;

procedure TSelectForm.SortedCheck1Click(Sender: TObject);
begin
  TextListBox1.Sorted := SortedCheck1.Checked;
end;

procedure TSelectForm.SpinButton1DownClick(Sender: TObject);
var
  i : Integer;
begin
  Try
    i := TextListBox1.ItemIndex;
    if i < TextListBox1.Items.Count-1 then
    Begin
      TextListBox1.Items.Move(i, i+1);
      TextListBox1.ItemIndex := i+1;
      TextListBox1.Selected[i+1] := True;
    end;
  except
    ShowMessage('Error moving item');
  end;
end;

procedure TSelectForm.SpinButton1UpClick(Sender: TObject);
var
  i : Integer;
begin
  Try
    i := TextListBox1.ItemIndex;
    if i > 0 then
    Begin
      TextListBox1.Items.Move(i, i-1);
      TextListBox1.ItemIndex := i-1;
      TextListBox1.Selected[i-1] := True;
    end;  
  except
    ShowMessage('Error moving item');
  end;
end;

procedure TSelectForm.LMDFMDrop1FMDragDrop(Sender: TObject; fcount, x,
  y: Integer; FileList: TStrings);
begin
  AddFilesToPack(FileList);
end;

end.
