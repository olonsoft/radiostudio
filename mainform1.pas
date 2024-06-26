Unit Mainform1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Menus, Grids, Spin, Buttons,
  MainPlayer1, MultiButton, ToolWin, DBCtrls, Gauges, TimeLabel, MyTypes,
  MyXAudioPlayer1, MMSystem, ImgList, SettingsR,
  Db, DBTables, DBGrids, BPMEdit, CheckLst, ActnList, Splash, JvTimer,
  JvComponent, JvCaptionButton, JvBaseDlg, JvBrowseFolder,
  JvExExtCtrls, JvPanel, JvExComCtrls, JvProgressBar, JvDragDrop,
  JvExStdCtrls, JvTextListBox, JvListBox, VirtualExplorerTree, VirtualTrees;

const
  UM_DEFINITIALIZE = WM_USER + $100;

type
  TForm1 = class(TForm)
    TimePanel: TJvPanel;
    SpinButton1: TSpinButton;
    Panel1: TJvPanel;
    PlayerPanel1: TJvPanel;
    Panel9: TJvPanel;                           
    PlayTypeLabel1: TLabel;
    ToolBar1: TToolBar;
    Pause1: TToolButton;
    Fix1: TToolButton;
    Loop1: TToolButton;
    Repeat1: TToolButton;
    Info1: TToolButton;
    Move1: TToolButton;
    Delete1: TToolButton;
    PlayerPanel2: TJvPanel;
    Panel7: TJvPanel;
    PlayTypeLabel2: TLabel;
    ToolBar2: TToolBar;
    Pause2: TToolButton;
    Fix2: TToolButton;
    Loop2: TToolButton;
    Repeat2: TToolButton;
    Info2: TToolButton;
    Move2: TToolButton;
    Delete2: TToolButton;
    PlayerPanel3: TJvPanel;
    Panel12: TJvPanel;
    PlayTypeLabel3: TLabel;
    ToolBar3: TToolBar;
    Pause3: TToolButton;
    Fix3: TToolButton;
    Loop3: TToolButton;
    Repeat3: TToolButton;
    Info3: TToolButton;
    Move3: TToolButton;
    Delete3: TToolButton;
    PlayerPanel4: TJvPanel;
    Panel15: TJvPanel;
    PlayTypeLabel4: TLabel;
    ToolBar4: TToolBar;
    Pause4: TToolButton;
    Fix4: TToolButton;
    Loop4: TToolButton;
    Repeat4: TToolButton;
    Info4: TToolButton;
    Move4: TToolButton;
    Delete4: TToolButton;
    StartButton2: TMultiButton;
    StartButton3: TMultiButton;
    StartButton4: TMultiButton;
    Panel3: TJvPanel;
    TimeLabel1: TTimeLabel;
    TimeLabel2: TTimeLabel;
    TimeLabel3: TTimeLabel;
    TimeLabel4: TTimeLabel;
    Label18: TLabel;
    TimeLabel5: TTimeLabel;
    TimeLabel6: TTimeLabel;
    Label19: TLabel;
    SpinButton3: TSpinButton;
    PageControl1: TPageControl;
    OnAirTab: TTabSheet;
    Panel2: TJvPanel;
    Header1: THeader;
    MainPrgList: TListBox;
    SelectedTab: TTabSheet;
    SelectedListBox: TListBox;
    SpinButton2: TSpinButton;
    DeleteBtn: TBitBtn;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Panel13: TJvPanel;
    LiveButton: TMultibutton;
    AutoButton: TMultibutton;
    Panel14: TJvPanel;
    Divider_b1: TToolButton;
    Divider_b2: TToolButton;
    Divider_b3: TToolButton;
    Divider_b4: TToolButton;
    OptionsPopUp: TPopupMenu;
    Panel11: TJvPanel;
    StartButton1: TMultibutton;
    SongLabel1: TLabel;
    SongLabel2: TLabel;
    SongLabel3: TLabel;
    SongLabel4: TLabel;
    IntroLabel1: TTimeLabel;
    IntroLabel2: TTimeLabel;
    IntroLabel3: TTimeLabel;
    IntroLabel4: TTimeLabel;
    Cue1: TToolButton;
    Cue2: TToolButton;
    Cue3: TToolButton;
    Cue4: TToolButton;
    MsgListBox: TListBox;
    TypesImageList: TImageList;
    TypeImage1: TImage;
    TypeImage2: TImage;
    TypeImage3: TImage;
    TypeImage4: TImage;
    SessionS: TSession;
    dsSearch: TDataSource;
    SearchQuery: TQuery;
    DatabaseS: TDatabase;
    tblArtistUpd: TTable;
    tblTitlesUpd: TTable;
    About1: TMenuItem;
    ActionList1: TActionList;
    PlayAction: TAction;
    MoveToAirAction: TAction;
    PlayNextButton: TSpeedButton;
    AutoMixButton: TSpeedButton;
    StatusBar1: TStatusBar;
    PlayNextAction: TAction;
    FadePlayingAction: TAction;
    StopAirAction: TAction;
    tblSpots: TTable;
    LiveModeAction: TAction;
    AutoModeAction: TAction;
    SpotsTab: TTabSheet;
    InfoTab: TTabSheet;
    Panel16: TJvPanel;
    SelectPageControl: TPageControl;
    SpotsTab1: TTabSheet;
    ListenButton1: TSpeedButton;
    SelectButton2: TSpeedButton;
    FilesTab1: TTabSheet;
    Panel10: TJvPanel;
    LoadPlayListButton1: TSpeedButton;
    ClearPlayListButton1: TSpeedButton;
    SavePlayListButton1: TSpeedButton;
    AddDirButton1: TSpeedButton;
    ListenButton2: TSpeedButton;
    SelectButton1: TSpeedButton;
    HardDiscFilesList1: TListBox;
    RandomPlayCheck1: TCheckBox;
    SortedCheck1: TCheckBox;
    LogTab1: TTabSheet;
    LogFileLabel: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Panel17: TJvPanel;
    btnSelect1: TSpeedButton;
    Panel4: TJvPanel;
    HeaderControl1: THeaderControl;
    SpotsList1: TListBox;
    PrgInfoPanel1: TJvPanel;
    PrgInfoLabel: TLabel;
    EndTimeLabel: TLabel;
    Label1: TLabel;
    RemainLabel1: TTimeLabel;
    RemainLabel2: TTimeLabel;
    RemainLabel3: TTimeLabel;
    RemainLabel4: TTimeLabel;
    Register1: TMenuItem;
    JvCaptionButton1: TJvCaptionButton;
    JvBrowseFolder1: TJvBrowseForFolderDialog;
    Timer1: TTimer;
    Progress1: TJvProgressBar;
    JvDragDrop1: TJvDragDrop;
    LogListBox: TJvTextListBox;
    Panel6: TPanel;
    Panel24: TJvPanel;
    Panel5: TJvPanel;
    Splitter1: TSplitter;
    CategoriesList1: TJvListBox;
    CatFilesList1: TJvListBox;
    TabSheet1: TTabSheet;
    Panel8: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Splitter2: TSplitter;
    VET1: TVirtualExplorerTreeview;
    VET2: TVirtualExplorerListview;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure AppOnException(Sender:TObject; E:Exception);
    procedure Timer1Timer(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure DeleteBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpinButton2DownClick(Sender: TObject);
    procedure SpinButton2UpClick(Sender: TObject);
    procedure SelectClick(Sender: TObject);
    procedure MainPrgListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure Header1Sized(Sender: TObject; ASection, AWidth: Integer);
    procedure DeleteButtonClick(Sender: TObject);
    procedure StartButtonClick(Sender: TObject);
    procedure StartPlayer(Player : Integer);
    procedure PauseClick(Sender: TObject);
    procedure FixClick(Sender: TObject);
    procedure LoopClick(Sender: TObject);
    procedure RepeatClick(Sender: TObject);
    procedure InfoClick(Sender: TObject);
    procedure MoveClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
//    procedure HintOnShow(var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure SpinButton3DownClick(Sender: TObject);
    procedure SpinButton3UpClick(Sender: TObject);
    procedure FilesListBoxDrawItem(Control: TWinControl;
      Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure FilesListBoxDblClick(Sender: TObject);
    procedure FilesListBoxKeyPress(Sender: TObject; var Key: Char);
    procedure LoadPlayList1Click(Sender: TObject);
    procedure SavePlayList1Click(Sender: TObject);
    procedure LiveButtonClick(Sender: TObject);
    procedure AutoButtonClick(Sender: TObject);
    procedure PlayNextButton1Click(Sender: TObject);
    procedure AutoMixButtonClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Randomize1Click(Sender: TObject);
    procedure Sort1Click(Sender: TObject);
    procedure MsgListBoxClick(Sender: TObject);
    procedure CueClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CategoriesList1Click(Sender: TObject);
    procedure CategoriesList1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ListenButton1Click(Sender: TObject);
    procedure FolderMonitor1Change(Sender: TObject);
    procedure AddDirButton1Click(Sender: TObject);
    procedure ClearPlayListButton1Click(Sender: TObject);
    procedure LoadPlayListButton1Click(Sender: TObject);
    procedure SavePlayListButton1Click(Sender: TObject);
    procedure SortedCheck1Click(Sender: TObject);
    procedure ListenButton2Click(Sender: TObject);
    procedure FolderMonitor2Change(Sender: TObject);
    procedure SelectButton1Click(Sender: TObject);
    procedure SelectButton2Click(Sender: TObject);

    procedure DBThread1Terminated(Sender : TObject);
    procedure About1Click(Sender: TObject);
    procedure PlayActionExecute(Sender: TObject);
    procedure MoveToAirActionExecute(Sender: TObject);
    procedure PlayNextActionExecute(Sender: TObject);
    procedure FadePlayingActionExecute(Sender: TObject);
    procedure StopAirActionExecute(Sender: TObject);
    procedure LiveModeActionExecute(Sender: TObject);
    procedure AutoModeActionExecute(Sender: TObject);
    procedure btnSelect1Click(Sender: TObject);
    procedure SpotsList1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure HeaderControl1SectionResize(HeaderControl: THeaderControl;
      Section: THeaderSection);
    procedure Register1Click(Sender: TObject);
    procedure JvCaptionButton1Click(Sender: TObject);
    procedure CatFilesList1DblClick(Sender: TObject);
    procedure JvDragDrop1Drop(Sender: TObject; Pos: TPoint;
      Value: TStrings);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure LogWrite(LogID : TLogItems; const s:string);
    procedure AddToSelectedListBox(const plItem:TPlayItem);
    procedure ShowMinusTime(tm:LongInt);
    procedure ShowPlusTime(tm:LongInt);
    procedure ShowTotalTime(tm:LongInt);
    procedure UpdateGauge(pos,max:LongInt);
    procedure UpdateTotalTime;
    procedure UpdateEndTime(nowtime:TDateTime);
    procedure ZeroCounters;
    function  FindFreePlayer:TMainPlayer;
    procedure CreatePlayers;
    procedure FreePlayers;
    Function  FindWhoSentIt(sender:TObject):Integer;
    function IsOnAir:Boolean;
    procedure AssignWaveDevices;
    procedure ChangeButtonsState;
    procedure ChangeAutoButtonsState;
    procedure ShowOnMessageListBox(Msg : String);
    procedure AddProgramEndJingles;
    procedure RefreshItemControls(CurrentItem:Integer);
    procedure RefreshAllPanelControls(StartItem:Integer);
    procedure RefreshItemStartButton(ItemNo:Integer);
    procedure RefreshTimerLabels(ItemNo:Integer);
    procedure EmptyItemControls(ItemNo:Integer);
    function FindFirstAvailableToPlay(k:Integer):Integer;
    Function PlayNext : Boolean;
    procedure MoveAllSelectedToMainList(pos : Integer);
    procedure MoveSelectedToMainList(SelectedNo : Integer; PlayerNo:Integer);
    procedure MoveAllAutoSelectedToMainList(pos : Integer);
    procedure AddPlayListItemToList;
    procedure LoadCheck;
    function FindLastLoadedPlayer(i:Integer):Integer;
    procedure DeleteAutoSongsFromList;

    Function PlayerPlaying(NotThis:integer):Integer;
    procedure DeleteItem(i:Integer);
    function CheckForSpots(Present1 : TDateTime): Boolean;
    procedure AddFileToSelected(Const FileName : String; TheName : String; sType : TSelectionType; plType : TPlayType);
    Function MakeSpotsFileName(tm:TDateTime):String;
//    procedure AddSpotsToSelected(fn : String);
    procedure LoadDataFiles;
    Function PlayedRecently(fn : String):Boolean;
    procedure UpdateSongInfo(TitleCode:LongInt);
    Function GetRandomSongFromFilePack(FilePack : String): String;

    Function AddToTime(TheTime : TDateTime; TheMinute : Integer) : TDateTime;
    Function LocateFileName(Var TheItem : TPlayItem): Boolean;
    Function LoadSpots(TheTime : TDateTime) : Boolean;
    procedure GetSpotNameAndFileName(RecCode : LongInt; var RecName, RecFileName : String);
    procedure LoadSpotsToSelected(SelectMode : TSelectionType);     // φόρτωσε τα σποτ στα επιλεγμένα
    procedure LoadSpotToSelected(SpotNo : Integer; SelectMode : TSelectionType);
    Function  FindSongFromDatabase(BeatFrom, BeatTo, BeatDelta, NowBeat : Integer;
                                   Params : String) : TPlayItem;
    Function GetPlayItem(ThePlsString : String) : TPlayItem;
    Function GetItemFromFilePack(ThePackFile : String) : TPlayItem;
    Function GetItemFromDBFilter(TheFilter : String) : TPlayItem;
    Function GetItemFromHDFile(TheFile : String) : TPlayItem;
    Function GetItemFromDBSong(TheTitleCode : LongInt) : TPlayItem;
    Function DisableDBTitle(TitleCode : LongInt) : Boolean;
    procedure DoOnEvery100MSec(Present : TDateTime);
    procedure DoOnEverySecond(Present : TDateTime);
    procedure DoOnEveryMinute(Present : TDateTime);
    procedure AddItemToList(ThePlsString : String);
    Function GetTheName(plItem : TPlayItem): String;
    procedure OnPlayerChangeStatus(Sender : TObject; TheStatus : TItemStatus);
    procedure PlayerOnReady(i : Integer);
    procedure PlayerOnPlay( i : Integer);
    procedure PlayerOnPause( i : Integer);
    procedure PlayerOnEnd( i : Integer);
    procedure PlayerOnError(i : Integer);
    procedure PlayerOnUnload(i: Integer);
    Procedure CheckAllPlayers;
    procedure DeleteListObject(i : Integer);
    procedure DeleteSelectedListObject(i : Integer);
    procedure ShowMemoryInfo;
    procedure StartNextIfMust(i : Integer);
    Function OpenDatabaseFiles : Boolean;
    Function CloseDatabaseFiles : Boolean;
    Function OpenSessions : Boolean;
    Function CloseSessions : Boolean;
    procedure OnDirFileFound(Sender : TObject; Var SearchRec : TSearchRec);
    procedure RestartProgram;
    procedure AppException(Sender: TObject; E: Exception);
  public
    { Public declarations }
    DBSearchThreadActive : Boolean;
    FindThreadActive   : Boolean;
    CategoriesDir: String;
    SelectedList  : TList;
    SelectedListItem  : PPlayItem;

//    Function FindFreeAudioPlayer:TAudioPlayer;
    Function FindFreeAudioPlayer:TMyXAudioPlayer;
    procedure UMDefInitialize(var Message: TMessage); message UM_DEFINITIALIZE;
  end;

const
  CMaxPlayers = 4;
  CMaxCDPlayers = 2;
  CPeriodsFile = 'Periods.dat';
  CSettingsFile = 'S19Radio.ini';
  CPlayModeFile = 'S19Mode.ini';

var
  Form1: TForm1;
  Player1, Player2, Player3, Player4 : TMainPlayer;
//  Audio1, Audio2, Audio3, Audio4  : TAudioPlayer;
  Audio1, Audio2, Audio3, Audio4 : TMyXAudioPlayer;
  Shifted   : Integer;
  TotalTime : LongInt;
  TimeLeft  : LongInt;
  LogFileName : string = 'Log\';
  OldSongsList : TStringList;
  PeriodsList  : TStringList;
  tmpFilePack  : TStringList;
  LastFilePackLoaded : String;
  DaysSpots    : TStringList;
  TimeSpotsMustLoad : TDateTime;
  ErrorCount: Integer;

implementation

{$R *.DFM}

uses
  Math, MyLibrary, Registry, CueForm, GetDirFiles,
  mp3Tag, JclStrings, SelectU, MyLibrary1, GetPrgItemU,
  ResStringsU, JclFileUtils, DataModule, ShellAPI,
  VirtualShellUtilities;

Const
  CRandomMax = 10;
    
var
  Last100MSec : Integer;
  LastSecond  : Integer;
  LastMinute  : Integer;
  MustLoadCheck   : Boolean;
  LoadCheckActive : Boolean;
  Moving : Boolean;
  MovedItem : Integer;
  GetDirFiles1 : TGetDirFiles;
  mp3Tag1    : Tmp3Tag;
//  GetSong1   : TGetSong;
  GetPrgItem1: TGetPrgItem;

  LastBeat : Integer;
  FindWorking    : Boolean;
  CurrentProgramInfo : TProgramInfo;
//  NextProgramInfo    : TProgramInfo;
  tmpDir1 , tmpDir2, tmpDir3  : String;
  OldWindowProc : Pointer; {Variable for the old windows proc}
  MyMsg : DWord; {custom systemwide message}
  SearchFileName : String;
  Regdc : Integer;
  GoToRandomRec : Integer;

procedure TForm1.FormCreate(Sender: TObject);
var
  tmpS     : String;
  AppName  : String;
//  pr : TProtect;
  ErrorsFound : Boolean;
begin
  Application.OnException := AppException;

  Self.Caption := Self.Caption + ' ' + VersionFixedFileInfoString(Application.ExeName, vfFull, '0.0');

  Randomize;
  ErrorsFound := False;
  ErrorCount := 0;
(*
 {Register a custom windows message}
  MyMsg := RegisterWindowMessage(PChar(ExtractFileName(Application.ExeName)));
 {Set form1's windows proc to ours and remember the old window proc}
  OldWindowProc := Pointer(SetWindowLong(Form1.Handle,
                                         GWL_WNDPROC,
                                         LongInt(@NewWindowProc)));
*)
  LoadSettings;
  SplashScreen := TSplashScreen.Create(Application);
  SplashScreen.Show;
  SplashScreen.Update;

  SplashScreen.Label1.Caption := 'Waiting for server ...';
  SplashScreen.Update;
  Repeat
    Application.ProcessMessages;
  Until DirectoryExists( RadioSettings.NetDir );
  SplashScreen.Label1.Caption := 'Please wait ...';
  SplashScreen.Update; 

  DataBaseS.AliasName := RadioSettings.DBAlias;
  try
    with DatabaseS do begin
      Params.Values['USER NAME'] := 'OnAir';
      Params.Values['PASSWORD'] := '';
      LoginPrompt := True;
      Connected := True;
    end;
  except
    on E: Exception do
    begin
      LogWrite(liError, Format('%s Opening Search Database[%s] (%d)', [C_Error, StrToIniStr(E.Message), E.HelpContext]) );
      Application.Terminate;
    end;
  end;

  if not DatabaseS.Connected then
    ShowMessage('Not Connected');


{  Regdc := 0;
  pr := TProtect.Create(self);
  try
    pr.KeyLength := 10;
    if pr.Registered then }
      Regdc := -1;
    Register1.Enabled := Regdc <> -1;
{  finally
    pr.Free;
  end; }


{  Application.OnException := AppOnException;
   Application.OnShowHint  := HintOnShow; }

{  LogFileN := GetCurrentDir;

  LogFileN := Copy(LogFileN, 1, LastDelimiter('\',LogFileN));
  LogFileName := LogFileN + LogFileName; }

  LogFileName := RadioSettings.NetDir;
  if LogFileName[Length(LogFileName)] = '\' then
    Delete(LogFileName, Length(LogFileName), 1);
  LogFileName := Copy(LogFileName, 1, LastDelimiter('\',LogFileName));
  LogFileName := LogFileName + 'Log\';

  LoadPlayMode;

  Case RadioSettings.StartupState of
    susLast : ;
    susAuto : RadioSettings.PlayMode := pmAuto;
    susLive : RadioSettings.PlayMode := pmLive;
  end;

  mp3Tag1      := Tmp3Tag.Create(self);
  GetPrgItem1  := TGetPrgItem.Create;
  GetDirFiles1 := TGetDirFiles.Create;
  GetDirFiles1.OnFileFound := OnDirFileFound;
  CreatePlayers;

//  NumberOfAudioCards := waveOutGetNumDevs;
  StatusBar1.panels[2].Text := Format('%d AudioCards', [waveOutGetNumDevs]);

  RefreshAllPanelControls(0); //UpdatePanels;
  GoToRandomRec := 0;
  ZeroCounters;
  TotalTime  := 0;
  TimeLeft   := 0;
  ShowTotalTime(0);
  LastMinute := -1;
  LastBeat   := 0;
  TimeSpotsMustLoad := 0;
  DBSearchThreadActive := False;
  FindThreadActive   := False;
  FindWorking  := False;
  MustLoadCheck := False;
  LoadCheckActive := False;
  LastFilePackLoaded := '';
  GetPrgItem1.ClearProgramInfo( CurrentProgramInfo );
  OldSongsList := TStringList.Create;
  PeriodsList  := TStringList.Create;
  tmpFilePack  := TStringList.Create;
  DaysSpots    := TStringList.Create;
  DaysSpots.Sorted := True;

  tmpS := ExtractFilePath(Application.ExeName);
  AppName := MyExtractFileName(Application.ExeName);

//  DataBaseS.AliasName := RadioSettings.DBAlias;
  SessionS.NetFileDir := RadioSettings.NetDir;
  Session.NetFileDir := RadioSettings.NetDir;
  tblSpots.DatabaseName := RadioSettings.DBAlias;
  tblArtistUpd.DatabaseName := RadioSettings.DBAlias;;
  tblTitlesUpd.DatabaseName := RadioSettings.DBAlias;

  // Create temporary folder for default database session
  try
    tmpDir1 := Format('%s%s-01.tmp', [tmpS, AppName]);
    DelTree(tmpDir1);
    ForceDirectories(tmpDir1);
    Session.PrivateDir := tmpDir1;
  Except
    on E: Exception do
    begin
      LogWrite(liError, Format('%s 01 [%s] (%d)', [C_ErrorCanNotCreateTmpDir, StrToIniStr(E.Message), E.HelpContext]) );
      ErrorsFound := True;
    end;
  end;

  if not ErrorsFound then
  // Create temporaray folder for search session
  try
    tmpDir2 := Format('%s%s-02.tmp', [tmpS, AppName]);
    DelTree(tmpDir2);
    ForceDirectories(tmpDir2);
    SessionS.PrivateDir := tmpDir2;
  Except
    on E: Exception do
    begin
      LogWrite(liError, Format('%s 02 [%s] (%d)', [C_ErrorCanNotCreateTmpDir, StrToIniStr(E.Message), E.HelpContext]) );
      ErrorsFound := True;
    end;
  end;

  if not ErrorsFound then
    ErrorsFound := not OpenSessions;
  if not ErrorsFound then
    ErrorsFound := not OpenDatabaseFiles;

  SplashScreen.Release;

  PostMessage(Handle, UM_DEFINITIALIZE, 0, 0);

  if ErrorsFound then
    SelectPageControl.ActivePage := LogTab1;
end;

Function TForm1.OpenSessions : Boolean;
begin
  Result := True;
  { open main database session }
  Try
    Session.Active := True;
  except
    on E: Exception do
    begin
      LogWrite(liError, Format('%s Opening Default Session [%s] (%d)', [C_Error, StrToIniStr(E.Message), E.HelpContext]) );
      Result := False;
    end;
  end;

  if Result then { open Search session }
  Try
    SessionS.Active := True;
  except
    on E: Exception do
    begin
      LogWrite(liError, Format('%s Opening Search Session [%s] (%d)', [C_Error, StrToIniStr(E.Message), E.HelpContext]) );
      Result := False;
    end;
  end;

{  if Result then
  try
    DatabaseS.Connected := True;
  except
    on E: Exception do
    begin
      LogWrite(liError, Format('%s Opening Search Database[%s] (%d)', [C_Error, StrToIniStr(E.Message), E.HelpContext]) );
      Result := False;
    end;
  end; }
end;

Function TForm1.CloseSessions : Boolean;
Begin
  Result := True;
  Try
    DatabaseS.Connected := False;
  except
    on E: Exception do
    begin
      LogWrite(liError, Format('%s Closing Search Database [%s] (%d)', [C_Error, StrToIniStr(E.Message), E.HelpContext]) );
      Result := False;
    end;
  end;

  if result then  { Close Search session }
  Try
    SessionS.Active := False;
  except
    on E: Exception do
    begin
      LogWrite(liError, Format('%s Closing Search Session [%s] (%d)', [C_Error, StrToIniStr(E.Message), E.HelpContext]) );
      Result := False;
    end;
  end;

  if Result then { Close default session }
  Try
    Session.Active := False;
  except
    on E: Exception do
    begin
      LogWrite(liError, Format('%s Closing Default Session [%s] (%d)', [C_Error, StrToIniStr(E.Message), E.HelpContext]) );
      Result := False;
    end;
  end;
end;

Function TForm1.OpenDatabaseFiles : Boolean;
begin
  Result := True;
  Try
    tblSpots.Open;
    tblArtistUpd.Open;
    tblTitlesUpd.Open;
  except
    on E: Exception do
    begin
      LogWrite(liError, Format('Opening Files [%s] (%d)', [StrToIniStr(E.Message), E.HelpContext]) );
      Result := False;
    end;
  end;
end;

Function TForm1.CloseDatabaseFiles : Boolean;
begin
  Result := True;
  Try
    tblSpots.Close;
    tblArtistUpd.Close;
    tblTitlesUpd.Close;
  except
    on E: Exception do
    begin
      LogWrite(liError, Format('Closing Files [%s] (%d)', [StrToIniStr(E.Message), E.HelpContext]) );
      Result := False;
    end;
  end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
var
  i : Integer;
begin
  FreePlayers;
  { ------ free PlayList ------- }
  for i := MainPrgList.Items.Count-1 downto 0 do
  begin
    DeleteListObject(i);
  end;
{  PlayList.Free; }

  { ----- free SelectedListBox ----- }
  for i := SelectedListBox.Items.Count-1 downto 0 do
  begin
    DeleteSelectedListObject(i);
  end;
{  SelectedList Free; }
{  for i := SelectedList.Count-1 downto 0 do
  begin
    SelectedListItem := SelectedList.Items[i];
    Dispose(SelectedListItem);
    SelectedList.Delete(i);
  end; }

//  GetSong1.Free;
  FreeAndNil(GetPrgItem1);
  OldSongsList.Clear;
  FreeAndNil(OldSongsList);
  FreeAndNil(GetDirFiles1);
  FreeAndNil(PeriodsList);
  FreeAndNil(tmpFilePack);
  FreeAndNil(mp3Tag1);
  FreeAndNil(DaysSpots);

  SearchQuery.Close;
  CloseDatabaseFiles;
  CloseSessions;

  DelTree(tmpDir1);
  DelTree(tmpDir2);
//  ClearDir(tmpDir3, True);

(*
 {Set form1's window proc back to it's original procedure}
  SetWindowLong(Form1.Handle,
                GWL_WNDPROC,
                LongInt(OldWindowProc));
*)
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
{  if Now > EncodeDate(2000, 01, 20) then
  begin
    ShowMessage('Η χρονική διάρκεια λειτουργίας του προγράμματος έληξε.' + #13 +
      'Παρακαλώ επικοινωνήστε με το προμηθευτή του : register@studio19.gr');

    Application.Terminate;
  end;
}
  LogWrite(liWarning, 'Program Start');
end;

procedure TForm1.UMDefInitialize(var Message: TMessage);
begin
  AssignWaveDevices;
  LoadDataFiles;
//  FileFind2.BuildFileList;
  Try
    PeriodsList.LoadFromFile(RadioSettings.ServerDataDir + CPeriodsFile);
  except
    on E: Exception do begin
      LogWrite(liError, Format('%s [%s] (%d)', [C_ProblemLoadingFile, StrToIniStr(E.Message), E.HelpContext]) );
      ShowMessage(C_ProblemLoadingFile + RadioSettings.ServerDataDir + CPeriodsFile);
    end
  end;
  SelectForm.ShowSelectTabs := [stDatabase];
  SelectForm.InitializeForm;
  if RadioSettings.PlayMode = pmAuto then
  begin
  end;
{  GetSong1.ClearFields(CurrentProgramInfo);
  GetSong1.ClearFields(NextProgramInfo); }
  ChangeButtonsState;
  ChangeAutoButtonsState;
  Timer1.Enabled := True;
end;

procedure TForm1.LoadDataFiles;
Var
  fn : String;
begin
  Try
    fn := PathAddSeparator(RadioSettings.ServerDataDir) + C_JingleCategoriesFile;
    if FileExists(fn) then
    begin
      CategoriesList1.Items.LoadFromFile(fn);
      if CategoriesList1.Items.Count > 0 then
      begin
        CategoriesList1.ItemIndex := 0;
        CategoriesList1Click(nil);
      end;
    end;
  Except
    on E: Exception do begin
      LogWrite(liError, Format('%s [%s] (%d)', [C_NoCategoryFiles, (E.Message), E.HelpContext]) );
      ShowMessage( C_NoCategoryFiles );
    end
  end;

  try
    fn := PathAddSeparator(RadioSettings.LocalDataDir) + C_SearchDirsFile;
    if FileExists(fn) then
      DataModule1.FileFind1.Directories.LoadFromFile(fn);
  Except
    on E: Exception do begin
      LogWrite(liError, Format('%s [%s] (%d)', [C_NoSearchDirsDefined, StrToIniStr(E.Message), E.HelpContext]) );
      ShowMessage(C_NoSearchDirsDefined);
    end;
  end;

  GetPrgItem1.PlayListsDir := RadioSettings.PlayListsDir;
  GetPrgItem1.ProgramFile := RadioSettings.ServerDataDir + C_WeekProgramFile;
end;

procedure TForm1.AppOnException(Sender:TObject; E:Exception);
begin
  LogWrite(liError, StrToIniStr(E.Message));
  Application.ShowException(E);
  Application.Terminate;
end;

procedure TForm1.AssignWaveDevices;
Begin
  Try                   //here
    Audio1.SetOutputName(RadioSettings.PlayDevice);
    Audio2.SetOutputName(RadioSettings.PlayDevice);
    Audio3.SetOutputName(RadioSettings.PlayDevice);
    Audio4.SetOutputName(RadioSettings.PlayDevice);
//    CueForm1.XPlayer1.SetOutputName(RadioSettings.CueDevice);
  except
    ShowMessage(C_ErrorEnumSoundCards);
  end;
end;

procedure TForm1.CreatePlayers;
begin
{  Audio1 := TAudioPlayer.Create(self); //TAudioPlayer.Create(self);
  Audio2 := TAudioPlayer.Create(self); //TAudioPlayer.Create(self);
  Audio3 := TAudioPlayer.Create(self); //TAudioPlayer.Create(self);
  Audio4 := TAudioPlayer.Create(self); //TAudioPlayer.Create(self);
}
  Audio1 := TMyXAudioPlayer.Create(self);
  Audio2 := TMyXAudioPlayer.Create(self);
  Audio3 := TMyXAudioPlayer.Create(self);
  Audio4 := TMyXAudioPlayer.Create(self);
  Audio1.PlayerPriority := 4; // Highest
  Audio2.PlayerPriority := 4;
  Audio3.PlayerPriority := 4;
  Audio4.PlayerPriority := 4; 
  Player1 := TMainPlayer.Create(self);
  Player2 := TMainPlayer.Create(self);
  Player3 := TMainPlayer.Create(self);
  Player4 := TMainPlayer.Create(self);
{  Player1.OnChangeStatus := OnPlayerChangeStatus;
  Player2.OnChangeStatus := OnPlayerChangeStatus;
  Player3.OnChangeStatus := OnPlayerChangeStatus;
  Player4.OnChangeStatus := OnPlayerChangeStatus; }
end;

procedure TForm1.FreePlayers;
begin
  FreeAndNil(Player1);
  FreeAndNil(Player2);
  FreeAndNil(Player3);
  FreeAndNil(Player4);
  FreeAndNil(Audio1);
  FreeAndNil(Audio2);
  FreeAndNil(Audio3);
  FreeAndNil(Audio4);
end;

//Function TForm1.FindFreeAudioPlayer : TAudioPlayer;
Function TForm1.FindFreeAudioPlayer : TMyXAudioPlayer;
begin
  if Audio1.Tag = 0 then
    Result := Audio1
  else
  if Audio2.Tag = 0 then
    Result := Audio2
  else
  if Audio3.Tag = 0 then
    Result := Audio3
  else
  if Audio4.Tag = 0 then
    Result := Audio4
  else
    Result := nil;
end;

function TForm1.FindFreePlayer:TMainPlayer;
begin
  Result := nil;
  if not player1.busy then
    Result := Player1
  else
  if not player2.busy then
    Result := Player2
  else
  if not player3.busy then
    result := player3
  else
  if not player4.busy then
    result := player4;
end;

procedure TForm1.ShowMemoryInfo;
var
  ms : TMemoryStatus;
  gh : THeapStatus;
begin
  ms.dwLength := SizeOf(ms);
  GlobalMemoryStatus(ms);
  gh := GetHeapStatus;
  with ms,gh do
    StatusBar1.Panels[3].Text := Format('%6.3fK  %6.3fK  %d%%  %6.3fM',
                                 [TotalAllocated / 1024,
                                  TotalFree / 1024,
                                  dwMemoryLoad,
                                  dwAvailPhys / 1024000]);

{    Format('%d%% %6.3fM  %6.1fM  %6.1fM',
                                 [dwMemoryLoad,
                         *         dwAvailPhys / 1000000,
                         *         dwAvailPageFile/1000000,
                                   dwAvailVirtual/1000000]);}
end;

procedure TForm1.ChangeButtonsState;
Begin
  AutoMixButton.Down  := RadioSettings.PlayState in [psAutoMix, psPlayNextAutoMix];
  PlayNextButton.Down := RadioSettings.PlayState in [psPlayNext, psPlayNextAutoMix];
{  if AutoMixButton.Down then
    AutoMixButton.ButtonColor := clAqua
  else
    AutoMixButton.ButtonColor := clSilver; }

{  if PlayNextButton.Down then
    PlayNextButton.ButtonColor := clAqua
  else
    PlayNextButton.ButtonColor := clSilver; }
  SavePlayMode;
end;

procedure TForm1.ChangeAutoButtonsState;
var
  tmpProgramInfo : TProgramInfo;
begin
  AutoButton.Down := RadioSettings.PlayMode = pmAuto;
  LiveButton.Down := RadioSettings.PlayMode = pmLive;
  if AutoButton.Down then
    AutoButton.ButtonColor := clAqua
  else
    AutoButton.ButtonColor := clSilver;
  if LiveButton.Down then
    LiveButton.ButtonColor := clAqua
  else
    LiveButton.ButtonColor := clSilver;

  if RadioSettings.PlayMode = pmAuto then
  Begin
    StatusBar1.Panels[0].Text := C_NewProgramCheck;
    StatusBar1.Update;

    GetPrgItem1.CopyProgramInfo(CurrentProgramInfo, tmpProgramInfo);

    if GetPrgItem1.FindNewProgram(Now, tmpProgramInfo) then
    begin
      if tmpProgramInfo.PlsFileTime <> CurrentProgramInfo.PlsFileTime then
      begin
        CurrentProgramInfo := tmpProgramInfo;
        PrgInfoLabel.Caption := LongDayNames[Trunc(CurrentProgramInfo.Time) + 1] +
                             ' ' + FormatDateTime('hh:mm',CurrentProgramInfo.Time) +
                             ' ' + CurrentProgramInfo.PlayList;
        LogWrite(liNewProgram, PrgInfoLabel.Caption);
        ShowOnMessageListBox(PrgInfoLabel.Caption);
        PrgInfoLabel.Caption := 'Playlist: ' + #13 +
                                PrgInfoLabel.Caption;
      end
    end
    else
    begin
      if tmpProgramInfo.PlayList = '' then
      begin
        ShowMessage(C_ProgramsNotExist);
        RadioSettings.PlayMode := pmLive;
      end;  
    end;
    StatusBar1.Panels[0].Text := '';
  end;
  SavePlayMode;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  Present1 : TDateTime;
  Hour, Min, Sec, MSec : Word;
begin
  Present1 := SysUtils.Now;
  DecodeTime(Present1, Hour, Min, Sec, MSec);

  if Last100MSec <> MSec then
  begin
    Last100MSec := MSec;
    DoOnEvery100MSec(Present1);
  end;

  if LastSecond <> Sec then
  begin
    LastSecond := Sec;
    DoOnEverySecond(Present1);
  end;

  if (LastMinute <> min) then
  begin
    LastMinute := min;
    DoOnEveryMinute(Present1);
  end;
end;

procedure TForm1.DoOnEvery100MSec(Present : TDateTime);
begin
  CheckAllPlayers;

  if MustLoadCheck then
  begin
    LoadCheck;
    MustLoadCheck := False;
  end;
end;

procedure TForm1.DoOnEverySecond(Present : TDateTime);
begin
  ShowMemoryInfo;
  TimePanel.Caption := FormatDateTime('ddd dd mmm yyyy    hh:mm:ss', Present);
  UpdateEndTime(Present);

  if (RadioSettings.PlayMode = pmAuto) then
  begin
    MoveAllAutoSelectedToMainList(MainPrgList.Items.Count);
    if (MainPrgList.Items.Count < CMaxPlayers) then
{      if IsOnAir then
      begin }
        if (TimeLeft > 4000) or (MainPrgList.Items.Count <= 2) then
          AddPlayListItemToList;        // load a new song to list
{      end
      else
        AddPlayListItemToList; }
  end;

  if (RadioSettings.PlayMode = pmAuto) and (Not IsOnAir) then
    PlayNext;

end;

Procedure TForm1.DoOnEveryMinute(Present : TDateTime);
Var
  tmpProgramInfo : TProgramInfo;
  NewProgramFound : Boolean;
begin
{  if Regdc <> -1 then
  begin
    inc(Regdc);
    if Regdc > 30 then
      Halt(0);
  end; }

  NewProgramFound := False;

  if RadioSettings.PlayMode = pmAuto then // αν παίζει αυτόματα
  begin
    // έλεγξε άν υπάρχουν επόμενα προγράμματα
    StatusBar1.Panels[0].Text := C_NewProgramCheck;
    StatusBar1.Update;
    GetPrgItem1.CopyProgramInfo(CurrentProgramInfo, tmpProgramInfo);

    if GetPrgItem1.FindNewProgram(AddToTime(Present, RadioSettings.LoadSpotsBefore), tmpProgramInfo) then
    begin
      NewProgramFound := True;
      PrgInfoLabel.Caption := LongDayNames[Trunc(tmpProgramInfo.Time) + 1] +
                           ' ' + FormatDateTime('hh:mm',tmpProgramInfo.Time) +
                           ' ' + tmpProgramInfo.PlayList;
      LogWrite(liNewProgram, PrgInfoLabel.Caption);                           
      ShowOnMessageListBox(PrgInfoLabel.Caption);

      PrgInfoLabel.Caption := 'Playlist: ' + #13 + PrgInfoLabel.Caption;

      MoveAllAutoSelectedToMainList(MainPrgList.Items.Count);
      DeleteAutoSongsFromList;  // Σβήσε όσα τραγούδια έχουν επιλεγεί αυτόματα
      AddProgramEndJingles;     // πρόσθεσε audio κλεισίματος
      MoveAllAutoSelectedToMainList(MainPrgList.Items.Count);
      GetPrgItem1.CopyProgramInfo(tmpProgramInfo, CurrentProgramInfo);
    end;
    StatusBar1.Panels[0].Text := '';
  end;

  StatusBar1.Panels[0].Text := C_CheckForSpots;
  StatusBar1.Update;

  if CheckForSpots(Present) then      // αν υπάρχουν σποτ
    if RadioSettings.PlayMode = pmAuto then  // αν παίζει αυτόματα
    begin
      if NewProgramFound then
        MoveAllAutoSelectedToMainList(MainPrgList.Items.Count) // βάλε τα σποτ μετά το end jingle
      else
        MoveAllAutoSelectedToMainList(1);       // βάλε τα σποτ άμέσως μετά από αυτό που παίζει
      PageControl1.ActivePage := OnAirTab;
    end;
  StatusBar1.Panels[0].Text := '';
end;

procedure TForm1.MoveAllAutoSelectedToMainList(pos : Integer);
var
  i: Integer;
begin
  i := 0;
  while i <= SelectedListBox.Items.Count-1 do
  begin
    if PPlayItem(SelectedListBox.Items.Objects[i])^.SelectionType = stAuto then
    begin
      MoveSelectedToMainList(i, Pos);
      inc(pos);
    end
    else
      inc(i);
  end;
end;

procedure TForm1.OnPlayerChangeStatus(Sender : TObject; TheStatus : TItemStatus);
Var
  i : Integer;
begin
  i := FindWhoSentIt(Sender);
  if i = -1 then
  begin
    LogWrite(TLogItems(liError) , 'Debug Error in OnPlayerChangeStatus. Status :' +
                                   IntToStr(Ord(TheStatus)) );
    exit;
  end;

  PPlayItem(MainPrgList.Items.Objects[i])^.Status := TheStatus;

  if TMainPlayer(Sender).HasError then
  Begin
    PPlayItem(MainPrgList.Items.Objects[i])^.ErrorStr := TMainPlayer(Sender).ErrorString;
    PlayerOnError(i);
    PPlayItem(MainPrgList.Items.Objects[i])^.Status := isDelete;
  end;

//  TheStatus := PPlayItem(MainPrgList.Items.Objects[i])^.Status;

  Case TheStatus of
    isDelete    : PlayerOnUnload(i);
    isReadyPlay : PlayerOnReady(i);
    isPlaying   : PlayerOnPlay(i);
    isPaused    : PlayerOnPause(i);
    isLoading,
    isCueing,
    isWaitPlay,
    isUnloading,
    isUnloaded,
    isFadePlay  : ;
    isEnded     : PlayerOnEnd(i);
  end;

  // γιατί το isUnloaded θα σβήσει το item i
  if TheStatus <> isDelete then
  Begin
//    TMainPlayer(PPlayItem(MainPrgList.Items.Objects[i])^.Player).PlayItem := PPlayItem(MainPrgList.Items.Objects[i])^;
    RefreshItemControls(i);
  end;
end;

Procedure TForm1.CheckAllPlayers;
var
  i : Integer;
begin
  i := 0;
  TotalTime := 0;
  While i <= MainPrgList.Items.Count-1 do
  begin
    // εάν υπάρχει player φορτωμένο
    if PPlayItem(MainPrgList.Items.Objects[i])^.Player <> nil then
    Begin
      // εάν το player παίζει
      if PPlayItem(MainPrgList.Items.Objects[i])^.Status in [isPlaying, isFadePlay] then
      Begin
        with PPlayItem(MainPrgList.Items.Objects[i])^ do
        Begin
          PlayInfo.Position := TMainPlayer(PPlayItem(MainPrgList.Items.Objects[i])^.Player).Position;
          RefreshTimerLabels(i);
          if i = PlayerPlaying(-1) then
          Begin
            TimeLeft := PlayInfo.MixPos - PlayInfo.Position;
            ShowMinusTime(TimeLeft);
            ShowPlusTime(PlayInfo.Position);
            UpdateGauge(PlayInfo.Position, PlayInfo.Length);
          end;
          // έλεγξε αν πρέπει να γίνει μίξη με το επόμενο
          if (PlayInfo.Position >= PlayInfo.MixPos) { and
             (PlayInfo.Position < PlayInfo.Length) } then
             StartNextIfMust(i);
        end;
        TotalTime := TotalTime + PPlayItem(MainPrgList.Items.Objects[i])^.PlayInfo.MixPos -
                                 PPlayItem(MainPrgList.Items.Objects[i])^.PlayInfo.Position;
      End
      else
        { is readyplay }
        TotalTime := TotalTime + PPlayItem(MainPrgList.Items.Objects[i])^.PlayInfo.MixPos;
    end
    else
      { is Unloaded }
      TotalTime := TotalTime + PPlayItem(MainPrgList.Items.Objects[i])^.PlayInfo.MixPos;
    inc(i);
  end;
//  TotalTime;
  ShowTotalTime(TotalTime);
end;

procedure TForm1.StartNextIfMust(i : Integer);
begin
  if (not (TMainPlayer(PPlayItem(MainPrgList.Items.Objects[i])^.Player).MixCalled)) and
     (not PPlayItem(MainPrgList.Items.Objects[i])^.NextStarted) then
  begin
    if PlayNext then
    Begin
      TMainPlayer(PPlayItem(MainPrgList.Items.Objects[i])^.Player).MixCalled := True;
      PPlayItem(MainPrgList.Items.Objects[i])^.NextStarted := True;
      RefreshItemControls(i);
    end;
  end;
end;

procedure TForm1.SpinButton1UpClick(Sender: TObject);
begin
  if Shifted > 0 then
  begin
    dec(Shifted);
    RefreshAllPanelControls(Shifted);
  end;
end;

procedure TForm1.SpinButton1DownClick(Sender: TObject);
begin
  if Shifted + CMaxPlayers - 1 < MainPrgList.Items.Count then
  begin
    inc(Shifted);
    RefreshAllPanelControls(Shifted);
  end;
end;

procedure TForm1.DeleteBtnClick(Sender: TObject);
var i : Integer;
begin
  i := SelectedListBox.ItemIndex;
  if i >- 1 then
  begin
    DeleteSelectedListObject( i );
    if SelectedListBox.Items.Count > 0 then
      SelectedListBox.ItemIndex := i;
  end;
end;

Procedure TForm1.LogWrite(LogID : TLogItems; const s:string);
var
  s1 : String;
  fn : String;
  fn2: String;
  FNow : TDateTime;
begin
  FNow := Now;
  s1 := Format('%s ', [FormatDateTime('yyyy/mm/dd hh:mm:ss', FNow)]);
  fn := Format('%s%s.log', [LogFileName, FormatDateTime('yyyymmdd', FNow)]);
  // addition : Feature now playing file
  fn2 := LogFileName + 'NowPlaying.txt';
  if LogID in [liSong, liHardDisc] then
    WriteToLog(fn2, s, True)
  else
    WriteToLog(fn2, '', True);  
  LogFileLabel.Caption := ExtractFileName(fn);
  with LogListBox do
  begin
    WriteToLog(fn, Format('%s%d %s', [s1, Ord(LogID), s]), False);
    Items.Add( Format('%s%s : %s', [s1, LogItemName[LogID],s]) );
    if Items.Count > RadioSettings.MaxLogLines then
      Items.Delete(0);
    ItemIndex := Items.Count - 1;
  end;
end;

Function TForm1.GetTheName(plItem : TPlayItem): String;
begin
  if plItem.PlayType = ptSong then
    Result := Format('%s -- %s', [plItem.Artist, plItem.Song])
  else
    Result := ExtractFileName(plItem.FileName);
end;

Procedure TForm1.AddToSelectedListBox(const plItem : TPlayItem);
var
  ix : integer;
  tmpPlayItem : PPlayItem;
begin
  System.New(tmpPlayItem);
  tmpPlayItem^ := plItem;
  ix := SelectedListBox.ItemIndex;
  if ix = -1 then // add at end of selection listbox
  begin
//    SelectedList.Add(tmpPlayItem);
    SelectedListBox.Items.AddObject( GetTheName(tmpPlayItem^),
                                     Pointer(tmpPlayItem));
  end
  else // else add where cursor is
  begin
//    SelectedList.Insert(ix,tmpPlayItem);
    SelectedListBox.Items.InsertObject(ix, GetTheName(tmpPlayItem^),
                                      Pointer(tmpPlayItem));
  end;
end;

procedure TForm1.SpinButton2DownClick(Sender: TObject);
var i, k : Integer;
begin
  i := SelectedListBox.ItemIndex;
  if i > -1 then
  begin
    k := SelectedListBox.Items.Count-1;
    if k > i then
    begin
//      SelectedList.Exchange(i,i+1);
      SelectedListBox.Items.Exchange(i, i + 1);
      SelectedListBox.ItemIndex := i + 1;
    end
    else
      SelectedListBox.ItemIndex := -1;
  end;
end;

procedure TForm1.SpinButton2UpClick(Sender: TObject);
var i:Integer;
begin
  i := SelectedListBox.ItemIndex;
  if i > 0 then
  begin
//    SelectedList.Exchange(i, i - 1);
    SelectedListBox.Items.Exchange(i, i - 1);
    SelectedListBox.ItemIndex := i - 1;
  end;
end;

procedure TForm1.EmptyItemControls(ItemNo:Integer);
begin
  ItemNo := ItemNo - shifted + 1;
  if Not (ItemNo in [1..CMaxPlayers]) then
    exit;
  with TStartButton(FindComponent('StartButton' + IntToStr(ItemNo))) do
  begin
    Redraw         := False;  // it won't repaint button until true
    BoxCaption1    := '';
    BoxCaption2    := '';
    ButtonCaption1 := '';
    ButtonCaption2 := '';
    ShowBox        := False;
    ButtonColor    := clBtnFace;
    Down           := False;
    Enabled        := false;
    Redraw         := True;  // it will repaint button
  end;

  with TToolBar(FindComponent('ToolBar'+IntToStr(ItemNo))) do
  Begin
    Enabled := False;
    Visible := False;
  end;

  TImage(FindComponent('TypeImage' + IntToStr(ItemNo))).Visible := False;
  TTimeLabel(FindComponent('RemainLabel'+IntToStr(ItemNo))).caption:='';
  TTimeLabel(FindComponent('IntroLabel'+IntToStr(ItemNo))).caption:='';
  TLabel(FindComponent('SongLabel'+IntToStr(ItemNo))).Caption:='';
  TLabel(FindComponent('PlayTypeLabel'+IntToStr(ItemNo))).Caption:='';
end;

procedure TForm1.RefreshItemControls(CurrentItem : Integer);
var
  tmpItem        : TPlayItem;
  i              : Integer;
  ButtonsEnabled : Boolean;
  isHD           : Boolean;
  bmp            : TBitmap;
begin
  i := CurrentItem - Shifted + 1;
  if Not (i in [1..CMaxPlayers]) then
    exit;
  tmpItem := PPlayItem(MainPrgList.Items.Objects[CurrentItem])^;
  RefreshItemStartButton(CurrentItem);
  RefreshTimerLabels(CurrentItem);
  with tmpItem do
  begin
    ButtonsEnabled := Status in [isReadyPlay, isWaitPlay, isPlaying, isPaused];
    isHD := (kind = pkHD);

    with TToolBar(FindComponent('ToolBar' + IntToStr(i))) do
    Begin
      Visible := True;
      Enabled := True;
    end;
    with TStatusButton(FindComponent('Pause' + IntToStr(i))) do
    begin
      Enabled := ButtonsEnabled;
      Down    := (bsPaused in ButtonsStatus) and ButtonsEnabled;
      Visible := True;
    end;
    with TStatusButton(FindComponent('Repeat' + IntToStr(i))) do
    begin
      Enabled := ButtonsEnabled and isHD;
      Down    := (bsRepeat in ButtonsStatus) and ButtonsEnabled and isHD;
      Visible := True;
    end;
    with TStatusButton(FindComponent('Fix' + IntToStr(i))) do
    begin
      Enabled := ButtonsEnabled and isHD;
      Down    := (bsFix in ButtonsStatus) and ButtonsEnabled and isHD;
      Visible := True;
    end;
    with TStatusButton(FindComponent('Loop' + IntToStr(i))) do
    begin
      Enabled := ButtonsEnabled and isHD;
      Down    := (bsTouchRep in ButtonsStatus) and ButtonsEnabled and isHD;
      Visible := True;
    end;
    with TStatusButton(FindComponent('Move' + IntToStr(i))) do
    begin
      Enabled := (not (status in [isPlaying, isLoading, isFadePlay]));
      Visible := True;
    end;
    with TStatusButton(FindComponent('Delete' + IntToStr(i))) do
    begin
      Enabled := (not (status in [isPlaying, isLoading, isFadePlay]));
      Visible := True;
    end;

    bmp := TBitmap.Create;
    Try
      TypesImageList.GetBitmap(ord(PlayType), bmp);
      with TImage(FindComponent('TypeImage' + IntToStr(i))) do begin
        Picture.Bitmap := bmp;
        Visible := True;
      end;
    Finally
      FreeAndNil(bmp);
    end;

    TLabel(FindComponent('PlayTypeLabel' + IntToStr(i))).Caption := PlayTypeName[PlayType];

{    s := Trim(Artist);
    if s <> '' then s := s + ' -- '; }
    TLabel(FindComponent('SongLabel' + IntToStr(i))).Caption := GetTheName(tmpItem); //s + Song;
  end;
end;

procedure TForm1.RefreshTimerLabels(ItemNo:Integer);
var
  PanelNumber, i : LongInt;
begin
  PanelNumber := ItemNo - Shifted + 1;
  if not (PanelNumber in [1..CMaxPlayers]) then
    exit;
  with PPlayItem(MainPrgList.Items.Objects[ItemNo])^ do
  begin
    i := PlayInfo.Intro - PlayInfo.Position;
    if i < 0 then
      i := 0;
    case PanelNumber of
      1 : begin
            IntroLabel1.Time  := i;
            RemainLabel1.Time := PlayInfo.Length - PlayInfo.Position;
          end;
      2 : begin
            IntroLabel2.Time  := i;
            RemainLabel2.Time := PlayInfo.Length - PlayInfo.Position;
          end;
      3 : begin
            IntroLabel3.Time  := i;
            RemainLabel3.Time := PlayInfo.Length - PlayInfo.Position;
          end;
      4 : begin
            IntroLabel4.Time  := i;
            RemainLabel4.Time := PlayInfo.Length - PlayInfo.Position;
          end;
   {   5 : begin
            IntroLabel5.Time  := i;
            RemainLabel5.Time := PlayInfo.Length - PlayInfo.Position;
          end;                 }
    end;
  end;
end;

procedure TForm1.RefreshItemStartButton(ItemNo:Integer);
var
  ButtonNo:Integer;
begin
  ButtonNo := ItemNo - shifted + 1;
  if not (ButtonNo in [1..CMaxPlayers]) then
    exit;
  with PPlayItem(MainprgList.Items.Objects[ItemNo])^ do
  begin
    with TStartButton(FindComponent('StartButton' + IntToStr(ButtonNo))) do
    begin
      Redraw := False;  // it won't repaint button until true
      BoxCaption1 := ItemStatusString[Status];
      if NextStarted then
        BoxCaption2 := 'Mixed'
      else
        BoxCaption2 := '';
      ButtonCaption1 := IntToStr(ButtonNo + shifted);
      ButtonCaption2 := MyConvertMSecsToString(PlayInfo.Length);
      OnOff          := True;
      ShowBox        := True;
      ButtonColor    := GetColor(Status);
      Down           := (status = isPlaying);
      Enabled        := Status in [isReadyPlay, isWaitPlay, isPlaying,
                                   isPaused];
      Redraw         := True;  // it will repaint button
    end;
  end;
end;

procedure TForm1.RefreshAllPanelControls(StartItem : Integer);
var
  TotalItems  : Integer;
  CurrentItem : Integer;
begin
  TotalItems := MainPrgList.Items.Count;
  for CurrentItem := StartItem to StartItem + CMaxPlayers do
  begin
//    CurrentItem:=PanelNumber + Shifted;
    if CurrentItem < TotalItems then   // PrgItemItem Exist
      RefreshItemControls(CurrentItem)
    else
      EmptyItemControls(CurrentItem);
  end;
end;

procedure TForm1.SelectClick(Sender: TObject);
var i : Integer;
begin
  i := TControl(sender).tag;
  i := i + shifted - 1;
  if Moving then
  begin
    Screen.Cursor := crDefault;
    Moving := False;
    if MovedItem <> i then
    begin
      if i > MainPrgList.Items.Count-1 then
        i := MainPrgList.Items.Count-1;
      MainPrgList.Items.Move(MovedItem, i);
      RefreshAllPanelControls(MinFrom(MovedItem, i));
      MustLoadCheck := True;
      //LoadCheck;
    end
  end
  else
    MoveAllSelectedToMainList(i);
  PageControl1.ActivePage := OnAirTab;
end;

Procedure TForm1.MoveSelectedToMainList(SelectedNo : Integer; PlayerNo:Integer);
var
  tmpPlayItem : PPLayItem;
begin
  if PlayerNo > MainPrgList.Items.Count then
    PlayerNo := MainPrgList.Items.Count;

  { make new item in main play list }
  System.New(tmpPlayItem);
  { assign data to new item }
  tmpPlayItem^ := PPlayItem(SelectedListBox.Items.Objects[SelectedNo])^;
  { insert new data in main play list }
  MainPrgList.Items.InsertObject(PlayerNo, tmpPlayItem^.song, Pointer(tmpPlayItem));

  { delete item from selected list }
  DeleteSelectedListObject(SelectedNo);

  RefreshAllPanelControls(PlayerNo);
  if tmpPlayItem^.PlayInfo.Length > 0 then
    UpdateTotalTime;
  MustLoadCheck := True;
  // LoadCheck;
end;

procedure TForm1.MoveAllSelectedToMainList(pos : Integer);
begin
  while SelectedListBox.Items.Count > 0 do
  begin
    MoveSelectedToMainList(0, Pos);
    inc(pos);
  end;
end;

Function TForm1.FindWhoSentIt(sender:TObject):Integer;
var
  i : Integer;
begin
  Result := -1;
  i := 0;
  while i <= MainPrgList.Items.Count - 1 do
  begin
    if Sender = PPlayItem(MainPrgList.Items.Objects[i])^.Player then
    begin
      Result := i;
      break;
    end;
    inc(i);
  end;
  if (Result = -1) {or (Result > MainPrgList.Items.Count - 1)} then
    LogWrite(liError, 'Error in Finding which player send command');
end;

procedure TForm1.LoadCheck;
var
 i,k : Integer;
 pl : TMainPlayer;
 CanLoad : Boolean;
begin
  if LoadCheckActive then
    Exit;
  LoadCheckActive := True;
  CanLoad := True;
  i := 0;
  while i <= MainPrgList.Items.Count - 1 do
  begin
    if PPlayItem(MainPrgList.Items.Objects[i])^.Status = isUnloaded then
    begin
      pl := FindFreePlayer;
      if pl <> nil then
      begin
        pl.PlayInfo := PPlayItem(MainPrgList.Items.Objects[i])^.PlayInfo;
        pl.FileName := PPlayItem(MainPrgList.Items.Objects[i])^.FileName;
        with PPlayItem(MainPrgList.Items.Objects[i])^ do
        begin
          ButtonsStatus := [];
          NextStarted   := False;
          pl.OnChangeStatus := OnPlayerChangeStatus;
          Player := pl;
          CanLoad := pl.Load;
        end;
      end
      else
        CanLoad := False;
      if not CanLoad then
      begin
        k := FindLastLoadedPlayer(i);
        if k > 0 then
        begin
          if PPlayItem(MainPrgList.Items.Objects[k])^.Status <> isUnloaded then
            TMainPlayer(PPlayItem(MainPrgList.Items.Objects[k])^.Player).UnloadOnly;
          // θα καλέσει το OnChangeStatus =  isUnloading
          //  για να πάρει το νέο state που θα είναι πιθανόν stUnloading
{          PPlayItem(MainPrgList.Items.Objects[k])^ := TMainPlayer(PPlayItem(MainPrgList.Items.Objects[k])^.Player).PlayItem;
          RefreshItemControls(k); }
        end;
      end;
    end;
    inc(i);
  end;
  LoadCheckActive := False;
end;

Function TForm1.FindLastLoadedPlayer(i : Integer) :  Integer;
var
  kind : TPlayerKind;
  k :Integer;
begin
  Result := 0;
  Kind := PPLayItem(MainPrgList.Items.Objects[i])^.Kind;
  k := MainPrgList.Items.Count-1;
  while k > i  do
  begin
    if (PPlayItem(MainPrgList.Items.Objects[k])^.Status = isReadyPlay) and
       (PPlayItem(MainPrgList.Items.Objects[k])^.Kind = kind) then
    begin
      Result:= k;
      break;
    end
    else
      dec(k);
  end;
end;

procedure TForm1.PlayerOnUnload(i: Integer);
Begin
  if TMainPlayer(PPlayItem(MainPrgList.Items.Objects[i])^.Player).SimpleUnload then
  begin
    PPlayItem(MainPrgList.Items.Objects[i])^.Status := isUnloaded;
    TMainPlayer(PPlayItem(MainPrgList.Items.Objects[i])^.Player).OnChangeStatus := nil;
    PPlayItem(MainPrgList.Items.Objects[i])^.Player := nil;
    RefreshItemControls(i);
    MustLoadCheck := True;
  end
  else
    DeleteItem(i);
end;

procedure TForm1.PlayerOnReady(i : Integer);
var
  tmpLength: LongInt;
begin
  with PPlayItem(MainPrgList.Items.Objects[i])^ do
  begin
    tmpLength := TMainPlayer(PPlayItem(MainPrgList.Items.Objects[i])^.Player).Duration;
    if tmpLength > 0 then
      PlayInfo.Length := tmpLength;
    if PlayInfo.Length = 0 then
      PlayInfo.Length := 1;  
    if Kind = pkCD then
    begin
      PlayInfo.Length  := PlayInfo.Length - 5000;
      PlayInfo.MixPos  := PlayInfo.Length - RadioSettings.DefaultSongMix;
      PlayInfo.FadeOut := RadioSettings.DefaultFadeOut;   // fade out will start at MixPos-FadeOut
    end
    else
    begin
      if PlayInfo.MixPos <= 0 then
      Begin
        if PlayInfo.Length > RadioSettings.DefaultJingleSep then // is a song
        begin
          PlayInfo.MixPos  := PlayInfo.Length - RadioSettings.DefaultSongMix;   //// temporary
          PlayInfo.FadeOut := RadioSettings.DefaultFadeOut;
        end
        else                 // is a jingle
        Begin
          PlayInfo.MixPos := PlayInfo.Length - RadioSettings.DefaultJingleMix;
          PlayInfo.FadeOut := RadioSettings.DefaultFadeOut;
        end;
      end;
    end;
    UpdateTotalTime;
    MainPrgList.Invalidate;
  end;
end;

procedure TForm1.PlayerOnPlay( i : Integer);
begin
  Exclude(PPlayItem(MainPrgList.Items.Objects[i])^.ButtonsStatus, bsPaused);
  LogWrite( TLogItems(Ord(PPlayItem(MainPrgList.Items.Objects[i])^.PlayType)),
            GetTheName(PPLayItem(MainPrgList.Items.Objects[i])^));
  if PPlayItem(MainPrgList.Items.Objects[i])^.PlayType = ptSong then
    UpdateSongInfo(PPlayItem(MainPrgList.Items.Objects[i])^.TitleCode);
end;

procedure TForm1.PlayerOnPause( i : Integer);
begin
  Include(PPlayItem(MainPrgList.Items.Objects[i])^.ButtonsStatus, bsPaused);
end;

function TForm1.FindFirstAvailableToPlay(k:Integer):Integer;
var
  i : Integer;
begin
  result := -1;
  i := 0;
  while (i <= MainPrgList.Items.Count-1) do
  begin
    with PPlayItem(MainPrgList.Items.Objects[i])^ do
      if (Status = isReadyPlay) and (NextStarted = False) then
      begin
        Result := i;
        break;
      end
      else
        Inc(i);
  end;
end;

Function TForm1.IsOnAir:Boolean;
var
  i : Integer;
begin
  Result := False;
  i := 0;
  while (i <= MainPrgList.Items.Count-1) and (not Result) do
  begin
    Result := (PPlayItem(MainPrgList.Items.Objects[i])^.Status in [isPlaying, isPaused, isFadePlay]);
    inc(i);
  end;
end;

Function TForm1.PlayerPlaying(NotThis:integer):Integer;
var
  i : Integer;
  KeepIt : Integer;
begin
  Result := -1;
  i := 0;
  KeepIt := -1;
  while i <= MainPrgList.Items.Count-1 do
    with PPlayItem(MainPrgList.Items.Objects[i])^ do
    Begin
      if (Status = isPlaying) and (i <> NotThis) then
      begin
        if not NextStarted then
        begin
          Result := i;
          break;
        end
        else
        begin
          KeepIt := i;
          Inc(i);
        end;
      end
      else
        inc(i);
    end;
  if Result = -1 then
    Result := KeepIt;
end;

Function TForm1.PlayNext : Boolean;
var
  n : Integer;
begin
  Result := False;
  if ((RadioSettings.PlayState in [psPlayNext, psPlayNextAutoMix]) or
     (RadioSettings.PlayMode = pmAuto)) then
  begin
    n := FindFirstAvailableToPlay(0);  //i
    if n >- 1 then
    Begin
      if PPlayItem(MainPrgList.Items.Objects[n])^.Status in [isReadyPlay, isPaused] then
      begin
        TMainPlayer(PPlayItem(MainPrgList.Items.Objects[n])^.Player).Play;
        Result := True;
      end;
    end;
  end;
end;

procedure TForm1.PlayerOnEnd( i : Integer);
begin
  if PlayerPlaying(-1) = -1 then
    ZeroCounters;
  StartNextIfMust(i);
  if PPlayItem(MainPrgList.Items.Objects[i])^.Status <> isUnloaded then
    TMainPlayer(PPlayItem(MainPrgList.Items.Objects[i])^.Player).Unload;
end;

procedure TForm1.PlayerOnError(i : Integer);
begin
  LogWrite(liError, PPlayItem(MainPrgList.Items.Objects[i])^.ErrorStr + ' File : ' +
                    GetTheName( PPlayItem(MainPrgList.Items.Objects[i])^) + ' -> ' +
                    PPlayItem(MainPrgList.Items.Objects[i])^.FileName);
end;

procedure TForm1.DeleteItem(i : Integer);
begin
  Case PPlayItem(MainPrgList.Items.Objects[i])^.Status of
    isPlaying : ;
    isDelete, isUnloaded :
      Begin
        DeleteListObject(i);
        UpdateTotalTime;
        if (Shifted > 0) and (Shifted + CMaxPlayers > MainPrgList.Items.Count) then
          Dec(Shifted);
        RefreshAllPanelControls(Shifted);  // To shifted ήταν i
        MustLoadCheck := True;
      end;
    isReadyPlay, isPaused : TMainPlayer(PPlayItem(MainPrgList.Items.Objects[i])^.Player).Unload;
  end;
end;

procedure TForm1.DeleteListObject(i : Integer);
Begin
  if PPlayItem(MainPrgList.Items.Objects[i])^.Player <> nil then
  begin
    TMainPlayer(PPlayItem(MainPrgList.Items.Objects[i])^.Player).OnChangeStatus := nil;
    PPlayItem(MainPrgList.Items.Objects[i])^.Player := nil;
  end;
  System.Dispose(PPlayItem(MainPrgList.Items.Objects[i]));
  MainPrgList.Items.Objects[i] := nil;
  MainPrgList.Items.Delete(i);
  MainPrgList.Items.Capacity := MainPrgList.Items.Count;
end;

procedure TForm1.DeleteSelectedListObject( i : Integer);
Begin
  System.Dispose(PPlayItem(SelectedListBox.items.Objects[i]));
  SelectedListBox.Items.Objects[i] := nil;
  SelectedListBox.Items.Delete(i);
  SelectedListBox.Items.Capacity := SelectedListBox.Items.Count;
end;

procedure TForm1.ShowMinusTime(tm:LongInt);
Begin
  TimeLabel1.Time := tm;
end;

procedure TForm1.ShowPlusTime(tm : LongInt);
Begin
  TimeLabel3.Time := tm;
end;

procedure TForm1.ShowTotalTime(tm:LongInt);
Begin
  TimeLabel5.Time := tm;
end;

(*

procedure TForm1.PlayerOnTimer(Sender:TObject);
var
  i:Integer;
begin
  i := FindWhoSentIt(sender);
  if i = -1 then
  begin
    LogWrite(liError, 'Debug error in PlayerOnTimer');
    exit;
  end;
  PPlayItem(MainPrgList.Items.Objects[i])^ := TMainPlayer(sender).PlayItem;
  with PPlayItem(MainPrgList.Items.Objects[i])^ do
  begin
    RefreshTimerLabels(i);
    if i = PlayerPlaying(-1) then
    begin
      ShowMinusTime({PlayInfo.Length} PlayInfo.MixPos - PlayInfo.Position);
      ShowPlusTime(PlayInfo.Position);
      TimeLeft := TotalTime - PlayInfo.Position;
      ShowTotalTime(TimeLeft);
      UpdateGauge(PlayInfo.Position, PlayInfo.Length);
      UpdateGauge2(PlayInfo.Intro, PlayInfo.MixPos, PlayInfo.Length, PlayInfo.Position);
    end;
  end;
end;
*)

procedure TForm1.UpdateTotalTime;
var
  i : Integer;
begin
  TotalTime := 0;
  i := 0;
  while i <= MainPrgList.Items.Count - 1 do
  begin
    TotalTime := TotalTime + PPlayItem(MainPrgList.Items.Objects[i])^.PlayInfo.Length;
    inc(i);
  end;
//  TotalTime;
  ShowTotalTime(TotalTime);
end;

procedure TForm1.UpdateGauge(pos, max : LongInt);
begin
  pos := (pos * 100) div max;
  Progress1.Position := Pos;
end;

procedure TForm1.UpdateEndTime(NowTime:TDateTime);
var
  h,m,s,ms : Integer;
  td : TDateTime;
begin
  MyConvertMSecs(TotalTime, h, m, s, ms);
  td := EncodeTime(h, m, s, ms) + NowTime;
  EndTimeLabel.Caption := FormatDateTime('hh:mm:ss',td);
end;

procedure TForm1.ZeroCounters;
begin
  ShowMinusTime(0);
  ShowPlusTime(0);
  UpdateGauge(0,100);
end;

Function TForm1.PlayedRecently(fn : String):Boolean;
Begin
  fn := ExtractFileName(fn);
  Result := True;
  if OldSongsList.IndexOf(fn) = -1 then
  begin
    Result := False;
    OldSongsList.Add(fn);
    if OldSongsList.Count > 50 {RadioSettings.MaxLogLines} then
      OldSongsList.Delete(0);
  end
end;

Function TForm1.GetPlayItem(ThePlsString : String) : TPlayItem;
var
  s : String;
begin
  case ThePlsString[1] of
    C_ProgramItemSongPack :
      begin
        s := ExtractDelimited(2, ThePlsString, [CSep1]);
        Result := GetItemFromFilePack(s);
        Result.PlayType := ptHardDisc;
      end;
    C_ProgramItemDBFilter :
      begin
        s := ExtractDelimited(2, ThePlsString, [CSep1, CSep2]);
        Result := GetItemFromDBFilter(s);
        Result.PlayType := ptSong;
      end;
    C_ProgramItemHDFile   :
      Begin
        s := ExtractDelimited(2, ThePlsString, [CSep1]);
        Result := GetItemFromHDFile(s);
        Result.PlayType := ptHardDisc;
      end;
    C_ProgramItemDBSong   :
      begin
        s := ExtractDelimited(2, ThePlsString, [CSep1, CSep2]);
        Result := GetItemFromDBSong(StrToInt(s));
        Result.PlayType := ptSong;
      end;
  end;
end;

Function TForm1.GetItemFromFilePack(ThePackFile : String) : TPlayItem;
var
  FName : String;
  Tries : Integer;
begin
  FName := GetRandomSongFromFilePack(ThePackFile);
  if FName <> '' then
  begin
    Tries := 0;
    StatusBar1.Panels[0].Text := 'Searching FilesPack : ' + ThePackFile;
    StatusBar1.Update;
    Repeat
      FName := GetRandomSongFromFilePack(ThePackFile);
      if PlayedRecently(FName) then
      begin
        Inc(Tries);        // κοιτάζει 50 τραγούδια πίσω για πρόσφατα
        if Tries > 50 then // μεταδιδόμενο τραγούδι
          Break
      end
      else
        Break;
    Until true;
    Result := GetItemFromHDFile(FName);
  end
  else
    Result.ErrorStr := 'Problem processing FilesPack : ' + ThePackFile;
end;

Function TForm1.GetItemFromDBFilter(TheFilter : String) : TPlayItem;
begin
  Try
    if LastBeat <= 0 then
      LastBeat := (CurrentProgramInfo.BeatFrom + CurrentProgramInfo.BeatTo) div 2;
    Result := FindSongFromDatabase(CurrentProgramInfo.BeatFrom,
                            CurrentProgramInfo.BeatTo,
                            CurrentProgramInfo.BeatDelta, LastBeat,
                            TheFilter);
  except
    on E: Exception do begin
      Result.ErrorStr := 'Error in GetItemFromDBFilter';
      LogWrite(liError, Format('%s [%s] (%d)', [Result.ErrorStr, StrToIniStr(E.Message), E.HelpContext]) );
    end;
  end;
end;

Function TForm1.GetItemFromHDFile(TheFile : String) : TPlayItem;
begin
  with Result do
  begin
    FileName      := TheFile;
    Kind          := pkHD;
    Status        := isUnloaded;
    NextStarted   := False;
    ButtonsStatus := [];
    StartMode     := smNormal;
    Player        := nil;
    TitleCode     := -1;
    ArtistCode    := -1;
    ErrorStr      := '';
  end;
end;

Function TForm1.GetItemFromDBSong(TheTitleCode : LongInt) : TPlayItem;
Var
  Cont : Boolean;
begin
  try
    Cont := False;
    if tblTitlesUpd.Locate('TitleCode', TheTitleCode, []) then
      Cont := True
    else
    begin
      tblTitlesUpd.Close;
      tblTitlesUpd.Open;
      if tblTitlesUpd.Locate('TitleCode', TheTitleCode, []) then
        Cont := True;
    end;
    if Cont then
    begin
      Result.FileName := tblTitlesUpd.FieldByName('FileName').AsString;
      Result.ArtistCode := tblTitlesUpd.FieldByName('ArtistCode').AsInteger;
      Cont := False;
      if tblArtistUpd.Locate('ArtistCode', Result.ArtistCode, []) then
        Cont := True
      else
      Begin
        tblArtistUpd.Close;
        tblArtistUpd.Open;
        if tblArtistUpd.Locate('ArtistCode', Result.ArtistCode, []) then
          Cont := True;
      end;
      if Cont then
      begin
        with Result do
        begin
//          FileName := fn;
          Kind     := pkHD;
          Artist   := tblArtistUpd.FieldByName('Name').AsString;
          Song     := tblTitlesUpd.FieldByName('Title').AsString;
          PlayInfo.Length   := tblTitlesUpd.FieldByName('SLength').AsInteger;
          PlayInfo.PlayStart:= tblTitlesUpd.FieldByName('Start').AsInteger;
          PlayInfo.MixPos   := tblTitlesUpd.FieldByName('MixPosition').AsInteger;
          PlayInfo.Position := 0;
          PlayInfo.Intro    := tblTitlesUpd.FieldByName('Intro').AsInteger;
          PlayInfo.FadeIn   := tblTitlesUpd.FieldByName('FadeIn').AsInteger;
          PlayInfo.FadeOut  := tblTitlesUpd.FieldByName('FadeOut').AsInteger;
          PlayInfo.Volume   := tblTitlesUpd.FieldByName('Volume').AsInteger;
          if PlayInfo.Volume = 0 Then
            PlayInfo.Volume := 100;
          Status            := isUnloaded;
          NextStarted       := False;
          ButtonsStatus     := [];
          Player            := nil;
          StartMode         := smNormal;
          TitleCode         := tblTitlesUpd.FieldByName('TitleCode').AsInteger;
          ArtistCode        := tblTitlesUpd.FieldByName('ArtistCode').AsInteger;
          Beat              := tblTitlesUpd.FieldByName('BPM').AsInteger;
          ArtistLastPlayed  := tblArtistUpd.FieldByName('LastPlayed').AsDateTime;
          TitleLastPlayed   := tblTitlesUpd.FieldByName('PlayedLast').AsDateTime;
        end;
      end
      else
        Result.ErrorStr := 'Error Could not find ArtistCode : ' + IntToStr(Result.ArtistCode);
    end
    else
      Result.ErrorStr := 'Error Could not find TitleCode : ' + IntToStr(TheTitleCode);
  Except
    on E: Exception do begin
      Result.ErrorStr := 'Error in GetDBSong';
      LogWrite(liError, Format('%s [%s] (%d)', [Result.ErrorStr, StrToIniStr(E.Message), E.HelpContext]) );
    end;
  end;
end;

{add random songs to the list }
{ -------------------------------------------------------------------- }
procedure TForm1.AddPlayListItemToList;
var
  ThePlsString : String;
begin
  if FindThreadActive then
    exit;

  FindThreadActive := True;

  CurrentProgramInfo.AutoRepeat := True; // για να παίζει συνέχεια

  ThePlsString := GetPrgItem1.GetItem(CurrentProgramInfo);
  AddItemToList(ThePlsString);
  FindThreadActive := False;
end;

procedure TForm1.AddItemToList(ThePlsString : String);
var
  ThePlayItem  : TPlayItem;
begin
  if ThePlsString <> '' then
  begin
    ClearThePlayItem(ThePlayItem);
    ThePlayItem := GetPlayItem(ThePlsString);
    ThePlayItem.SelectionType := stAuto;
//    Application.ProcessMessages;
    if (ThePlayItem.ErrorStr = '') then
    begin
      if LocateFileName(ThePlayItem) then
        // πρόσθεσε στο selected list
        AddToSelectedListBox(ThePlayItem)
      else
      begin
        // αν είναι φίλτρο τότε
        if ThePlsString[1] = C_ProgramItemDBFilter then
          // αν δεν βρέθηκε το αρχείο
          if pos(C_ErrorFileNotFound, ThePlayItem.ErrorStr) <> 0 then
            // απενεργοποίησε το file ώστε να μην το επιλέξει ξανά
            if DisableDBTitle(ThePlayItem.TitleCode) then
              LogWrite(liError, C_DisabledSong +
                       ThePlayItem.Artist + ' - ' + ThePlayItem.Song);
      end;
    end
    else
      LogWrite(liError, ThePlayItem.ErrorStr);
  end;
end;

function TForm1.DisableDBTitle(TitleCode : LongInt) : Boolean;
begin
  Result := False;
  if tblTitlesUpd.Locate('TitleCode', TitleCode,[]) then
  begin
    tblTitlesUpd.Edit;
    tblTitlesUpd.FieldByName('Enabled').AsBoolean := False;
    tblTitlesUpd.Post;
    Result := True;
  end;
end;

Function TForm1.GetRandomSongFromFilePack(FilePack : String): String;
Begin
  Result := '';
  if LastFilePackLoaded <> FilePack then
  Begin
    LastFilePackLoaded := FilePack;
    if FileExists(RadioSettings.PlayListsDir + FilePack) then
    Begin
      try
        tmpFilePack.LoadFromFile(RadioSettings.PlayListsDir + FilePack);
      Except
        LogWrite(liError, Format('%s : %s %s' , ['Error loading filepack', RadioSettings.PlayListsDir, FilePack]));
        tmpFilePack.Clear;
      end;
    end
    else
      tmpFilePack.Clear;
  end;

  if tmpFilePack.Count > 0 then
  Begin
//    Randomize;
    Try
      Result := tmpFilePack[RandomRange(0, tmpFilePack.Count-1)];
    except
      on E: Exception do
      begin
        LogWrite(liError, Format('%s [%s] (%d)', ['Get Random Item', StrToIniStr(E.Message), E.HelpContext]) );
        Result := '';
      end;
    end;
  end;

end;

Function TForm1.MakeSpotsFileName(tm:TDateTime):String;
begin
  Result := RadioSettings.TrafficDir + FormatDateTime('yyyymmdd', tm) + '.ads';
end;

procedure TForm1.LoadSpotsToSelected(SelectMode : TSelectionType);     // φόρτωσε τα σποτ στα επιλεγμένα
begin
  While SpotsList1.Items.Count > 0 do
  Try
    LoadSpotToSelected(0, SelectMode);  // it will also delete each item
//    Application.HandleMessage;
  Finally
    MsgListBox.Items.Clear;
    TimeSpotsMustLoad := 0;
  end;
end;

procedure TForm1.LoadSpotToSelected(SpotNo : Integer; SelectMode : TSelectionType);
var
  fn , TheName : String;
begin
  if SpotNo in [0 .. SpotsList1.Items.Count-1] then
  Try
    TheName := ExtractDelimited(1, SpotsList1.Items[SpotNo], [CSep]);
    fn      := ExtractDelimited(2, SpotsList1.Items[SpotNo], [CSep]);
    AddFileToSelected(fn, TheName, SelectMode, ptSpot);
  Finally
    SpotsList1.Items.Delete(SpotNo);
  end;  
end;

Function TForm1.AddToTime(TheTime : TDateTime; TheMinute : Integer) : TDateTime;
var
  hour, Minute, tmp : Word;
begin
  DecodeTime(TheTime, hour, Minute, tmp, tmp);
  Result := Trunc(TheTime) + EncodeTime(Hour, Minute, 0, 0) +
            EncodeTime(0, TheMinute,0, 0);
end;


function TForm1.CheckForSpots(Present1 : TDateTime): Boolean;
var
  i : Integer;
  CheckTime, LoadTime : TDateTime;
begin
  Result := False;
  CheckTime := AddToTime(Present1, RadioSettings.CheckSpotsBefore);
  LoadTime  := AddToTime(Present1, RadioSettings.LoadSpotsBefore);

  if LoadSpots(CheckTime) then
    PageControl1.ActivePage := SpotsTab;

  // αν είναι ώρα για φόρτωμα
  // έλεγξε αν υπάρχουν σποτ που περιμένουν

  if (SpotsList1.Items.Count > 0) and (RadioSettings.PlayMode = pmAuto) then
  Begin
    i := 0;
    while i <= SpotsList1.Items.Count-1 do
    begin
      if LoadTime >= FileDateToDateTime(LongInt(SpotsList1.Items.Objects[i])) then
      begin
        Result := True;
        LoadSpotToSelected(i, stAuto); // και σβήνει το item
      end
      else
        Inc(i);
    end;
    if SpotsList1.Items.Count = 0 then
      MsgListBox.Items.Clear;
  end;
end;

Function TForm1.LoadSpots(TheTime : TDateTime) : Boolean;
var
  fn, RecName, RecFileName, tm, tmp : String;
  i, Count, k  : Integer;
  RecCode : LongInt;
  StrList : TStringList;
  tmpPlayItem : TPlayItem;
  NewPrior, Prior : Integer;
  ShuffleList : TStringList;
begin
  Prior := -1;
  NewPrior := 0;
  ShuffleList := TStringList.Create;
  ShuffleList.Sorted := False;
  fn := MakeSpotsFileName(TheTime);
  result := False;
  if not FileExists(fn) then
    Exit;
  tm := FormatDateTime('hh:mm', TheTime);
  tmp := '';
  Try
    DaysSpots.LoadFromFile(fn);
    i := DaysSpots.IndexOfName(tm);
    if i = -1 then
      Exit;

    tblSpots.Open;

    // βάλε ένα jingle από το spotsIn ===================================
    tmpPlayItem := GetItemFromFilePack('SpotsIn' + C_FilePacksExt);
    if tmpPlayItem.ErrorStr = '' then
      SpotsList1.Items.AddObject(tmpPlayItem.FileName + CSep + tmpPlayItem.FileName, Pointer(DateTimeToFileDate(TheTime)) )
{    else
      LogWrite(liError, tmpPlayItem.ErrorStr) } ;
    // ==================================================================
    Result := True;
    Count := 0;
    Repeat
      // βρες τον κωδικό της διαφήμισης
      RecCode := StrToInt(ExtractDelimited(3, DaysSpots[i], [CSep1, CSep]));
      NewPrior := StrToInt(ExtractDelimited(2, DaysSpots[i], [CSep1, CSep]));
      // βρες το filename από τον κωδικό
      GetSpotNameAndFileName(RecCode, RecName, RecFileName);
      if RecFileName <> '' then
      begin
        // αν αντί για διαφήμιση είναι κάποιο πακέτο αρχείων φόρτωσέ το
        if Pos(C_FilePacksExt, RecFileName) > 0 then
        begin
          StrList := TStringList.Create;
          StrList.Sorted := False;
          Try
            StrList.LoadFromFile(RadioSettings.PlayListsDir + RecFileName);
            For k := 0 to StrList.Count - 1 do
              SpotsList1.Items.AddObject(StrList[k] + CSep + StrList[k], Pointer(DateTimeToFileDate(TheTime)) );
          Finally
            FreeAndNil(StrList);
          end;
        end
        else
          // αν είναι διαφήμιση πρόσθεσέ τη στη λίστα
{          if Prior <> NewPrior then // αν η προτεραιότητα είναι διαφορετική από την προηγούμενη διαφήμιση
          begin
            Prior := NewPrior;
            if ShuffleList.Items.Count > 0 then  // αν υπάρχουν στοιχεία στη λίστα με τις διαφημίσεις με ίδια προτεραιότητα
            begin
              Shuffle(ShuffleList.Items);
              SpotsList1.Items.Addstrings(ShuffleList.Items);
              ShuffleList1.Items.Clear;
            end
            else        }
              SpotsList1.Items.AddObject(RecName + CSep + RecFileName, Pointer(DateTimeToFileDate(TheTime)) );
{          end
          else // αν η προτεραιότητα................
}
        Inc(Count);
      end;
      inc(i);
      if i <= DaysSpots.Count-1 then
        tmp := ExtractDelimited(1, DaysSpots[i], [CSep1]);
    until (i > DaysSpots.Count-1) or (tm <> tmp);

    // Βάλε ένα jingle από το SpotsOut ===================================
    tmpPlayItem := GetItemFromFilePack('SpotsOut' + C_FilePacksExt);
    if tmpPlayItem.ErrorStr = '' then
      SpotsList1.Items.AddObject(tmpPlayItem.FileName + CSep + tmpPlayItem.FileName, Pointer(DateTimeToFileDate(TheTime)) )
{    else
      LogWrite(liError, tmpPlayItem.ErrorStr) };
    // ===================================================================
      MsgListBox.ItemIndex := MsgListBox.Items.Add(
                              Format(C_SpotsWaiting, [tm, Count,
                                     SpotsList1.Items.Count]));
    tblSpots.Close;
  except
    on E: Exception do
      LogWrite(liError, Format('LoadSpots [%s] (%d)', [StrToIniStr(E.Message), E.HelpContext]) );
  end;
  FreeAndNil(Shufflelist);
end;

{------------------------------------------------------------------}
procedure TForm1.MainPrgListDrawItem(Control: TWinControl; Index: Integer;
          Rect: TRect; State: TOwnerDrawState);
var
  R: TRect;
  C: array[0..255] of Char;
  S: string;
begin
  R := Rect;
  MainPrgList.Canvas.FillRect(R);
  with PPlayItem(MainPrgList.Items.Objects[index])^ do
  begin
    R.Right := R.Left + Header1.SectionWidth[0];
    TypesImageList.Draw(MainPrgList.Canvas, R.Left, R.Top, ord(PlayType));

    s := '--';  //PlayerKindName[kind];

    R.Left := R.Left + Header1.SectionWidth[0];
    R.Right:= R.Left + Header1.SectionWidth[1]-2;
    ExtTextOut(MainPrgList.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
              ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);

    S := GetTheName(PPlayItem(MainPrgList.Items.Objects[index])^);

    R.Left := R.Left + Header1.SectionWidth[1];
    R.Right:= R.Left + Header1.SectionWidth[2]-2;
    ExtTextOut(MainPrgList.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
               ETO_OPAQUE, @R, StrPCopy(C, S), System.Length(s), nil);

    s := MyConvertMSecsToString(PlayInfo.Length);

    R.Left := R.Left + Header1.SectionWidth[2];
    R.Right:= R.Left + Header1.SectionWidth[3];
    ExtTextOut(MainPrgList.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
               ETO_OPAQUE, @R, StrPCopy(C, S), System.Length(S), nil);
  end;
end;

procedure TForm1.Header1Sized(Sender: TObject; ASection, AWidth: Integer);
begin
  MainPrgList.Invalidate;
end;

procedure TForm1.DeleteButtonClick(Sender: TObject);
var
  Player:Integer;
begin
  Player := TMultiButton(sender).Tag;
  Player := Player + Shifted - 1;
  DeleteItem(Player);
end;

procedure TForm1.StartButtonClick(Sender: TObject);
var
  Player : Integer;
begin
  Player := TMultiButton(sender).Tag;
  Player := Player + Shifted - 1;
  StartPlayer(Player);
end;

procedure TForm1.StartPlayer(Player:Integer);
var
  i : Integer;
begin
  if PPlayItem(MainPrgList.Items.Objects[Player])^.status in [isPlaying] then
  begin
    TMainPlayer(PPlayItem(MainPrgList.Items.Objects[Player])^.Player).MixCalled := True;
    TMainPlayer(PPlayItem(MainPrgList.Items.Objects[Player])^.Player).PlayFadeOut(RadioSettings.DefaultFadeOut);
  end
  else
  begin
    if PPlayItem(MainPrgList.Items.Objects[Player])^.Status in [isReadyPlay, isPaused] then
      TMainPlayer(PPlayItem(MainPrgList.Items.Objects[Player])^.Player).Play;
  { if an other player is playing
    and AutoMix is checked then fadeOut playing player }
    if RadioSettings.PlayState in [psAutoMix, psPlayNextAutoMix] then
    begin
      i := PlayerPlaying(player); // find player different to the playing one
      if ( i >- 1 ) then
      Begin
        TMainPlayer(PPlayItem(MainPrgList.Items.Objects[i])^.Player).MixCalled := True;
        TMainPlayer(PPlayItem(MainPrgList.Items.Objects[i])^.Player).PlayFadeOut(RadioSettings.DefaultFadeOut);
      end;
    end;
  end;
end;

procedure TForm1.PauseClick(Sender: TObject);
var
  Player : Integer;
begin
  Player := TToolButton(sender).tag;
  Player := Player + Shifted - 1;
  case PPlayItem(MainPrgList.Items.Objects[Player])^.status of
    isPlaying :
      if PPlayItem(MainPrgList.Items.Objects[Player])^.Status = isPlaying then
        TMainPlayer(PPlayItem(MainPrgList.Items.Objects[Player])^.Player).Pause;
    isPaused :
      Begin
        PPlayItem(MainPrgList.Items.Objects[Player])^.Status := isReadyPlay;
//        TMainPlayer(PPlayItem(MainPrgList.Items.Objects[Player])^.Player).PlayItem := PPlayItem(MainPrgList.Items.Objects[Player])^;
        RefreshItemStartButton(Player);
      end;
    isReadyPlay :
      begin
        PPlayItem(MainPrgList.Items.Objects[Player])^.Status := isPaused;
//        TMainPlayer(PPlayItem(MainPrgList.Items.Objects[Player])^.Player).PlayItem := PPlayItem(MainPrgList.Items.Objects[Player])^;
        RefreshItemStartButton(Player);
      end;
  end;
end;

procedure TForm1.FixClick(Sender: TObject);
{var
  Player:Integer;   }
begin
{  Player := TToolButton(sender).tag;
  Player := Player+Shifted-1;          }
end;

procedure TForm1.LoopClick(Sender: TObject);
{var
  Player:Integer;    }
begin
{  Player := TToolButton(sender).tag;
  Player := Player+Shifted-1;            }
end;

procedure TForm1.RepeatClick(Sender: TObject);
{var
  Player:Integer; }
begin
{  Player := TToolButton(sender).tag;
  Player := Player+Shifted-1; }
end;

procedure TForm1.InfoClick(Sender: TObject);
{var
  Player : Integer; }
begin
{  Player := TToolButton(sender).tag;
  Player := Player+Shifted-1; }
end;

procedure TForm1.MoveClick(Sender: TObject);
begin
  MovedItem := TToolButton(sender).tag;
  MovedItem := MovedItem+Shifted-1;
  Screen.Cursor := crDrag;
  Moving := True;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if IsOnAir { or DBSearchThreadActive } then
  begin
    ShowMessage('To close program you must stop all players');
    CanClose := False;
  end
  else
  Begin
    CanClose := True;
  end;  
end;

{
procedure TForm1.HintOnShow(var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);
begin
  if (HintInfo.HintControl = SongLabel1) or
     (HintInfo.HintControl = SongLabel2) or
     (HintInfo.HintControl = SongLabel3) or
     (HintInfo.HintControl = SongLabel4) or
     (HintInfo.HintControl = SongLabel5) then
  begin
    HintStr := TLabel(HintInfo.HintControl).Caption;
    CanShow := True;
  end;
end;
}

procedure TForm1.SpinButton3DownClick(Sender: TObject);
var
  i: Integer;
begin
  i := MainPrgList.Items.Count - CMaxPlayers + 1;
  if i < 0 then
    i := 0;
  if i <> Shifted then
  begin
    shifted := i;
    RefreshAllPanelControls(shifted);
  end;
end;

procedure TForm1.SpinButton3UpClick(Sender: TObject);
begin
  if shifted <> 0 then
  begin
    Shifted := 0;
    RefreshAllPanelControls(0);
  end;  
end;

procedure TForm1.FilesListBoxDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  R: TRect;
  C: array[0..255] of Char;
  S: string;
begin
  R := Rect;
  TListBox(Control).Canvas.FillRect(R);
  s := MyExtractFileName(TListBox(Control).Items[Index]);
  ExtTextOut(TListBox(Control).Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
            ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);
end;

procedure TForm1.FilesListBoxDblClick(Sender: TObject);
begin
  AddFileToSelected(TListBox(Sender).Items[TListBox(Sender).ItemIndex], '', stManual, ptHardDisc);
  PageControl1.ActivePage := SelectedTab;
end;

procedure TForm1.FilesListBoxKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    FilesListBoxDblClick(Sender);
end;

procedure TForm1.AddFileToSelected(Const FileName : String;
                                         TheName  : String;
                                         sType    : TSelectionType;
                                         plType   : TPlayType);
var
  selPlayItem : TPlayItem;
begin
  try
    ClearThePlayItem(selPlayItem);
    SelPlayItem.FileName := FileName;
    if not LocateFileName(SelPlayItem) then
      exit;

    with selPlayItem do
    begin
      SelectionType := sType;
      Kind := pkHD;

      if Artist = '' then
        Artist := PlayTypeName[plType];

      if TheName <> '' then
        Song := TheName
      else
        if Trim(Song) = '' then
          Song := MyExtractFileName(selPlayItem.FileName);

      PlayType := plType;
      PlayInfo.Position := 0;
      if PlayInfo.Volume = 0 then
        PlayInfo.Volume := 100;

      Status   := isUnloaded;
       NextStarted := False;
      ButtonsStatus := [];
      Player   := nil;
      TitleCode:= -1;
      ArtistCode := -1;
    end;
    AddToSelectedListBox(selPlayItem);
  except
    on E: Exception do
      LogWrite(liError, Format('AddFileToSelected [%s] (%d)', [StrToIniStr(E.Message), E.HelpContext]) );
  end;
end;

procedure TForm1.LoadPlayList1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    HardDiscFilesList1.Items.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.SavePlayList1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    HardDiscFilesList1.Items.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.LiveButtonClick(Sender: TObject);
begin
  Case RadioSettings.PlayMode of
    pmAuto   : RadioSettings.PlayMode := pmLive;
    pmLive   : RadioSettings.PlayMode := pmManual;
    pmManual : RadioSettings.PlayMode := pmLive;
  end;
  ChangeAutoButtonsState;
end;

procedure TForm1.AutoButtonClick(Sender: TObject);
begin
  Case RadioSettings.PlayMode of
    pmAuto   : RadioSettings.PlayMode := pmManual;
    pmLive   : RadioSettings.PlayMode := pmAuto;
    pmManual : RadioSettings.PlayMode := pmAuto;
  end;
  ChangeAutoButtonsState;
end;

procedure TForm1.PlayNextButton1Click(Sender: TObject);
begin
  Case RadioSettings.PlayState of
    psNone     : RadioSettings.PlayState := psPlayNext;
    psAutoMix  : RadioSettings.PlayState := psPlayNextAutoMix;
    psPlayNext : RadioSettings.PlayState := psNone;
    psPlayNextAutoMix  : RadioSettings.PlayState := psAutoMix;
  end;
  ChangeButtonsState;
end;

procedure TForm1.AutoMixButtonClick(Sender: TObject);
begin
  Case RadioSettings.PlayState of
    psNone     : RadioSettings.PlayState := psAutoMix;
    psAutoMix  : RadioSettings.PlayState := psNone;
    psPlayNext : RadioSettings.PlayState := psPlayNextAutoMix;
    psPlayNextAutoMix  : RadioSettings.PlayState := psPlayNext;
  end;
  ChangeButtonsState;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  HardDiscFilesList1.Items.Clear;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  if HardDiscFilesList1.ItemIndex > -1 then
    HardDiscFilesList1.Items.Delete(HardDiscFilesList1.ItemIndex);
end;

procedure TForm1.Randomize1Click(Sender: TObject);
var
  i,k:Integer;
begin
  HardDiscFilesList1.Sorted := False;
  HardDiscFilesList1.Visible := False;
  k := HardDiscFilesList1.Items.Count div 2;
  for i := 1 to k do
    HardDiscFilesList1.Items.Exchange(i-1, Random(k*2-1));
  HardDiscFilesList1.Visible := true;
end;

procedure TForm1.Sort1Click(Sender: TObject);
begin
  HardDiscFilesList1.Sorted := True;
end;

{
procedure TForm1.AddSpotsToSelected(fn : String);
var
  i : Integer;
  ts : TStringList;
begin
  ts := TStringList.Create;
  Try
    ts.LoadFromFile(fn);
    for i := 0 to ts.Count-1 do
      AddFileToSelected(ExtractFileName(ts[i]), '', stManual, ptHardDisc);
    ts.Clear;
    MsgListBox.Clear;
    PageControl1.ActivePage := SelectedTab;
  Except
    ts.free;
  end;
end;
}
procedure TForm1.MsgListBoxClick(Sender: TObject);
begin
  LoadSpotsToSelected(stManual);
  MsgListBox.Items.Clear;
  PageControl1.ActivePage := SelectedTab;
end;

procedure TForm1.CueClick(Sender: TObject);
Var
  Player : Integer;
begin
  Player := TToolButton(sender).tag;
  Player := Player + Shifted - 1;
{  if FindFile1.FindFile(PPlayItem(PlayList[Player])^.FileName) then }
  begin
    CueForm1.FileName := PPlayItem(MainPrgList.Items.Objects[Player])^.FileName;
    CueForm1.AutoPlay := RadioSettings.CueAutoPlay;
    CueForm1.XPlayer1.SetOutputName(RadioSettings.CueDevice);
    CueForm1.UseTag := True;
    CueForm1.UseThread := False;
    CueForm1.ShowModal;
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  LogListBox.Items.Clear;
end;

procedure TForm1.OnDirFileFound(Sender : TObject; Var SearchRec : TSearchRec);
begin
  if SelectPageControl.ActivePage = SpotsTab1 then
    TListBox(TGetDirFiles(sender).ObjectTag).Items.Add(PathAddSeparator(CategoriesDir) + SearchRec.Name)
  else
    TListBox(TGetDirFiles(sender).ObjectTag).Items.Add(PathAddSeparator(RadioSettings.AudioFilesDir) + SearchRec.Name);
end;

procedure TForm1.CategoriesList1Click(Sender: TObject);
begin
  CategoriesDir := CategoriesList1.Items[CategoriesList1.ItemIndex];
  CategoriesDir := ExtractDelimited(2, CategoriesDir, [CSep]);
  CategoriesDir := PathAddSeparator(CategoriesDir);
  Try
    GetDirFiles1.ObjectTag := CatFilesList1;
    CatFilesList1.Items.BeginUpdate;
    CatFilesList1.Items.Clear;
    GetDirFiles1.GetDirectoryFiles(CategoriesDir, C_FilesExt);
    CatFilesList1.Items.EndUpdate;
  except
      ShowMessage(C_NoCategoryFiles + CategoriesDir);
  end;
end;

procedure TForm1.FolderMonitor1Change(Sender: TObject);
begin
  CategoriesList1Click(nil);
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
  s := TListBox(Control).Items[Index];
  s := ExtractDelimited(1, s, [CSep]);
  ExtTextOut(TListBox(Control).Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
            ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);
end;

procedure TForm1.ListenButton1Click(Sender: TObject);
Var
  tmpPlayItem : TPlayItem;
begin
  if CatFilesList1.itemIndex < 0 then
    Exit;
  tmpPlayItem.FileName := CatFilesList1.items[CatFilesList1.itemIndex];
  begin
    StatusBar1.Panels[0].Text := '';
    CueForm1.FileName := tmpPlayItem.FileName;
    CueForm1.AutoPlay := RadioSettings.CueAutoPlay;
    CueForm1.XPlayer1.SetOutputName(RadioSettings.CueDevice);
    CueForm1.UseTag := True;
    CueForm1.UseThread := False;
    CueForm1.SearchDirectories := DataModule1.FileFind1.Directories;
    CueForm1.ShowModal;
  end
end;

procedure TForm1.AddDirButton1Click(Sender: TObject);
begin
  JvBrowseFolder1.DisplayName := C_AudioDir;
  JvBrowseFolder1.Directory := RadioSettings.AudioFilesDir;
  if JvBrowseFolder1.Execute then
  begin
    RadioSettings.AudioFilesDir := JvBrowseFolder1.Directory;
    FolderMonitor2Change(nil);
  end;
end;

procedure TForm1.FolderMonitor2Change(Sender: TObject);
begin
  GetDirFiles1.ObjectTag := HardDiscFilesList1;
  HardDiscFilesList1.Items.BeginUpdate;
  HardDiscFilesList1.Items.Clear;
  GetDirFiles1.GetDirectoryFiles(RadioSettings.AudioFilesDir, C_FilesExt);
  HardDiscFilesList1.Items.EndUpdate;
end;

procedure TForm1.ClearPlayListButton1Click(Sender: TObject);
begin
  HardDiscFilesList1.Items.Clear;
//  FolderMonitor2.Active := False;
end;

procedure TForm1.LoadPlayListButton1Click(Sender: TObject);
begin
  OpenDialog1.InitialDir := RadioSettings.PlayListsDir;
  if OpenDialog1.Execute then
  Begin
    HardDiscFilesList1.Items.LoadFromFile(OpenDialog1.FileName);
//    FolderMonitor2.Active := False;
  end;
end;

procedure TForm1.SavePlayListButton1Click(Sender: TObject);
begin
  SaveDialog1.InitialDir := RadioSettings.PlayListsDir;
  if SaveDialog1.Execute then
    HardDiscFilesList1.Items.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.SortedCheck1Click(Sender: TObject);
begin
  HardDiscFilesList1.Sorted := SortedCheck1.Checked;
end;

procedure TForm1.ListenButton2Click(Sender: TObject);
var
  tmpPlayItem : TPlayItem;
begin
  if HardDiscFilesList1.itemIndex < 0 then
    Exit;

  tmpPlayItem.FileName := HardDiscFilesList1.items[HardDiscFilesList1.itemIndex];
  begin
    StatusBar1.Panels[0].Text := '';
    CueForm1.FileName := tmpPlayItem.FileName;
    CueForm1.AutoPlay := RadioSettings.CueAutoPlay;
    CueForm1.XPlayer1.SetOutputName(RadioSettings.CueDevice);
    CueForm1.UseTag := True;
    CueForm1.UseThread := False;
//    CueForm1.SearchDirectories := FileFind2.Directories;
    CueForm1.ShowModal;
  end
end;

procedure TForm1.SelectButton1Click(Sender: TObject);
begin
  if HardDiscFilesList1.ItemIndex >= 0 then
    FilesListBoxDblClick(HardDiscFilesList1);
end;

procedure TForm1.SelectButton2Click(Sender: TObject);
begin
  if CatFilesList1.ItemIndex >= 0 then
    CatFilesList1DblClick(CatFilesList1);
end;

procedure TForm1.ShowOnMessageListBox(Msg : String);
Begin
  MsgListBox.ItemIndex := MsgListBox.Items.Add(msg);
  if MsgListBox.Items.Count > 10 then
    MsgListBox.Items.Delete(0);
End;

// Σβήνει όλα τα τραγούδια που έχουν επιλεγεί αυτόματα
procedure TForm1.DeleteAutoSongsFromList;
var
  i : Integer;
Begin
  i := MainPrgList.Items.Count - 1;
  While i >= 0 do
  Begin
    if (PPlayItem(MainPrgList.Items.Objects[i])^.PlayType <> ptSpot {= ptSong}) and
       (PPlayItem(MainPrgList.Items.Objects[i])^.SelectionType = stAuto) then
    DeleteItem(i);
    Dec(i);
  end;
end;

procedure TForm1.AddProgramEndJingles;
var
  ThePlsString : String;
begin
  if FindThreadActive then
    exit;
  FindThreadActive := True;

  Repeat
    ThePlsString := GetPrgItem1.GetLastItem(CurrentProgramInfo);
    AddItemToList(ThePlsString);
  Until ThePlsString = '';

  FindThreadActive := False;
end;

procedure TForm1.DBThread1Terminated(Sender : TObject);
begin
{  DBThread1.Free;
  DBThread1 := Nil;
  ExecuteButton1.Enabled := True;    }
end;

procedure TForm1.UpdateSongInfo(TitleCode : LongInt);
Var
  NowTime : TDateTime;
  ArtistCode : LongInt;
  Cont : Boolean;
Begin
  if TitleCode = -1 then
    Exit;
  NowTime := Now;
  Cont := False;

  if tblTitlesUpd.Locate('TitleCode', TitleCode, []) then
    Cont := True
  else
  begin
    tblTitlesUpd.Close;
    tblTitlesUpd.Open;
    if tblTitlesUpd.Locate('TitleCode', TitleCode, []) then
      Cont := True;
  end;
  if Cont then  // Βρέθηκε ο τίτλος στο αρχείο
  begin
    Try
      ArtistCode := tblTitlesUpd.FieldByName('ArtistCode').AsInteger;
      tblTitlesUpd.Edit;
      tblTitlesUpd.FieldByName('PlayCounter').AsInteger := tblTitlesUpd.FieldByName('PlayCounter').AsInteger + 1;
      tblTitlesUpd.FieldByName('PlayedLast').AsDateTime := NowTime;
      if tblTitlesUpd.FieldByName('PromoCount').AsInteger > 0 then
      Begin
        tblTitlesUpd.FieldByName('PromoCount').AsInteger := tblTitlesUpd.FieldByName('PromoCount').AsInteger - 1;
        tblTitlesUpd.FieldByName('PlayAgain').AsDateTime := NowTime +
                     tblTitlesUpd.FieldByName('PromoRotation').AsDateTime;
      end
      else
        tblTitlesUpd.FieldByName('PlayAgain').AsDateTime := NowTime +
                     tblTitlesUpd.FieldByName('SongRepeat').AsDateTime;
      tblTitlesUpd.Post;
    Except
      on E: Exception do
        LogWrite(liError, Format('%s (%d)', ['Can not save title info', StrToIniStr(E.Message), E.HelpContext]) );
    end;
    // βρες τώρα τα στοιχεία του καλλιτέχνη
    Cont := False;

    if tblArtistUpd.Locate('ArtistCode', ArtistCode, []) then
      Cont := True
    else
    Begin
      tblArtistUpd.Close;
      tblArtistUpd.Open;
      if tblArtistUpd.Locate('ArtistCode', ArtistCode, []) then
        Cont := True;
    end;
    if Cont then // Βρέθηκε ο καλλιτέχνης στο αρχείο
    Try
      tblArtistUpd.Edit;
      tblArtistUpd.FieldByName('LastPlayed').AsDateTime := NowTime;
      tblArtistUpd.FieldByName('PlayAgain').AsDateTime  := NowTime +
                     tblArtistUpd.FieldByName('Repeat').AsDateTime;
      tblArtistUpd.FieldByName('PlayCount').AsInteger := tblArtistUpd.FieldByName('PlayCount').AsInteger + 1;
      tblArtistUpd.Post;
    Except
      on E: Exception do
        LogWrite(liError, Format('%s (%d)', ['Can not save Artist info', StrToIniStr(E.Message), E.HelpContext]) );
    End;
  end
  else
    LogWrite(liError, C_CanNotFindSong);
end;

procedure TForm1.About1Click(Sender: TObject);
begin
{  WinAbout(Form1.Caption,
           '(C) 1999-2000 (Dimitris Paterakis)' + #13 +
           'Registered to Paterakis D. LTD Iraklion Crete');              }
end;

procedure TForm1.PlayActionExecute(Sender: TObject);
Var
 n : Integer;
begin
  n := FindFirstAvailableToPlay(0);
  if n >- 1 then
    StartPlayer(n);
//    TMainPlayer(PPlayItem(PlayList[n])^.Player).Play;
end;

procedure TForm1.MoveToAirActionExecute(Sender: TObject);
begin
  MoveAllSelectedToMainList(MainPrgList.Items.count);
  PageControl1.ActivePage := OnAirTab;
end;

procedure TForm1.PlayNextActionExecute(Sender: TObject);
begin
  PlayNextButton1Click(nil);
end;

procedure TForm1.FadePlayingActionExecute(Sender: TObject);
begin
  AutoMixButtonClick(nil);
end;

procedure TForm1.StopAirActionExecute(Sender: TObject);
var
  Player : Integer;
begin
  Player := PlayerPlaying(-1);
  if Player > -1 then
    StartPlayer(Player);
end;

procedure TForm1.GetSpotNameAndFileName(RecCode : LongInt; var RecName, RecFileName : String);
var
  Cont : Boolean;
begin
  Cont := False;
  if tblSpots.Locate('Code', RecCode, []) then
{    Cont := True
  else
  Begin
    tblSpots.Close;
    tblSpots.Open;
    if tblSpots.Locate('Code', RecCode, []) then
      Cont := True;
  end;

  if Cont then }
  begin
    RecName     := Trim(tblSpots.FieldByName('Name').AsString);
    RecFileName := Trim(tblSpots.FieldByName('FileName').AsString);
  end
  else
  begin
    RecFileName := '';
    RecName := '';
  end;
end;

procedure TForm1.LiveModeActionExecute(Sender: TObject);
begin
  LiveButtonClick(nil);
end;

procedure TForm1.AutoModeActionExecute(Sender: TObject);
begin
  AutoButtonClick(nil);
end;


procedure TForm1.btnSelect1Click(Sender: TObject);
begin
  if SelectForm.ShowModal = mrOK then
  begin
    if LocateFileName(SelectForm.Info) then
    begin
      AddToSelectedListBox(SelectForm.Info);
      PageControl1.ActivePage := SelectedTab;
    end
    else
      ShowMessage(C_ErrorFileNotFound + SelectForm.Info.FileName);
  end;
end;

Function TForm1.LocateFileName(Var TheItem : TPlayItem): Boolean;
var
  fn : String;
begin
  Result := False;
  StatusBar1.Panels[0].Text := 'Locating file : ' + TheItem.FileName;
  StatusBar1.Update;
  if FileExists(TheItem.FileName) then
    fn := TheItem.FileName
  else
    fn :=  DataModule1.FileFind1.FindFile(TheItem.FileName);
  if fn <> '' then
  begin
    TheItem.FileName := fn;
    Result := True;
    StatusBar1.Panels[0].Text := '';
    StatusBar1.Update;
    TheItem.PlayInfo.Position := 0;
    if TheItem.PlayInfo.Volume = 0 then
      TheItem.PlayInfo.Volume := 100;

    if (Trim(TheItem.Artist) = '') or (Trim(TheItem.Song) = '') or
       (TheItem.PlayInfo.Length = 0) then
    begin
      mp3Tag1.FileName := TheItem.FileName;
      Try
        mp3Tag1.Read;
        if Trim(TheItem.Artist) = '' then
          TheItem.Artist := mp3Tag1.Artist;
        if Trim(TheItem.Song) = '' then
          TheItem.Song := mp3Tag1.Title;
        if Trim(TheItem.Song) = '' then
          TheItem.Song := ExtractFileName(TheItem.FileName);
        if TheItem.PlayInfo.Length = 0 then
          TheItem.PlayInfo.Length := mp3Tag1.Duration;
        if TheItem.PlayInfo.PlayStart = 0 then
          TheItem.PlayInfo.PlayStart := mp3Tag1.PlayStart;
        if TheItem.PlayInfo.FadeIn = 0 then
          TheItem.PlayInfo.FadeIn := mp3Tag1.FadeIn;
        if TheItem.PlayInfo.Intro = 0 then
          TheItem.PlayInfo.Intro := mp3Tag1.Intro;
        if TheItem.PlayInfo.MixPos = 0 then
          TheItem.PlayInfo.MixPos := mp3Tag1.MixPos;
        if TheItem.PlayInfo.FadeOut = 0 then
          TheItem.PlayInfo.FadeOut := mp3Tag1.FadeOut;
        if TheItem.PlayInfo.Volume = 0 then
          TheItem.PlayInfo.Volume := mp3Tag1.Volume;
        if TheItem.PlayInfo.Volume = 0 then
          TheItem.PlayInfo.Volume := 100;
      Except
        TheItem.ErrorStr := 'Exception while processing TagRead';
        LogWrite(liError, TheItem.ErrorStr);
      end;
    end;
  end
  else
  begin
    TheItem.ErrorStr := C_ErrorFileNotFound + TheItem.FileName;
    LogWrite(liError, C_ErrorFileNotFound + TheItem.FileName);
  end;
end;

procedure TForm1.SpotsList1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  R: TRect;
  C: array[0..255] of Char;
  S: string;
begin
  R := Rect;
  SpotsList1.Canvas.FillRect(R);

  R.Right := R.Left + HeaderControl1.Sections[0].Width;

  s := FormatDateTime('ddd hh:mm', FileDateToDateTime(LongInt(SpotsList1.Items.Objects[Index])));

  ExtTextOut(SpotsList1.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
             ETO_OPAQUE, @R, StrPCopy(C, s), System.Length(s), nil);

  s := ExtractDelimited(1, SpotsList1.Items[Index], [CSep]);

  R.Left := R.Left + HeaderControl1.Sections[0].Width;
  R.Right:= R.Left + HeaderControl1.Sections[1].Width;
  ExtTextOut(SpotsList1.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
               ETO_OPAQUE, @R, StrPCopy(C, S), System.Length(s), nil);

  S := ExtractDelimited(2, SpotsList1.Items[Index], [CSep]);

  R.Left := R.Left + HeaderControl1.Sections[1].Width;
  R.Right:= R.Left + HeaderControl1.Sections[2].Width;
  ExtTextOut(SpotsList1.Canvas.Handle, R.Left, R.Top, ETO_CLIPPED or
               ETO_OPAQUE, @R, StrPCopy(C, S), System.Length(s), nil);

end;

procedure TForm1.HeaderControl1SectionResize(HeaderControl: THeaderControl;
  Section: THeaderSection);
begin
  SpotsList1.Invalidate;
end;

Function TForm1.FindSongFromDatabase(BeatFrom, BeatTo, BeatDelta, NowBeat : Integer;
                                     Params : String) : TPlayItem;
var
  FNowTimeA , FNowTimeT : TDateTime;
  FIgnoreArtists, FIgnoreTitles, FSearchPromos, FEnableCategories,
  FEnablePeriods, FSexEnabled, FSubjectEnabled, FOpenerEnabled, FOpener, Found: Boolean;
  FCategories, FInfo : String;
  FSQLBreak : TSQLBreaks;
  FStyle, FPeriodFrom, FPeriodTo,
  FQualityFrom, FQualityTo, FSex, FSubjectCode : Integer;
  RandomRec, RecCount, Percent, GoToRec, k, MinValue : Integer;
  tmpFileName: String;

        { ------------------------------------------------------ }
        procedure GetThreeItemsFromString(s : String; var Name1 : String;
                                          Var DateFrom, DateTo : TDateTime);
        var
          s1 : String;
        begin
          { first section }
          s1 := ExtractDelimited(1, s, [CSep]);
          Name1 := s1;
          { Second Section }
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


        { ------------------------------------------------------ }
        procedure InformUser;
        begin
          StatusBar1.Panels[1].Text := FInfo;
          StatusBar1.Update;
        end; // InformUser

        { ------------------------------------------------------ }
        procedure MakeSearchParameters;
        var
          tmpS: String;
          i : Integer;
          IsOneSelected : Boolean;
        begin
          // πρώτο κομμάτι είναι το style
          FStyle := StrToInt(ExtractDelimited(1, Params, [CSep]));

          // Δεύτερο κομμάτι είναι η κατηγορία
          tmpS := ExtractDelimited(2, Params, [CSep]);

          FEnableCategories := False;
          if tmpS[1] = '1' then // υπάρχει κατηγορία
          Begin
            IsOneSelected := False;
            for i := 2 to 9 do
            Begin
              if tmpS[i] = '1' then
                IsOneSelected := True;
            end;
            FEnableCategories := IsOneSelected;
            FCategories := Copy(tmpS, 2, 8);
          end;

          // τρίτο κομμάτι είναι η περίοδοι
          FEnablePeriods := False;
          tmpS := ExtractDelimited(3, Params, [CSep]);
          if tmpS[1] = '1' then // υπάρχουν περίοδοι
          Begin
            FEnablePeriods := True;
            FPeriodFrom := StrToInt(tmpS[2]);
            FPeriodTo   := StrToInt(tmpS[3]);
          end;

          // το τέταρτο κομμάτι είναι η βαθμολογία
          tmpS := ExtractDelimited(4, Params, [CSep]);
          if tmpS[1] = '1' then // υπάρχει βαθμολογία
          Begin
            FQualityFrom := StrToInt(tmpS[2]);
            FQualityTo   := StrToInt(tmpS[3]);
          end
          else
          Begin
            FQualityFrom := 0;
            FQualityTo   := 9;
          end;

          // ακολουθεί το φύλο
          tmpS := ExtractDelimited(5, Params, [CSep]);
          FSexEnabled := False;
          if tmpS[1] = '1' then
          Begin
            FSexEnabled := True;
            FSex := StrToInt(tmpS[2]);
          end;

          // ακολουθεί το θέμα
          tmpS := ExtractDelimited(6, Params, [CSep]);
          FSubjectEnabled := False;
          if tmpS[1] = '1' then
          Begin
            FSubjectEnabled := true;
            Delete(tmpS,1,1);
            FSubjectCode := StrToInt(tmpS);
          end;

          // opener
          tmpS := ExtractDelimited(7, Params, [CSep]);
          FOpenerEnabled := False;
          if tmpS[1] = '1' then
          begin
            FOpenerEnabled := True;
            FOpener := (tmpS[2] = '1');
          end;
        end;  // MakeSearchParameters

        { ------------------------------------------------------ }
        Function MakeSQL(BeatFrom, BeatTo, BeatsDelta, NowBeat: Integer;
                         Style : Integer; EnableCategories :Boolean;
                         Categories : String;
                         EnablePeriods : Boolean;
                         PeriodFrom, PeriodTo : Integer;
                         QualityFrom,QualityTo : Integer;
                         EnableSex : Boolean;
                         Sex       : Integer;
                         EnableSubject : Boolean;
                         SubjectCode   : Integer;
                         EnableOpener : Boolean;
                         Opener       : Boolean;
                         NowTimeA     : TDateTime;
                         NowTimeT     : TDateTime) : String;
        var
          s, tmp: String;
          i : Integer;
          PFrom, PTo : TDateTime;
        Begin
          s := 'Select A.* , B.* from Artists A, Songs B where (A.ArtistCode = B.ArtistCode) and (B.Style = "' + IntToStr(Style) + '") ';
          if EnableCategories then
          Begin
            s := s + 'and (';
            if Categories[1] = '1' then
              s := s + '(B.Category1 = True) or ';
            if Categories[2] = '1' then
              s := s + '(B.Category2 = True) or ';
            if Categories[3] = '1' then
              s := s + '(B.Category3 = True) or ';
            if Categories[4] = '1' then
              s := s + '(B.Category4 = True) or ';
            if Categories[5] = '1' then
              s := s + '(B.Category5 = True) or ';
            if Categories[6] = '1' then
              s := s + '(B.Category6 = True) or ';
            if Categories[7] = '1' then
              s := s + '(B.Category7 = True) or ';
            if Categories[8] = '1' then
              s := s + '(B.Category8 = True) or ';
            Delete(s, Length(s)-3, 3);
            s := s + ') ';
          end;

          if EnablePeriods then
          Begin
            FPeriodFrom := PeriodFrom;
            FPeriodTo   := PeriodTo;
            GetThreeItemsFromString(PeriodsList[PeriodFrom], tmp, PFrom, PTo);
            s := s + 'and (B.SYear between "' + FormatDateTime('mm/dd/yyyy',PFrom) +
                     '" and "';
            GetThreeItemsFromString(PeriodsList[PeriodTo], tmp, PFrom, PTo);
            s := s + FormatDateTime('mm/dd/yyyy', PTo) + '") ';
          end;

          s := s + 'and (B.Quality between "' + IntToStr(QualityFrom) +
                   '" and "' + IntToStr(QualityTo) + '") ';

          s := s + 'and (B.BPM between "' + IntToStr(BeatFrom) +
                  '" and "' + IntToStr(BeatTo) + '") ';

          s := s + 'and (B.BPM between "' + IntToStr(NowBeat - BeatsDelta) +
                   '" and "' + IntToStr(NowBeat + BeatsDelta) + '") ';

          if EnableSex then
            s := s + 'and (B.Sex = "' + IntToStr(Sex) + '") ';

          if EnableSubject Then
            s := s + 'and (B.Subject = "' + IntToStr(SubjectCode) +
                     '") ';
          if EnableOpener then
          Begin
            s := s + 'and (B.Opener = "';
            if Opener then
              s := s + 'True'
            else
              s := s + 'False';
            s := s + '") ';
          end;

          if not FSearchPromos then
          begin
            s := s + ' and (A.PlayAgain < "' + FormatDateTime('mm/dd/yyyy hh:mm:ss', NowTimeA);
            s := s + '") and (B.PlayAgain < "' + FormatDateTime('mm/dd/yyyy hh:mm:ss', NowTimeT);
            s := s + '") ';
          end
          Else   // search promos
          begin
            s := s + ' and (B.PromoCount > "0")';
            s := s + ' and (B.PlayAgain < "' + FormatDateTime('mm/dd/yyyy hh:mm:ss', NowTimeT);
            s := s + '") ';
          End;

          For i := 0 to MainPrgList.Items.Count-1 do
          begin
            if Not FIgnoreTitles then
              s := s + ' and (B.TitleCode <> "' + IntToStr(PPlayItem(MainPrgList.Items.Objects[i])^.TitleCode) + '")';
            if not FIgnoreArtists then
              s := s + ' and (A.ArtistCode <> "' + IntToStr(PPlayItem(MainPrgList.Items.Objects[i])^.ArtistCode) + '")';
          end;
          s := s + ' and (B.Enabled = "true")';
          s := s + ' Order by B.PlayedLast'; //, A.LastPlayed';

          Result := s;
        End;

        { ------------------------------------------------------ }
        Function FoundSong : Boolean;
        Var
          SQLStr : String;
        Begin
          Result := False;
          Try
            SearchQuery.Close;
            SQLStr := MakeSQL(BeatFrom, BeatTo, BeatDelta, NowBeat, FStyle,
                              FEnableCategories, FCategories,
                              FEnablePeriods, FPeriodFrom, FPeriodTo,
                              FQualityFrom, FQualityTo,
                              FSexEnabled, FSex,
                              FSubjectEnabled, FSubjectCode,
                              FOpenerEnabled, FOpener, FNowTimeA, FNowTimeT);
            SearchQuery.SQL.Clear;
            SearchQuery.SQL.Add(SQLStr);
            SearchQuery.Open;
            if SearchQuery.EOF then
              SearchQuery.Close
            else
              Result := True;
          except
            Result := False;
          end;
        end; // FoundSong


        { ------------------------------------------------------ }
        Function FindSong : Boolean;
        begin
          Result := True;

          FNowTimeA := Now;
          FNowTimeT := FNowTimeA;
          FIgnoreArtists := False;
          FIgnoreTitles  := False;

          FSQLBreak := sbPromos;
          // Πρώτα ψάξε για promo songs
          FSearchPromos := True;
          FInfo := 'Promo Search';
          InformUser;
          MakeSearchParameters;
          if FoundSong then
            Exit;
          FSearchPromos := False;

          // πρώτα χρησιμοποίησε τα φίλτρα ως έχουν
          FSQLBreak := sbOriginal;
          FInfo := 'Default Filters';
          InformUser;
          MakeSearchParameters;
          if FoundSong then
            Exit;

          // εάν συνεχίσει σημαίνει ότι δεν βρέθηκε τραγούδι
          // Τροποποιούμε τα beat
          FSQLBreak := sbBeat;
          FInfo := 'Change BPM/Delta';
          InformUser;
          if BeatFrom >= 30 then
            BeatFrom := BeatFrom - 30
          else
            BeatFrom := 0;
          BeatTo := BeatTo + 30;
          BeatDelta := BeatDelta + 30;
          if FoundSong then
            Exit;

          // εάν συνεχίσει σημαίνει ότι δεν βρέθηκε τραγούδι
          // εάν υπάρχει opener το αγνοούμε
          FSQLBreak := sbOpener;
          if FOpenerEnabled then
          Begin
            FInfo := 'Ignore Opener';
            InformUser;
            FOpenerEnabled := False;
            if FoundSong then
              Exit;
          end;

          // εάν συνεχίσει σημαίνει ότι δεν βρέθηκε τραγούδι
          // Τροποποιούμε το quality to
          FSQLBreak := sbQualityTo;
          if (FQualityTo < 9) then
          Begin
            FInfo := 'Change Quality+1';
            InformUser;
            Inc(FQualityTo);
            if FoundSong then
              Exit;
          end;

          // εάν συνεχίσει σημαίνει ότι δεν βρέθηκε τραγούδι
          // Τροποποίησε την τωρινή ώρα για τον τραγουδιστή
          FSQLBreak := sbArtistTime;
          FInfo := 'Change Artist Time';
          InformUser;
          FNowTimeA := FNowTimeA + 365; // πρόσθεσε ένα χρόνο
          if FoundSong then           // έτσι κι αλλιώς κάνει SQL order by ημερομηνία
            exit;

          // εάν συνεχίσει σημαίνει ότι δεν βρέθηκε τραγούδι
          // Τροποποίησε την τωρινή ώρα  για το τραγούδι
          FSQLBreak := sbTitleTime;
          FInfo := 'Change Title Time';
          InformUser;
          FNowTimeT := FNowTimeT + 365; // πρόσθεσε ένα χρόνο
          if FoundSong then           // έτσι κι αλλιώς κάνει SQL order by ημερομηνία
            exit;

          // εάν συνεχίσει σημαίνει ότι δεν βρέθηκε τραγούδι
          // εάν υπάρχει sex το αγνοούμε
          FSQLBreak := sbSex;
          if FSexEnabled then
          Begin
            FInfo := 'Ignore Sex';
            InformUser;
            FSexEnabled := False;
            if FoundSong then
              Exit;
          end;

          // εάν συνεχίσει σημαίνει ότι δεν βρέθηκε τραγούδι
          // αγνόησε το θέμα
          FSQLBreak := sbSubject;
          if FSubjectEnabled then
          Begin
            FInfo := 'Ignore Subject';
            InformUser;
            FSubjectEnabled := False;
            if FoundSong then
              Exit;
          end;

          // εάν συνεχίσει σημαίνει ότι δεν βρέθηκε τραγούδι
          // αγνόησε τα BeatDelta
          FSQLBreak := sbNoBeat;
          NowBeat   := 150;
          BeatDelta := 150;
          BeatFrom  := 0;
          BeatTo    := 250;
          FInfo := 'Ignore BPM/Delta';
          InformUser;
          if FoundSong then
            Exit;

          // εάν συνεχίσει σημαίνει ότι δεν βρέθηκε τραγούδι
          // Τροποποίησε τις περιόδους
          FSQLBreak := sbChangePeriods;
          if FEnablePeriods then
          begin
            if FPeriodFrom > 0 then
            Begin
              Dec(FPeriodFrom);
              FInfo := 'Change Periods From';
              InformUser;
              if FoundSong then
                Exit;
            end;

            // εάν συνεχίσει σημαίνει ότι δεν βρέθηκε τραγούδι
            if FPeriodTo < 9  then
            Begin
              Inc(FPeriodTo);
              FInfo := 'Change Periods To';
              InformUser;
              if FoundSong then
                Exit;
            end;
          end;

          // εάν συνεχίσει σημαίνει ότι δεν βρέθηκε τραγούδι
          // Αγνόησε τις περιόδους
          FSQLBreak := sbNoPeriods;
          if FEnablePeriods then
          begin
            FInfo := 'Ignore Periods';
            InformUser;
            FEnablePeriods := False;
            if FoundSong then
              Exit;
          end;

          // εάν συνεχίσει σημαίνει ότι δεν βρέθηκε τραγούδι
          // Τροποποιούμε το quality from
          FSQLBreak := sbQualityFrom;
          if FQualityFrom > 1  then
          Begin
            FInfo := 'Change Quality-1';
            InformUser;
            Dec(FQualityFrom);
            if FoundSong then
              Exit;
          end;

          // εάν συνεχίσει σημαίνει ότι δεν βρέθηκε τραγούδι
          // αγνόησε τις υποκατηγορίες
          FSQLBreak := sbCategories;
          if FEnableCategories then
          begin
            FInfo := 'Ignore Categories';
            InformUser;
            FEnableCategories := False;
            if FoundSong then
              Exit;
          end;

          FSQLBreak := sbNoArtists;
          FInfo := 'Ignore Artists';
          InformUser;
          FIgnoreArtists := True;
          if FoundSong then
            Exit;

          FSQLBreak := sbNoTitles;
          FInfo := 'Ignore Titles';
          InformUser;

          FIgnoreTitles := True;
          if FoundSong then
            Exit;

          // του κερατά αν δεν βρει τραγούδι
          FSQLBreak := sbNoFound;
          Result := False;
        end; // FindSong

begin
  DBSearchThreadActive := True;
  SearchQuery.Close;
  Found := FindSong;
  FInfo := '';
  InformUser;
  MinValue := MaxInt;
  GoToRec := 0;
  if Found then
  Begin
    if (Not dsSearch.DataSet.EOF) then
    Begin
      StatusBar1.Panels[0].Text := 'Processing data';
      StatusBar1.Update;

      RecCount := SearchQuery.RecordCount;
      if RecCount > CRandomMax then     // άλλαξε αυτή τη τιμή
        RecCount := CRandomMax;         // για αλλαγή στο random

      if GoToRandomRec <> 0 then
      begin
//        Randomize;
        GoToRec := RandomRange(0, RecCount);
      end
      else
      begin
        { **** find the song with less played times }
        dsSearch.DataSet.First;
        for k := 1 to RecCount do
        begin
          if dsSearch.DataSet.FieldByName('PlayCounter').AsInteger < MinValue then
          begin
            MinValue := dsSearch.DataSet.FieldByName('PlayCounter').AsInteger;
            GoToRec := k;
          end;
          dsSearch.DataSet.Next;
        end;
      end;

      Inc(GoToRandomRec);
      if GoToRandomRec >= 4 then  // 4 random και 1 με το λιγότερο παίξιμο 
        GoToRandomRec := 0;

      dsSearch.DataSet.First;
      for k := 2 to GoToRec do // go to the record with less played times
        dsSearch.DataSet.Next;

      if dsSearch.DataSet.EOF then   // just in case
        dsSearch.DataSet.First;

      { **** ------------------------------------------- }

      LastBeat := dsSearch.DataSet.FieldByName('BPM').AsInteger;
      StatusBar1.Panels[0].Text := '';

      try
        with Result do
        begin
          Kind     := pkHD;
//          FileName := fn;
          Artist   := dsSearch.DataSet.FieldByName('Name').AsString;
          case FSQLBreak of
            sbPromos : Artist := Format('*P %s',[Artist]);
            sbOriginal : ;
          else
            Artist := Format('*%d %s', [Ord(FSQLBreak), Artist]);
          end;
          Song     := dsSearch.DataSet.FieldByName('Title').AsString;
          PlayInfo.Length   := dsSearch.DataSet.FieldByName('SLength').AsInteger;
          PlayInfo.PlayStart:= dsSearch.DataSet.FieldByName('Start').AsInteger;
          PlayType          := ptSong;
          PlayInfo.MixPos   := dsSearch.DataSet.FieldByName('MixPosition').AsInteger;
          PlayInfo.Position := 0;
          PlayInfo.Intro    := dsSearch.DataSet.FieldByName('Intro').AsInteger;
          PlayInfo.FadeIn   := dsSearch.DataSet.FieldByName('FadeIn').AsInteger;
          PlayInfo.FadeOut  := dsSearch.DataSet.FieldByName('FadeOut').AsInteger;
          PlayInfo.Volume   := dsSearch.DataSet.FieldByName('Volume').AsInteger;
          if PlayInfo.Volume = 0 then
            PlayInfo.Volume := 100;
          Status            := isUnloaded;
          NextStarted       := False;
          ButtonsStatus     := [];
          Player            := nil;
          StartMode         := smNormal;
          TitleCode         := dsSearch.DataSet.FieldByName('TitleCode').AsInteger;
          ArtistCode        := dsSearch.DataSet.FieldByName('ArtistCode').AsInteger;
          Beat              := dsSearch.DataSet.FieldByName('BPM').AsInteger;
          ArtistLastPlayed  := dsSearch.DataSet.FieldByName('LastPlayed').AsDateTime;
          TitleLastPlayed   := dsSearch.DataSet.FieldByName('PlayedLast').AsDateTime;
        end;

        Result.FileName := dsSearch.DataSet.FieldByName('FileName').AsString;
      except
        Result.ErrorStr := C_ErrorProcessingFilteredSong;
      end;
    end
    else
      Result.ErrorStr := Format(C_CanNotFindFilteredSong, [ord(FSQLBreak), 'EOF']);
  end
  else
    Result.ErrorStr := Format(C_CanNotFindFilteredSong, [ord(FSQLBreak), 'NotFound']);

  SearchQuery.Close;
  DBSearchThreadActive := False;

  if Result.ErrorStr <> '' then
  begin
    LogWrite(liWarning, 'Closing and Opening Files because of Errors');
    SessionS.Close;
    DataBaseS.Close;
    SessionS.Open;
    DatabaseS.Open;
{
    Application.ProcessMessages;
    CloseDatabaseFiles;
    Application.ProcessMessages;
    CloseSessions;
    Application.ProcessMessages;
    OpenSessions;
    Application.ProcessMessages;
    OpenDatabaseFiles; }
    Inc(ErrorCount);
    if ErrorCount > 5 then
    begin
      RestartProgram;
    end;
  end
  else
    ErrorCount := 0;

  StatusBar1.Panels[0].Text := '';
end;

procedure Tform1.RestartProgram;
var
  tmpFileName: String;
begin
  tmpFileName := ExtractFilePath(Application.ExeName) + 'sos.bat';
  if FileExists(tmpFileName) then
  begin
    ShellExecute(Application.Handle, nil, pChar(tmpFileName), nil, nil, SW_NORMAL);
//        ShowMessage(SysErrorMessage(GetLastError));
    Halt; // better stop playing than play rubish
  end;
end;

procedure TForm1.AppException(Sender: TObject; E: Exception);
begin
  LogWrite(liError, Format('Application Exception [%s] (%d)', [StrToIniStr(E.Message), E.HelpContext]) );
  RestartProgram;
end;

procedure TForm1.Register1Click(Sender: TObject);
begin
  //RegForm1.ShowModal;
end;

procedure TForm1.JvCaptionButton1Click(Sender: TObject);
begin
  LoadDataFiles;
  DataModule1.FileFind1.BuildFileList;
end;

procedure TForm1.CatFilesList1DblClick(Sender: TObject);
begin
  AddFileToSelected(TListBox(Sender).Items[TListBox(Sender).ItemIndex], '', stManual, ptHardDisc);
  PageControl1.ActivePage := SelectedTab;
end;

procedure TForm1.JvDragDrop1Drop(Sender: TObject; Pos: TPoint;
  Value: TStrings);
begin
  HardDiscFilesList1.Items.AddStrings(Value);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
  tmpPlayItem : TPlayItem;
  Node: PVirtualNode;
  ns: TNameSpace;
begin
  Node := VET2.GetFirstSelected;
  if VET2.ValidateNamespace(Node, NS) then
  begin
    tmpPlayItem.FileName := ns.NameForParsing;
    if ExtractFileExt(tmpPlayItem.FileName) = '.mp3' then
    begin
      StatusBar1.Panels[0].Text := '';
      CueForm1.FileName := tmpPlayItem.FileName;
      CueForm1.AutoPlay := RadioSettings.CueAutoPlay;
      CueForm1.XPlayer1.SetOutputName(RadioSettings.CueDevice);
      CueForm1.UseTag := True;
      CueForm1.UseThread := False;
//    CueForm1.SearchDirectories := FileFind2.Directories;
      CueForm1.ShowModal;
    end;
  end
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
var
  Node: PVirtualNode;
  ns: TNameSpace;
  FName: String;
begin
  Node := VET2.GetFirstSelected;
  if VET2.ValidateNamespace(Node, NS) then
  begin
    FName := ns.NameForParsing;
    if ExtractFileExt(FName) = '.mp3' then
    begin
      AddFileToSelected(FName, '', stManual, ptHardDisc);
      PageControl1.ActivePage := SelectedTab;
    end;
  end;
end;

end.
