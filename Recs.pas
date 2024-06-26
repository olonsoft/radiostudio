unit Recs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ExtCtrls, Mask, TimeLabel, FindFile, DBCtrls,
  Db, Grids, DBGrids, DBTables, Menus, SettingsR, JvExExtCtrls,
  JvComponent, JvPanel;

type
  TForm1 = class(TForm)
    Panel1: TJvPanel;
    Panel2: TJvPanel;
    OpenDialog1: TOpenDialog;
    tblAllSpots: TTable;
    tblSpots: TTable;
    tblKinds: TTable;
    dsAllSpots: TDataSource;
    dsSpots: TDataSource;
    dsKinds: TDataSource;
    Panel4: TJvPanel;
    Panel3: TJvPanel;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Panel5: TJvPanel;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    ShowAllCheck1: TCheckBox;
    Panel6: TJvPanel;
    DBGrid1: TDBGrid;
    LoadFileBtn: TSpeedButton;
    tblSpotsCode: TIntegerField;
    tblSpotsType: TIntegerField;
    tblSpotsName: TStringField;
    tblSpotsLength: TIntegerField;
    tblSpotsFileName: TStringField;
    tblSpotsSpotsCount: TIntegerField;
    tblSpotsProgramFrom: TDateField;
    tblSpotsProgramTo: TDateField;
    tblSpotsScheduleDate: TDateTimeField;
    tblSpotsCustomerCode: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tblSpotsBeforeInsert(DataSet: TDataSet);
    procedure tblSpotsBeforePost(DataSet: TDataSet);
    procedure tblSpotsAfterScroll(DataSet: TDataSet);
    procedure tblKindsBeforeInsert(DataSet: TDataSet);
    procedure tblKindsBeforePost(DataSet: TDataSet);
    procedure tblKindsAfterScroll(DataSet: TDataSet);
    procedure tblKindsBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure LoadFileBtnClick(Sender: TObject);
    procedure ShowAllCheck1Click(Sender: TObject);
    procedure tblSpotsAfterPost(DataSet: TDataSet);
    procedure tblKindsAfterPost(DataSet: TDataSet);

  private
    { Private declarations }
    Function GetNewRecCode: LongInt;
    Function GetNewKindCode : LongInt;

  public
    { Public declarations }
    EXEDir : String;
    RecCode    : LongInt;
    KindCode   : LongInt;
    Function GetName(Code : LongInt): String;
    Function GetIntLength(Code : LongInt) : LongInt;
    Function GetLength(Code : LongInt) : String;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

Uses
  MyLibrary, CueForm, TrafficForm, JvFileUtil, dbiProcs, ResStringsU;

Var
  FSortColumn : Integer = 0;
  FSortForward : Boolean = True;
  FindFile1    : TFindFile;
  tmpDir1      : String;

var
  OldWindowProc : Pointer; {Variable for the old windows proc}
  MyMsg : DWord; {custom systemwide message}

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
begin
  try
    FindFile1.Directories.LoadFromFile(NormalDir(RadioSettings.LocalDataDir) + C_SearchDirsFile);
    OpenDialog1.InitialDir := RadioSettings.AudioFilesDir;
    CueForm1.AudioCard := RadioSettings.CueDevice;
    CueForm1.AutoPlay := RadioSettings.CueAutoPlay;
    CueForm1.SetProperties;
  except
  end;
  ShowAllCheck1Click(nil);
end;

procedure TForm1.FormCreate(Sender: TObject);
Var
  tmpS : String;
begin
 {Register a custom windows message}
  MyMsg := RegisterWindowMessage('Recordings');
 {Set form1's windows proc to ours and remember the old window proc}
  OldWindowProc := Pointer(SetWindowLong(Form1.Handle,
                                         GWL_WNDPROC,
                                         LongInt(@NewWindowProc)));

  FindFile1 := TFindFile.Create;
  Try
    LoadSettings;
  except
  end;

  tmpS := ExtractFilePath(Application.ExeName);
  try
    tmpDir1 := tmpS + MyExtractFileName(Application.ExeName) + '-01.tmp';
    ForceDirectories(tmpDir1);
    ClearDir(tmpDir1, False);
    Session.NetFileDir := RadioSettings.NetDir;
    Session.PrivateDir := tmpDir1;
    Session.Active := True;
  except
    ShowMessage(C_ErrorCanNotCreateTmpDir + tmpDir1);
  end;
  tblAllSpots.DatabaseName := RadioSettings.DBAlias;
  tblSpots.DatabaseName    := RadioSettings.DBAlias;
  tblKinds.DatabaseName    := RadioSettings.DBAlias;
  tblAllSpots.Open;
  tblSpots.Open;
  tblKinds.Open;

//  SplashScreen.Release;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FindFile1.Free;
  tblAllSpots.Close;
  tblSpots.Close;
  tblKinds.Close;
  Session.Active := False;
  ClearDir(tmpDir1, True);
 {Set form1's window proc back to it's original procedure}
  SetWindowLong(Form1.Handle,
                GWL_WNDPROC,
                LongInt(OldWindowProc));
end;



procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if (dsSpots.State <> dsBrowse) or (dsKinds.State <> dsBrowse) then
    ShowMessage(C_DatabaseInEditMode)
  else
  begin
    TrafficForm1.RecLabel1.Caption := tblSpots.FieldByName('Name').AsString;
    TrafficForm1.RecCode := RecCode;
    TrafficForm1.ShowModal;
  end;  
end;

Function TForm1.GetNewRecCode: LongInt;
var
  i : LongInt;
  Found : Boolean;
begin
  i := 0;
  Found := False;
  While not Found do
  begin
    if tblAllSpots.Locate('Code', i, []) then
    begin
      inc(i);
      tblAllSpots.Next;
    end
    else
      Found := True;
  end;
  Result := i;
end;

Function TForm1.GetNewKindCode : LongInt;
var
  i : LongInt;
  Found : Boolean;
begin
  i := 0;
  Found := False;
  While not Found do
  begin
    if tblKinds.Locate('Code', i, []) then
      inc(i)
    else
      Found := True;
  end;
  Result := i;
end;

procedure TForm1.tblSpotsBeforeInsert(DataSet: TDataSet);
begin
  RecCode := GetNewRecCode;
end;

procedure TForm1.tblSpotsBeforePost(DataSet: TDataSet);
begin
  tblSpots.FieldByName('Code').AsInteger := RecCode;
  tblSpots.FieldByName('Type').AsInteger := tblKinds.FieldByName('Code').AsInteger;
end;

procedure TForm1.tblSpotsAfterScroll(DataSet: TDataSet);
begin
  if tblSpots.State = dsBrowse then
  begin
    RecCode := tblSpots.FieldByName('Code').AsInteger;
  end;
end;

procedure TForm1.tblKindsBeforeInsert(DataSet: TDataSet);
begin
  KindCode := GetNewKindCode;
end;

procedure TForm1.tblKindsBeforePost(DataSet: TDataSet);
begin
  tblKinds.FieldByName('Code').AsInteger := KindCode;
end;

procedure TForm1.tblKindsAfterScroll(DataSet: TDataSet);
begin
  if tblKinds.State = dsBrowse then
  begin
    KindCode := tblKinds.FieldByName('Code').AsInteger;
  end;
end;

procedure TForm1.tblKindsBeforeDelete(DataSet: TDataSet);
begin
  if tblAllSpots.Locate('Type', KindCode, []) then
  begin
    ShowMessage(C_CanNotDeleteCategory);
    SysUtils.Abort;
  end;
end;

Function TForm1.GetName(Code : LongInt): String;
begin
  if tblAllSpots.Locate('Code', Code, []) then
    Result := tblAllSpots.FieldByName('Name').AsString
  else
    Result := '';
end;


Function TForm1.GetIntLength(Code : LongInt) : LongInt;
begin
  if tblAllSpots.Locate('Code', Code, []) then
    Result := tblAllSpots.FieldByName('Length').AsInteger
  else
    Result := 0;
end;

Function TForm1.GetLength(Code : LongInt) : String;
begin
  Result := MyConvertMSecsToString(GetIntLength(Code));
end;

procedure TForm1.DBGrid1EditButtonClick(Sender: TObject);
begin
  OpenDialog1.FileName := tblSpots.FieldByName('FileName').AsString;
  if OpenDialog1.Execute then
  begin
    tblSpots.Edit;
    tblSpots.FieldByName('FileName').AsString := ExtractFileName(OpenDialog1.FileName);
    tblSpots.Post;
  end;
end;

procedure TForm1.LoadFileBtnClick(Sender: TObject);
var
  fn : String;
begin
  fn := FindFile1.FindFile(tblSpots.FieldByName('FileName').AsString);
  if fn <> '' then
  Begin
    CueForm1.FileName := fn;
    if CueForm1.ShowModal = mrOK then
    begin
      tblSpots.Edit;
      tblSpots.FieldByName('Length').AsInteger := CueForm1.PlayInfo.Length;
      tblSpots.Post;
    end;
  end;
end;

procedure TForm1.ShowAllCheck1Click(Sender: TObject);
begin
  if ShowAllCheck1.Checked then
  begin
    tblSpots.MasterSource := nil;
    tblSpots.MasterFields := '';
  end
  else
  begin
    tblSpots.MasterSource := dsKinds;
    tblSpots.MasterFields := 'Code';
  end;
end;

procedure TForm1.tblSpotsAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tblSpots.Handle);
end;

procedure TForm1.tblKindsAfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(tblKinds.Handle);
end;

begin
 {Tell Delphi to hide it's hidden application window for now to avoid}
 {a "flash" on the taskbar if we halt due to another instance}
  ShowWindow(Application.Handle, SW_HIDE);
end.
