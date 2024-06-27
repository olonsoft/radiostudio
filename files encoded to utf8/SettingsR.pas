unit SettingsR;

interface

uses
  MyTypes, ResStringsU;
  
Const
  C_SearchDirsFile = 'SearchDir.dat';
  C_JingleCategoriesFile = 'Jingles.dat';
  C_WeekProgramFile = 'WeekPrg.dat';
  C_FilesExt    = '*.mp3';
  C_TrafficExt  = '.ads';
  C_PlayListExt = 'pll';
  C_PrgWeekExt  = 'pwk';
  C_PrgWeekExtFilter = 'Week Program files|*.pwk|All Files|*.*';
  C_PrgDayExt   = 'pdy';
  C_PrgDayExtFilter = 'Day Program files|*.pdy|All Files|*.*';
  C_PlayListsFilter = 'Play List files|*.pll|Program files|*.prg|All Files|*.*';
  C_ProgramExt  = '.prg';
  C_FilePacksExt= '.pls';
  CSettingsFile = 'S19Radio.ini';
  CPlayModeFile = 'S19Mode.ini';
  CPeriodsFile = 'Periods.dat';
  C_RecKindFile = 'RecKind.dat';
  C_RecsFile    = 'Recordings.dat';
  CToday = 'Σήμερα';
  C_ProgramStart = '1';
  C_ProgramBody  = '2';
  C_ProgramEnd   = '3';
  C_ProgramItemSongPack = '1';
  C_ProgramItemDBFilter = '2';
  C_ProgramItemHDFile   = '3';
  C_ProgramItemDBSong   = '4';



Type
  TRadioSettingsRec = Record
    DBAlias          : String;
    NetDir           : String;
    UseDroppedFiles  : Boolean;
    CheckSpotsBefore : Integer;
    LoadSpotsBefore  : Integer;
    CACV3000         : Boolean;
{    MixTime          : LongInt; }
    PlayDevice       : String;
    CueDevice        : String;
    MaxLogLines      : Integer;
    LocalDataDir     : String;
    ServerDataDir    : String;
    ServerBinDir     : String;
    PlayListsDir     : String;
    TrafficDir       : String;
    AudioFilesDir    : String;
    ProgramsDir      : String;
    PlayState        : TPlayState;
    PlayMode         : TPlayMode;
    CueAutoPlay      : Boolean;
    DefaultFadeOut   : Integer;
    DefaultSongMix   : Integer;           
    DefaultJingleMix : Integer;
    DefaultJingleSep : LongInt;
    StartupState     : TStartupState;
  end;

Var
  RadioSettings : TRadioSettingsRec;
  CSep  : Char = '|';
  CSep1 : Char = '=';
  CSep2 : Char = ';';
  CSep3 : Char = '-';

procedure LoadSettings;
procedure SaveSettings;
procedure LoadPlayMode;
procedure SavePlayMode;

implementation

uses
  Classes, SysUtils, Dialogs, MyLibrary;

procedure LoadSettings;
Var
  f : TStringList;
begin
  f := TStringList.Create;
  Try
    try
      f.LoadFromFile(CSettingsFile);
      with RadioSettings do
      begin
        DBAlias          := f.Values['DBAlias'];
        NetDir           := f.Values['NetDir'];
        UseDroppedFiles  := f.Values['UseDroppedFiles'] = '1';
        CheckSpotsBefore := StrToInt(f.Values['CheckSpotsBefore']);
        LoadSpotsbefore  := StrToInt(f.Values['LoadSpotsBefore']);
        CACV3000         := f.Values['CACV3000'] = '1';
        LocalDataDir     := f.Values['LocalDataDir'];
        ServerDataDir    := f.Values['ServerDataDir'];
     {   MixTime          := StrToInt(f.Values['MixTime']);    }
        PlayDevice       := f.Values['PlayDevice']; // '/dev/dsound/0';
        CueDevice        := f.Values['CueDevice'];  // '/dev/dsound/0';
        ServerBinDir     := f.Values['ServerBinDir'];
        MaxLogLines      := StrToInt(f.Values['MaxLogLines']);
        PlayListsDir     := f.Values['PlayListsDir'];
        TrafficDir       := f.Values['TrafficDir'];
        AudioFilesDir    := f.Values['AudioFilesDir'];
        ProgramsDir      := f.Values['ProgramsDir'];
        CueAutoPlay      := f.Values['CueAutoPlay'] = '1';
        DefaultFadeOut   := StrToInt(f.Values['DefaultFadeOut']);
        DefaultSongMix   := StrToInt(f.Values['DefaultSongMix']);
        DefaultJingleMix := StrToInt(f.Values['DefaultJingleMix']);
        DefaultJingleSep := StrToInt(f.Values['DefaultJingleSep']);
        StartupState     := TStartupState(StrToInt(f.Values['StartupState']));
        if RadioSettings.PlayDevice = '' then
          RadioSettings.PlayDevice := '/dev/dsound/0';

      end
    except
      SaveSettings;
    end;
  Finally
    f.Free;
  end;
end;

procedure LoadPlayMode;
Var
  f : TStringList;
begin
  f := TStringList.Create;
  Try
    try
      with RadioSettings do
      begin
        f.LoadFromFile(LocalDataDir + CPlayModeFile);
        PlayState   := TPlayState(StrToInt(f.Values['PlayState']));
        PlayMode    := TPlayMode(StrToInt(f.Values['PlayMode']));
      end;
    except
      SavePlayMode;
    end;
  Finally
    f.Free;
  end;
end;

procedure SaveSettings;
Var
  f : TStringList;
begin
  f := TStringList.Create;
  Try
    try
      with RadioSettings do
      Begin
        f.Add('DBAlias=' + DBAlias);
        f.Add('NetDir=' + NetDir);
        f.Add('UseDroppedFiles=' + ReturnString(UseDroppedFiles, '1', '0'));
        f.Add('CheckSpotsBefore=' + IntToStr(CheckSpotsBefore));
        f.Add('LoadSpotsBefore=' + IntToStr(LoadSpotsBefore));
        f.Add('CACV3000=' + ReturnString(CACV3000, '1', '0'));
        f.Add('LocalDataDir=' + LocalDataDir);
        f.Add('ServerDataDir=' + ServerDataDir);
  {      f.Add('MixTime=' + IntToStr(MixTime));     }
        f.Add('PlayDevice=' + PlayDevice);
        f.Add('CueDevice=' + CueDevice);
        f.Add('ServerBinDir=' + ServerBinDir);
        f.Add('MaxLogLines=' + IntToStr(MaxLogLines));
        f.Add('PlayListsDir=' + PlayListsDir);
        f.Add('TrafficDir=' + TrafficDir);
        f.Add('AudioFilesDir=' + AudioFilesDir);
        f.Add('CueAutoPlay=' + ReturnString(CueAutoPlay, '1', '0'));
        f.Add('ProgramsDir=' + ProgramsDir);
        f.Add('DefaultFadeOut=' + IntToStr(DefaultFadeOut));
        f.Add('DefaultSongMix=' + IntToStr(DefaultSongMix));
        f.Add('DefaultJingleMix=' + IntToStr(DefaultJingleMix));
        f.Add('DefaultJingleSep=' + IntToStr(DefaultJingleSep));
        f.Add('StartupState=' + IntToStr(ord(StartupState)));
        f.SaveToFile(CSettingsFile);
      end
    except
      ShowMessage(C_ErrorSavingSettings);
    end
  Finally
    f.free;
  end;
end;

procedure SavePlayMode;
Var
  f : TStringList;
begin
  f := TStringList.Create;
  Try
    try
      with RadioSettings do
      Begin
        f.Add('PlayMode=' + IntToStr(Ord(PlayMode)));
        f.Add('PlayState=' + IntToStr(Ord(PlayState)));
        f.SaveToFile(LocalDataDir + CPlayModeFile);
      end;
    Except
      ShowMessage(C_ErrorSavingSettings);
    end;
  Finally
    f.Free;
  end;
end;

end.
