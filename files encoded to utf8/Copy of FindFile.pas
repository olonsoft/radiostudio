unit FindFile;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

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
    procedure ScanDir(Dir: String);
  public
    { Public declarations }
    property Directories : TStringList read fDirs write fDirs;
    property ScanSubDir : Boolean read fScanSubDir write fScanSubDir;
    property Searching  : Boolean read FSearching;
    procedure AddDir(Const DirName : String);
    function FindOneFile(Const Path:String; Const FileName : String; Const SubDir:Boolean): String;
    function FindFile(Const AFilename: String):String;
    procedure BuildFileList;
    constructor Create;
    destructor Destroy; override;
  published
    property FilesList: TStringList read FFilesList;
  end;

implementation

uses
  JclFileUtils;

constructor TFindFile.Create;
begin
  inherited Create;
  fDirs       := TStringList.Create;
  fScanSubDir := True;
  FSearching  := False;
  FFilesList := TStringList.Create;
end;

destructor TFindFile.Destroy;
begin
  FFilesList.Free;
  fDirs.free;
  inherited Destroy;
end;

procedure TFindFile.AddDir(const DirName : String);
begin
  if fDirs.IndexOf(DirName) = -1 then
    fDirs.Add(DirName);
end;

function TFindFile.FindOneFile(Const Path : String; Const FileName : String; Const SubDir:Boolean): String;
var
  SR         : TSearchRec;
  FindResult : Integer;
  tmpPath    : String;
begin
  Result := '';
  tmpPath := PathAddSeparator(Path);
  if FindFirst(tmpPath + FileName, faAnyFile
                     {+ faHidden + faSysFile + faReadOnly} , SR) = 0 then
    Result := tmpPath + SR.Name;
  SysUtils.FindClose(SR);

  if SubDir and (Result = '') then
  begin
    FindResult := FindFirst(tmpPath + '*.*', faDirectory, SR);
    While (FindResult = 0) and (Result = '') do
    Begin
      if ((SR.Attr and faDirectory) <> 0) and (SR.Name[1] <> '.') then
        Result := FindOneFile(tmpPath + SR.Name, FileName, SubDir);
      if Result = '' then
        FindResult := FindNext(SR);
    end;
    SysUtils.FindClose(SR);
  end;
end;


Function TFindFile.FindFile(Const AFileName: String) : String;
var
  i : Integer;
begin
  FSearching := True;
  if FFilesList.Count = 0 then
  begin
    BuildFileList;
  end;

  Result := '';
  i := FFilesList.IndexOfName(AFileName);
  if i >= 0 then
  begin
    Result := FFilesList.ValueFromIndex[i] + AFileName;
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
      Result := FindOneFile(fDirs[i], AFileName, fScanSubDir);
      if Result = '' then
        inc(i);
    end;
    if Result <> '' then
    begin
      AddFileToFileList(result);
    end;
  end;
  FSearching := False;
end;

procedure TFindFile.AddFileToFileList(theFile: String);
var
  aName, aPath: String;
begin
  aName := ExtractFileName(theFile);
  aPath := ExtractFilePath(theFile);
  FFilesList.Add(aName + '=' + aPath);
end;

procedure TFindFile.BuildFileList;
var
  i: Integer;
begin
  FilesList.Clear;
  for i := 0 to FDirs.Count-1 do
  begin
    ScanDir(FDirs[i]);
  end;
end;

procedure TFindFile.ScanDir(dir: String);
var
  sr: TSearchRec;
begin
  dir := PathAddSeparator(dir);
  if FindFirst(dir + '*.mp3', faAnyFile, SR) = 0 then
  repeat
    AddFileToFileList(dir + sr.Name);
  until FindNext(sr) <> 0;
  SysUtils.FindClose(sr);

  if FindFirst(dir + '*.*', faDirectory, sr) = 0 then
  repeat
    if ((SR.Attr and faDirectory) <> 0) and (SR.Name[1] <> '.') then
        ScanDir(dir + SR.Name);
  Until FindNext(sr) <> 0;
  SysUtils.FindClose(SR);
end;


end.
