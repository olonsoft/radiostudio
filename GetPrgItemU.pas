unit GetPrgItemU;

interface

uses
  Windows, Messages, SysUtils, Classes;

Type
  TProgramInfo = Record
    Time     : TDateTime;
    PlayList : String;
    PlsFileTime : TDateTime;
    Position : Integer;
    BeatFrom, BeatTo, BeatDelta, Duration : Integer;
    AutoRepeat : Boolean;
  end;

  TGetPrgItem = Class
  private
    FProgramFile : String;
    FProgram     : TStringList;
    FFileTime    : TDateTime;
    FPlayList    : TStringList;
    FPlayListName : String;
    FPlayListTime : TDateTime;
    FPlayListsDir : String;
    Function LoadPlayList(var ThePrgInfo : TProgramInfo) : Boolean;
  public

    property ProgramFile : String read FProgramFile Write FProgramFile;
    property PlayListsDir : String read FPlayListsDir write FPlayListsDir;
    Function FindNewProgram(TheTime : TDateTime; Var ThePrgInfo : TProgramInfo) : Boolean;
    Function GetItem(Var ThePrgInfo : TProgramInfo) : String;
    Function GetLastItem(Var ThePrgInfo : TProgramInfo) : String;
    procedure ClearProgramInfo(Var ThePrgInfo : TProgramInfo);
    procedure CopyProgramInfo(Src: TProgramInfo; var Dest: TProgramInfo);
    constructor Create;
    Destructor Destroy; override;
  end;

implementation

uses
  SettingsR, MyLibrary;

constructor TGetPrgItem.Create;
begin
  inherited Create;
  FProgram := TStringList.Create;
  FProgram.Sorted := True;
  FPlayList := TStringList.Create;
  FPlayListTime := 0;
  FPlayListName := '';
  FFileTime := 0;
end;

destructor TGetPrgItem.Destroy;
begin
  FreeAndNil(FPlayList);
  FreeAndNil(FProgram);
  inherited Destroy;
end;

procedure TGetPrgItem.ClearProgramInfo(Var ThePrgInfo : TProgramInfo);
begin
  with ThePrgInfo do begin
    Time        := 0;
    PlayList    := '';
    PlsFileTime := 0;
    Position    := 0;
    BeatFrom    := 0;
    BeatTo      := 0;
    BeatDelta   := 0;
    Duration    := 0;
    AutoRepeat  := True;
  end;
end;

Function TGetPrgItem.FindNewProgram(TheTime : TDateTime; Var ThePrgInfo : TProgramInfo) : Boolean;
Var
  tmpTime    : TDateTime;
  i          : Integer;
  DayTimeStr : String;
  s          : String;
  tmpInfo    : TProgramInfo;
begin
  // Τσέκαρε αν το πρόγραμμα είναι άδειο
  Result := False;
  s := '';
  Try
    tmpTime := FileDateToDateTime( FileAge(FProgramFile) );
    { αν έχει γίνει αλλαγή στο αρχείο προγράμματος
      φόρτωσέ το από την αρχή }
    if (FFileTime = 0) or (tmpTime <> FFileTime) then
    begin
      FFileTime := tmpTime;
      FProgram.LoadFromFile(FProgramFile);
    end;
  except
//      ShowMessage('Δεν υπάρχει το αρχείο προγράμματος');
    ThePrgInfo.PlayList := '';
    Exit;
  end;

  // βρες ποιο πρόγραμμα αντιστοιχεί στην τωρινή ώρα
  DayTimeStr := IntToStr(DayOfWeek(TheTime)-1) + CSep +
                FormatDateTime('hh:mm', TheTime);

  if FProgram.Count-1 > 0 then
  begin
    i := 0;
    While i <= FProgram.Count-1 do
    begin
      if Copy(FProgram[i], 1, 7) <= DayTimeStr then
        s := FProgram[i];
  {    else
        if s = '' then
          s := FProgram[i]; }
      inc(i);
    end;
    if s = '' then
      s := FProgram[FProgram.Count-1];
  end;    

  //εάν δεν βρέθηκε πρόγραμμα exit
  if s = '' then
  begin
    ThePrgInfo.PlayList := '';
    Exit;
  end;
    
  tmpInfo.PlayList := ExtractDelimited(3, s, [CSep, CSep1]);
  tmpInfo.Time := StrToInt(s[1]) + EncodeTime( StrToInt(Copy(s, 3, 2)),
                                               StrToInt(Copy(s, 6, 2)),
                                               0, 0);

  tmpInfo.PlsFileTime := FileDateToDateTime( FileAge(FPlayListsDir + tmpInfo.PlayList) );

  // αν το playlist που βρέθηκε είναι διαφορετικό από το τρέχον
  if (tmpInfo.Time <> ThePrgInfo.Time) or
     (tmpInfo.PlayList <> ThePrgInfo.PlayList) or
     (tmpInfo.PlsFileTime <> ThePrgInfo.PlsFileTime) then
     begin
       Result := LoadPlayList(tmpInfo); // αν όλα πήγαν καλά στο φόρτωμα του νέου playlist
       if Result then
         ThePrgInfo := tmpInfo; // δώσε τις πληροφορίες από το νέο playlist
     end;
end;

Function TGetPrgItem.LoadPlayList(var ThePrgInfo : TProgramInfo) : Boolean;
begin
  Try
    FPlaylist.LoadFromFile(FPlayListsDir + ThePrgInfo.PlayList);
    FPlayListName := ThePrgInfo.PlayList;
    ThePrgInfo.BeatFrom := StrToInt(ExtractDelimited(1, FPlayList[0], [CSep]));
    ThePrgInfo.BeatTo   := StrToInt(ExtractDelimited(2, FPlayList[0], [CSep]));
    ThePrgInfo.BeatDelta:= StrToInt(ExtractDelimited(3, FPlayList[0], [CSep]));
    ThePrgInfo.Duration := StrToInt(ExtractDelimited(4, FPlayList[0], [CSep]));
    ThePrgInfo.AutoRepeat:= ExtractDelimited(5, FPlayList[0], [CSep]) = '1';
    ThePrgInfo.Position := 1;
    Result := True;
  except
    ThePrgInfo.PlayList := '';
    Result := False;
  end;
end;

function FindLineWithStart(Prg : TStringList; const s : String) : Integer;
var
  i : Integer;
begin
  i := 1;
  While i <= Prg.Count-1 do
    if prg[i][1] = s then
      break
    else
      inc(i);
  if i <= Prg.Count-1 then
    Result := i
  else
    Result := -1;
end;

Function TGetPrgItem.GetItem(Var ThePrgInfo : TProgramInfo) : String;
var
  idx : Integer;
  EndIdx : Integer;
  BodyCompleted : Boolean;
begin
  Result := '';

  if ThePrgInfo.PlayList = '' then
    Exit;

  if FPlayListName <> ThePrgInfo.PlayList then
    if not LoadPlayList(ThePrgInfo) then
      Exit;
{  Try
    FPlayList.LoadFromFile(FPlayListsDir + ThePrgInfo.PlayList);
    FPlayListName := ThePrgInfo.PlayList;
  except
    Exit;
  end;
}
  if FPlayList.Count = 0 then
    Exit;

  BodyCompleted := False;
  idx := ThePrgInfo.Position;

  EndIdx := FindLineWithStart(FPlaylist, C_ProgramEnd);

  //Εάν έχουμε φτάσει στο τέλος του playlist ή στο τέλος του body
  if (idx > FPlayList.Count-1) or ( (EndIdx > 0) and (idx >= EndIdx) ) then
    BodyCompleted := True;

  if BodyCompleted then
    if ThePrgInfo.AutoRepeat then
      idx := FindLineWithStart(FPlaylist, C_ProgramBody)
    else
      idx := -1;

  if idx > 0 then
  begin
    Result := Copy(FPlaylist[idx], 2, Length(FPlaylist[idx]));
    ThePrgInfo.Position := idx + 1;
  end;
end;

Function TGetPrgItem.GetLastItem(Var ThePrgInfo : TProgramInfo) : String;
var
  idx : Integer;
begin
  Result := '';

  if ThePrgInfo.PlayList = '' then
    Exit;

  if FPlayListName <> ThePrgInfo.PlayList then
    if not LoadPlayList(ThePrgInfo) then
      Exit;

{  Try
    FPlayList.LoadFromFile(FPlayListsDir + ThePrgInfo.PlayList);
    FPlayListName := ThePrgInfo.PlayList;
  except
    Exit;
  end;
}
  if FPlayList.Count = 0 then
    Exit;

  idx := FindLineWithStart(FPlaylist, C_ProgramEnd);
  if (ThePrgInfo.Position < idx) and (idx > 0) then
    ThePrgInfo.Position := idx;

  if (ThePrgInfo.Position <= FPlaylist.Count-1) and (idx > 0) then
  begin
    idx := ThePrgInfo.Position;
    Result := Copy(FPlayList[idx], 2, Length(FPlayList[idx]));
    ThePrgInfo.Position := idx + 1;
  end;
end;

procedure TGetPrgItem.CopyProgramInfo(Src: TProgramInfo; var Dest: TProgramInfo);
begin
  with Dest do begin
    Time        := Src.Time;
    PlayList    := Src.PlayList;
    PlsFileTime := Src.PlsFileTime;
    Position    := Src.Position;
    BeatFrom    := Src.BeatFrom;
    BeatTo      := Src.BeatTo;
    BeatDelta   := Src.BeatDelta;
    Duration    := Src.Duration;
    AutoRepeat  := Src.AutoRepeat;
  end;
end;

end.
