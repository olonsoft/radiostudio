unit FindFile;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;
{
const
  UM_INFOMESSAGE = WM_USER + 23;
}
type
  TFindFile = class
  private
    { Private declarations }
    fScanSubDir : Boolean;
    fDirs       : TStringList;
    FSearching  : Boolean;
    FFilesList  : TStringList;
  private
    procedure AddFileToFileList(theFile: String);
//   procedure SendNotification(const s: String);
  public
    { Public declarations }
    property Directories : TStringList read fDirs write fDirs;
    property ScanSubDir : Boolean read fScanSubDir write fScanSubDir;
    property Searching  : Boolean read FSearching;
    procedure AddDir(Const DirName : String);
    Function Search(Dir, FileName: String): String;
    function FindFile(FileName: String): String;
    procedure BuildFileList;
    constructor Create;
    destructor Destroy; override;
  published
    property FilesList: TStringList read FFilesList;
  end;

implementation

uses
  JclFileUtils;

//------------------------------------------------------------------------------

constructor TFindFile.Create;
begin
  inherited Create;
  fDirs       := TStringList.Create;
  fScanSubDir := True;
  FSearching  := False;
  FFilesList  := TStringList.Create;
end;

//------------------------------------------------------------------------------

destructor TFindFile.Destroy;
begin
  FFilesList.Free;
  fDirs.free;
  inherited Destroy;
end;

//------------------------------------------------------------------------------

procedure TFindFile.AddDir(const DirName : String);
begin
  if fDirs.IndexOf(DirName) = -1 then
    fDirs.Add(DirName);
end;

//------------------------------------------------------------------------------

procedure TFindFile.AddFileToFileList(theFile: String);
var
  aName, aPath: String;
begin
  aName := ExtractFileName(theFile);
  aPath := ExtractFilePath(theFile);
  FFilesList.Add(aName + '=' + aPath);
end;

//------------------------------------------------------------------------------

procedure TFindFile.BuildFileList;
begin
  FilesList.Clear;
  FindFile('*.mp3');
end;

//------------------------------------------------------------------------------

Function TFindFile.Search(Dir, FileName: String): String;
var
  sr: TSearchRec;
begin
  Result := '';
  dir := PathAddSeparator(dir);
//  SendNotification(dir);
  if FindFirst(dir + FileName, faAnyFile, SR) = 0 then
  repeat 
    if FileName = '*.mp3' then
      AddFileToFileList(dir + sr.Name)
    else
      Result := dir + sr.Name;
  until (FindNext(sr) <> 0) or (Result <> '');
  SysUtils.FindClose(sr);
  
  if (FileName = '*.mp3') or (Result = '') then
  begin
    if FindFirst(dir + '*.*', faDirectory, sr) = 0 then
    repeat
      if ((sr.Attr and faDirectory) <> 0) and (sr.Name[1] <> '.') then
        Result := Search(dir + sr.Name, FileName);        
    until (FindNext(sr) <> 0) or (Result <> '');
    SysUtils.FindClose(sr);
  end;
end;

//------------------------------------------------------------------------------
       
Function TFindFile.FindFile(FileName: String): String;
var
  i: Integer;
begin
  FSearching := True;
  Result := '';
  if FFilesList.Count = 0 then // build file list
  begin
    for i := 0 to FDirs.Count-1 do
      Search(fDirs[i], '*.mp3');
  end;

  if FileName <> '*.mp3' then
  begin
    i := FFilesList.IndexOfName(FileName);
    if i >= 0 then
    begin
      Result := FFilesList.ValueFromIndex[i] + FileName;
      if Not FileExists(Result) then
      begin
        FFilesList.Delete(i);
        Result := '';
      end;
    end;

    if Result = '' then
    begin
      i := 0;
      Result := '';
      while (i <= fDirs.Count - 1) and (Result = '') do
      begin
        Result := Search(fDirs[i], FileName);
        if Result = '' then
          inc(i);
      end;
      if Result <> '' then
      begin
        AddFileToFileList(result);
      end;
    end;
  end;
  FSearching := False;
end;

//------------------------------------------------------------------------------
{
procedure TFindFile.SendNotification(const s: String);
var
  p: PChar;
begin
  p := StrNew(Pchar(S));
  If not PostMessage( Application.MainForm.Handle, UM_INFOMESSAGE, 0, LPARAM(p) ) Then
    StrDispose( p ); // post failed, receiver queue may be full
end;
}
//------------------------------------------------------------------------------

end.
