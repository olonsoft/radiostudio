unit MyTypes;

interface

uses
  Graphics, ComCtrls, MultiButton, Controls, Classes, ResStringsU;

Type
  T19 = (R19, RU19);
  TPlayerKind = ( pkHD , pkCD );
  TPlayMode   = ( pmAuto, pmLive, pmManual);
  TPlayState  = ( psPlayNext, psAutoMix, psPlayNextAutoMix, psNone );
  TStartupState = ( susLast, susAuto, susLive );

  TItemStatus = (isDelete,  isUnloaded, isReadyPlay,
                 isLoading, isCueing,   isWaitPlay,
                 isPlaying, isPaused,   isUnloading,
                 isFadePlay, isEnded);

  TPlayType   = (ptSong, ptJingle, ptSpot, ptTimeAnounce, ptNews, ptHardDisc);
  TSelectionType = (stManual, stAuto);

  TButtonsStatus     = (bsPaused, bsTouchRep, bsFix, bsRepeat);
  TItemButtonsStatus = set of TButtonsStatus;
  TStartMode         = (smNormal, smOverStart, smOverIntro, smOverEnd);

  TErrorType = Record
                 Typ  : (etWarning, etError);
                 text : string;
               end;

  TMediaError = procedure(Sender:TObject; s:TErrorType) of object;
  TMediaEvent = TNotifyEvent;
  TLogItems = (liSong, liJingle, liSpot, liTimeAnnounce, liNews, liHardDisc,
               liNewProgram, liError, liWarning);
  TSQLBreaks = (sbPromos, sbOriginal, sbBeat, sbOpener, sbQualityTo, sbTitleTime,
                sbArtistTime, sbQualityFrom, sbSex, sbSubject, sbCategories,
                sbNoBeat, sbChangePeriods, sbNoPeriods, sbNoArtists, sbNoTitles,
                sbNoFound);
  TPlayerState = (stClosed, stLoading, stOpened, stPlaying,
                  stPaused, stStoped, stSeeking, stFadingIn,
                  stFadingOut, stEOF, stError);
  TPlayerCommands = (cmdLoad, cmdPlay, cmdPause, cmdStop, cmdUnload, cmdEnd,
                     cmdError, cmdNone, cmdEOF);

Const
  C19         : Array [T19] of String =
                (C_Registered, C_Unregistered);

  LogItemName : Array [ TLogItems ] of String =
                (C_Song, C_Jingle, C_Spot, C_TimeAnnounce,
                 C_News, C_HardDisc, C_NewProgram, C_Error, C_Warning);

  ButtonStatusColor : Array [TItemStatus] of TColor =
           ( clBtnFace,clBtnFace, clLime,
             clRed,    clYellow,  clBlue,
             clAqua,   clYellow,  clGreen,
             clWhite,   clBlack );

  ItemStatusString : Array [TItemStatus] of string =
                    (C_Delete,   C_Unloaded, C_Ready,
                     C_Loading, C_Cueing,   C_Waiting,
                     C_Playing, C_Paused,   C_Unloading,
                     C_FadingOut,C_Ended);

  PlayerKindName : Array [TPlayerKind] of string =
                   ('HD','CD');

  PlayTypeName : Array [TPlayType] of String =
                 (C_Song , C_Jingle , C_Spot , C_TimeAnnounce,
                  C_News , C_HardDisc);

Type
  TPlayInfo = Record
    Length    : LongInt;
    PlayStart : LongInt;
    FadeIn    : Integer;
    Intro     : LongInt;
    MixPos    : LongInt;
    FadeOut   : Integer;
    Volume    : Integer;
    Position  : LongInt;
  end;

Type
  PPlayItem = ^TPlayItem;
  TPlayItem = Record
    Kind     : TPlayerKind; //pkHD,pkCD
    PlayType : TPlayType;
    StartMode: TStartMode;
    Status   : TItemStatus;
    NextStarted : Boolean;
    ButtonsStatus : TItemButtonsStatus;
    SelectionType : TSelectionType;
    Artist   : string;
    Song     : string;
    FileName : string;
    PlayInfo : TPlayInfo;
    JukeBox  : Integer;
    CD       : Integer;
    Track    : Integer;
    Player   : TObject;
    ErrorStr : String;
    TitleCode: LongInt;
    ArtistCode : LongInt;
    Beat     : Integer;
    ArtistLastPlayed : TDateTime;
    TitleLastPlayed  : TDateTime;
  end;

  TStatusButton = TToolButton;
  TStartButton  = TMultiButton;

  TPlayerError = (MediaNotFound, MediaIsLoaded, MediaFileError, MediaCannotPlay);

  TPlayerEvent      = procedure(Sender : TObject) of object;
  TPlayerTimerEvent = procedure(Sender : TObject; s : string; var t:LongInt) of object;
  TPlayerErrorEvent = procedure(Sender : TObject; Er: TPlayerError) of object;

  Function GetColor(Color : TItemStatus):TColor;
  procedure ClearThePlayItem(var TheItem : TPlayItem);

implementation

Function GetColor(Color : TItemStatus):TColor;
begin
  Result := ButtonStatusColor[Color];
end;

procedure ClearThePlayItem(var TheItem : TPlayItem);
begin
  with TheItem do
  begin
    Kind     := pkHD;
    PlayType := ptHardDisc;
    StartMode:= smNormal;
    Status   := isUnloaded;
    ButtonsStatus := [];
    SelectionType := stManual;
    Artist   := '';
    Song     := '';
    FileName := '';
    with PlayInfo do
    begin
      Length    := 0;
      PlayStart := 0;
      FadeIn    := 0;
      Intro     := 0;
      MixPos    := 0;
      FadeOut   := 0;
      Volume    := 0;
      Position  := 0;
    end;
    JukeBox  := -1;
    CD       := -1;
    Track    := -1;
    Player   := nil;
    ErrorStr := '';
    TitleCode  := -1;
    ArtistCode := -1;
    Beat       := 100;
    ArtistLastPlayed := 0;
    TitleLastPlayed  := 0;
  end;
end;

end.
