unit MyXaudioPlayer1;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,
  extctrls, XAudioPlayer, MyTypes;

type
{  TPlayerState = (stClosed, stLoading, stOpened, stPlaying,
                  stPaused, stStoped, stSeeking, stFadingIn,
                  stFadingOut, stEOF, stError);
  TPlayerCommands = (cmdLoad, cmdPlay, cmdPause, cmdStop, cmdUnload, cmdEnd,
                     cmdError, cmdNone, cmdEOF);     }

  TMyXaudioPlayer = class(TComponent)
  private
    { Private declarations }
    x : TXAudioPlayer;
    fTimer : TTimer;
    fDeviceName     : String;
    fUseDirectSound : Boolean;

    fCurrentPosition : LongInt;
    fDuration        : LongInt;
    FPosition        : LongInt;
    fState           : TPlayerState;
    fCommand,
    fNextCommand    : TPlayerCommands;
    FStartPos, FEndPos : LongInt;
    fMPEGInfo       : String;
    fFileName       : String;
    fVolume, fInitialVolume,
    fBalance,                                                   
    fInitialBalance,
    fMasterLevel    : Integer;
    fPriority       : Integer;
    fOnStateChange    : TNotifyEvent;
    FOnPositionChange : TNotifyEvent;
    fErrorString    : String;
    FHasError       : Boolean;
    FUnloadCalled   : Boolean;
    fFadingIn       : Boolean;
    fFadeIn         : LongInt;
    fFadeInCalled   : Boolean;
    fFadeInStep     : Integer;
    fFadingOut      : Boolean;
    fFadeOut        : LongInt;
    fFadeOutStep    : Integer;
    fFadeOutCalled  : Boolean;
    FFadeVolume      : Integer;
    FMixPos         : LongInt;
    FPlayingFile    : String;

    fOutputModuleInfo : TNotifyOutputModuleInfoEvent;
    fOutputDeviceInfo : TNotifyOutputDeviceInfoEvent;

    procedure RestoreInitialLevel;

    procedure NotifyPlayerState(Sender: TObject; State: Integer);
    procedure NotifyInputState(Sender: TObject; State: Integer);
    procedure NotifyInputTimeCode(Sender: TObject; Hours: Byte; Minutes: Byte; Seconds: Byte; Fractions: Byte);
    procedure NotifyInputDuration(Sender: TObject; Duration: Cardinal);
    procedure NotifyInputStreamInfo(Sender: TObject; Level: Byte; Layer: Byte; Bitrate: Word; Frequency: Word; Mode: Byte);
    procedure NotifyError(Sender: TObject; Source: Byte; Code: SmallInt; const Msg: String);
    procedure NotifyNack(Sender: TObject; Command: Byte; Code: SmallInt);
    procedure NotifyOutputModuleInfo(Sender: TObject; ID: Byte; NbDevices: Byte; const Name: String; const Description: String);
    procedure NotifyOutputDeviceInfo(Sender: TObject; ModuleID: Byte; Index: Byte; Flags: Byte; const Name: String; const Description: String);
    procedure NotifyPong(Sender: TObject; Tag: Cardinal);
    procedure NotifyNotificationMask(Sender : TObject; Mask: Cardinal);
    procedure NotifyExited(Sender: TObject);
    procedure SetPlayerPriority(value : Integer);
    Function GetPosition : LongInt;
    procedure SetPosition(msec : LongInt);
    procedure SetVolumeInt(vol, bal : Integer);
  protected
    { Protected declarations }
    Function GetDuration : LongInt;
    procedure TimerOnTimer(Sender : TObject);
    procedure DoEvery100Msec;
  public
    { Public declarations }
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;

    function  Open(fn : TFileName): Boolean;
    procedure Play;
    procedure Pause;
    procedure Stop;
    procedure Unload;
    procedure PlayEnd;
    procedure Mute(MuteIt : Boolean);
    procedure SetOutputName(const Name: String);
    procedure ListModules;
    procedure SetVolume(vol, bal : Integer);
    procedure PlayFadeOut(delay:LongInt);
  published
    { Published declarations }
    property  PlayerPriority : Integer read fPriority write SetPlayerPriority;
    property  ErrorStr : String read fErrorString;
    property  MPEGInfo : String read fMPEGInfo;
    property  FileName : String read fFileName write fFileName;

    property  SelectionStart  : LongInt read fStartPos write fStartPos;
    property  SelectionEnd    : LongInt read fEndPos write fEndPos;
    property  CurrentPosition : LongInt read GetPosition write SetPosition;
    property  Duration        : LongInt read GetDuration;
    property  HasError        : Boolean read FHasError;
    Property  PlayerState     : TPlayerState read FState;
    Property  FadeIn          : Integer read FFadeIn write FFadeIn;
    Property  FadeOut         : Integer read FFadeOut write FFadeOut;
    property  Volume          : Integer read FVolume write FVolume;
    property  MixPos          : LongInt read FMixPos write FMixPos;
    Property  OnStateChange      : TNotifyEvent read fOnStateChange write fOnStateChange;
    property  OnPositionChange   : TNotifyEvent read FOnPositionChange write FOnPositionChange;
    property  OnOutputModuleInfo : TNotifyOutputModuleInfoEvent read fOutputModuleInfo write fOutputModuleInfo;
    property  OnOutputDeviceInfo : TNotifyOutputDeviceInfoEvent read fOutputDeviceInfo write fOutputDeviceInfo;

  end;

procedure Register;

implementation

Const
  PositionDelta    = -900; //-1600;
  FileRange        = 2000;
  DirectSoundDelta = -700;

Const
  PingLoad   = 0;
  PingUnload = 1;
  PingPlay   = 2;
  PingPause  = 3;
  PingStop   = 4;
  PingError  = 5;
  PingEnd    = 6;
  PingEOF    = 7;
  PingFadeIn = 8;
  PingFadeOut= 9;

  mp3Mode : Array [0..3] of String =
                ('Stereo', 'Joint Stereo', 'Dual Channel', 'Mono');

procedure Register;
begin
  RegisterComponents('Xaudio', [TMyXaudioPlayer]);
end;

constructor TMyXAudioPlayer.Create(AOwner:TComponent);
begin
  inherited Create(AOwner);
  x := TXAudioPlayer.Create(self);
  x.OnNotifyInputState        := NotifyInputState;
  x.OnNotifyPlayerState       := NotifyPlayerState;
  x.OnNotifyInputTimecode     := NotifyInputTimeCode;
  x.OnNotifyInputDuration     := NotifyInputDuration;
  x.OnNotifyInputStreamInfo   := NotifyInputStreamInfo;
  x.OnNotifyError             := NotifyError;
  x.OnNotifyNack              := NotifyNack;
  x.OnNotifyOutputModuleInfo  := NotifyOutputModuleInfo;
  x.OnNotifyOutputDeviceInfo  := NotifyOutputDeviceInfo;
  x.OnNotifyPong              := NotifyPong;
//  x.OnNotifyExited            := NotifyExited;

{  x.OnNotifyNotificationMask  := NotifyNotificationMask;
  x.GetNotificationMask;     }

  x.OutputModuleRegister('dsound_output_module_register@xa_dsound_output.dll');
  x.SetPlayerEnvironmentInteger('OUTPUT.DIRECTSOUND.WINDOW', (AOwner as TForm).Handle);
  SetOutputName('/dev/wave/0');
  x.Priority := XA_CONTROL_PRIORITY_HIGH;
  x.SetCodecQuality(XA_DECODER_CODEC_QUALITY_HIGH);
  //  x.SetPlayerMode(XA_PLAYER_MODE_OUTPUT_AUTO_CLOSE_ON_STOP or XA_PLAYER_MODE_OUTPUT_AUTO_CLOSE_ON_EOF);

  fPriority := -1;
  PlayerPriority := 3;
  x.SetInputTimeCodeGranularity(10); // 100 msec;

  FTimer := TTimer.Create(self);
  FTimer.OnTimer  := TimerOnTimer;
  FTimer.Interval := 100;
  FTimer.Enabled  := False;

  fUseDirectSound := False;
  fInitialVolume := 100;
  fInitialBalance := 50;
  fBalance := 50;
  fVolume := 100;
  fMasterLevel := 100;
  fState := stClosed;
  FHasError := False;
  FUnloadCalled := True;
  FPlayingFile := '';
end;

destructor TMyXAudioPlayer.Destroy;
begin
  FTimer.OnTimer := nil;
  FTimer.Free;
  x.Exit;
  x.Free;
  inherited Destroy;
end;

procedure TMyXAudioPlayer.NotifyNotificationMask(Sender : TObject; Mask: Cardinal);
begin
  Mask := Mask or XA_NOTIFY_MASK_INPUT_STATE or
                 XA_NOTIFY_MASK_PLAYER_STATE or
                 XA_NOTIFY_MASK_INPUT_TIMECODE or
                 XA_NOTIFY_MASK_INPUT_DURATION or
                 XA_NOTIFY_MASK_INPUT_STREAM_INFO or
                 XA_NOTIFY_MASK_ERROR or
                 XA_NOTIFY_MASK_NACK ;
  x.SetNotificationMask( Mask );
end;


procedure TMyXAudioPlayer.SetPlayerPriority(value : Integer);
begin
  if (FPriority <> Value) and (Value in [0..4]) then
  begin
    fPriority  := Value;
    x.Priority := Value;
  end;
end;

procedure TMyXAudioPlayer.ListModules;
Begin
  x.OutputModulesList;
end;

procedure TMyXAudioPlayer.NotifyOutputModuleInfo(Sender: TObject; ID: Byte; NbDevices: Byte; const Name: String; const Description: String);
Begin
  if Assigned(fOutputModuleInfo) then
    fOutputModuleInfo(Sender, ID, NbDevices, Name, Description);
end;

procedure TMyXAudioPlayer.NotifyOutputDeviceInfo(Sender: TObject; ModuleID: Byte; Index: Byte; Flags: Byte; const Name: String; const Description: String);
Begin
  if Assigned(fOutputDeviceInfo) then
    fOutputDeviceInfo(Sender, ModuleID, Index, Flags, Name, Description);
end;

Function TMyXAudioPlayer.GetDuration : LongInt;
begin
  Result := FDuration;
end;

Function TMyXAudioPlayer.GetPosition : LongInt;
begin
  if fPosition >= 0 then
    Result := FPosition
  else
    Result := 0;
end;

Procedure TMyXAudioPlayer.SetPosition(msec : LongInt);
Begin
  Try
    x.InputSeek(msec div 10, FDuration div 10);
  except
  end;
end;

Procedure TMyXAudioPlayer.SetVolume(vol, bal : Integer);
begin
  FVolume := vol;
  FBalance := bal;
  FInitialVolume := FVolume;
  SetVolumeInt(vol, bal);
end;

procedure TMyXAudioPlayer.SetVolumeInt(vol, bal : Integer);
begin
  if fUseDirectSound then
    x.SetOutputVolume(Bal, Vol,
                      100{XA_OUTPUT_VOLUME_IGNORE_FIELD})
  else
    x.SetOutputVolume(Bal, Vol,
                      XA_OUTPUT_VOLUME_IGNORE_FIELD);
end;

procedure TMyXAudioPlayer.RestoreInitialLevel;
begin
  SetVolumeInt(100, 50);
end;

Function TMyXAudioPlayer.Open(fn : TFileName):Boolean;
begin
  FHasError := False;
  FPlayingFile := '';
  fFileName := fn;
  Result := False;
  fPosition := 0;
  FDuration   := 0;
  FCommand := cmdLoad;
  if fState = stPlaying then
    x.Stop;                // will NotifyPlayerState
  fState := stLoading;
  Result := true;
  x.InputOpen(fn);         // will NotifyInputState
end;

procedure TMyXAudioPlayer.Play;
begin
  case FState of
    stPaused : x.play;
    stPlaying : ;
  else          // stoped, eof
    Begin
      if FVolume = 0 then
        FVolume := 100;
      FInitialVolume := 100;  
      FFadeVolume    := FVolume;
      fFadingIn      := False;
      fFadeInCalled  := False;
      fFadingOut     := False;
      fFadeOutCalled := False;

      if FFadeIn > 0 then
      Begin
        fFadingIn     := True;
        fFadeInCalled := True;
        fFadeInStep   := FVolume div (FFadeIn div 100);
        if fFadeInStep <= 0 then
          fFadeInStep := 1;
        FFadeVolume   := 0;
      end;

      Begin
        x.OutputOpen(fDeviceName);
        RestoreInitialLevel;      
        x.OutputReset;
      end;

      FUnloadCalled := False;
      FPlayingFile  := FFileName;
      x.Play; // will notifyPlayerState = XA_PLAYER_STATE_PLAYING

      if FFadeVolume < 100 then
        SetVolumeInt(FFadeVolume, 50);
      if FStartPos > 0 then
        CurrentPosition := FStartPos;
    end;
  end;
end;

procedure TMyXAudioPlayer.Pause;
begin
  if FState <> stPaused then
    x.Pause;
end;

procedure TMyXAudioPlayer.Stop;
begin
  if FState <> stStoped then
  begin
    FCommand := cmdStop;
    x.Stop;
  end;
end;

procedure TMyXAudioPlayer.Unload;
begin
  { if FHasError τότε το έχει καλέσει η ρουτίνα που θέλει να
    σβήσει λογω κάποιου προβλήματος.
    Στην περίπτωση αυτή κάλεσε το PingUnload }
{  if FHasError then
    x.Ping(PingUnload)
  else }
  Begin
    FCommand := cmdUnload;
    if fState in [stPlaying, stPaused, stFadingIn, stFadingOut] then
      x.stop;
    x.InputClose; // will NotifyInputState
  end;
end;

procedure TMyXAudioPlayer.PlayEnd;
begin
  FCommand := cmdEOF;
  FTimer.Enabled := False;  // για καλό και για κακό
  if FState <> stStoped then
    x.Stop;
//  x.Ping(PingEOF);
  NotifyPong(self, PingEOF);
end;

procedure TMyXAudioPlayer.NotifyInputState(Sender: TObject; State: Integer);
var
  ErrStr : String;
begin
  Case State of
    XA_INPUT_STATE_OPEN   : begin
                              FUnloadCalled := False;
                              x.Ping(PingLoad);
//                              NotifyPong(self, PingLoad);
                            end;
    XA_INPUT_STATE_CLOSED :
      Case FCommand of
        cmdLoad :
          begin
            ErrStr := 'Can not open file : ' + FFileName;
            if Not FHasError then
            Begin
              fErrorString := ErrStr;
              FHasError := True;
              //x.Ping(PingError);
              NotifyPong(Self, PingError);
            end
            else
              FErrorString := FErrorString + ' ... ' + ErrStr;
          end;
        cmdUnload : if not FUnloadCalled then
                    begin
                      FUnloadCalled := True;
                      //x.Ping(PingUnload);
                      NotifyPong(Self, PingUnload);
                    end;
      end;
  end;
end;

procedure TMyXAudioPlayer.NotifyPong(Sender: TObject; Tag: Cardinal);
begin
  Case Tag of
    PingLoad   : FState := stOpened;
    PingPlay   : FState := stPlaying;
    PingPause  : FState := stPaused;
    PingStop   : FState := stStoped;
    PingUnload : FState := stClosed;
    PingError  : Begin
                   FState := stError;
                   FHasError := True;
                 end;
    PingEnd    : FState := stEOF;
    PingEOF    : FState := stEOF;
    PingFadeIn : FState := stFadingIn;
    PingFadeOut: FState := stFadingOut;
  else
    Exit; //case
  end;
  if Assigned(FOnStateChange) then
      FOnStateChange(Self);
end;

procedure TMyXAudioPlayer.Mute(MuteIt : Boolean);
begin
  if MuteIt then
    x.OutputMute
  else
    x.OutputUnmute;
end;

function ConvertTimeToInt(hour,minute,sec,msec:Integer):LongInt;
begin
  Result := hour * 3600000 +
            minute * 60000 +
            sec * 1000 +
            msec; // check it
end;

procedure TMyXAudioPlayer.PlayFadeOut(delay:LongInt);
begin
  if FFadeOutCalled then
    Exit;
  if delay <= 0 then
    delay := 1;
  FFadingIn      := False;
  FState         := stFadingOut;
  //x.Ping(PingFadeOut);
  NotifyPong(Self, PingFadeOut);
  FFadeOutCalled := True;
  fFadingOut     := True;
  fFadeOutCalled := True;
  Try
    fFadeOutStep := FVolume div (Delay div 100);
  except
    fFadeOutStep := 10;
  end;
  FFadeVolume    := FVolume;
  if fFadeOutStep <= 0 then
    fFadeOutStep := 1;
end;

procedure TMyXAudioPlayer.NotifyInputTimeCode(Sender: TObject; Hours: Byte;
                             Minutes: Byte; Seconds: Byte; Fractions: Byte);
var
  NewPosition : LongInt;
begin
  NewPosition := ConvertTimeToInt(Hours, Minutes, Seconds, Fractions * 10);

  if fUseDirectSound then
    NewPosition := NewPosition + PositionDelta;
  if NewPosition < 0 then
    NewPosition := 0;

  if NewPosition <> FPosition then
    FPosition := NewPosition
  else
    Exit;
  DoEvery100MSec;
end;

procedure TMyXAudioPlayer.DoEvery100Msec;
Begin
  if FFadingIn then
  begin
    if FState <> stFadingIn then
    Begin
      FState := stFadingIn;
//      x.Ping(PingFadeIn);
      NotifyPong(Self, PingFadeIn);
    end;
    Inc(FFadeVolume, fFadeInStep);
    if FFadeVolume >= FVolume then
    begin
      FFadeVolume := FVolume;
      FFadingIn  := False;
      FInitialVolume := FVolume;         // *******
      // x.Ping(PingPlay);
      NotifyPong(Self, PingPlay);
    end;
    SetVolumeInt(FFadeVolume, 50);
  end
  else                                    // *******
  if FInitialVolume <> FVolume then
  begin
    FInitialVolume := FVolume;
    SetVolumeInt(FVolume, 50);
  end;

  if (Not FFadeOutCalled) and (FPosition >= FMixPos) and (FFadeOut > 0)then
    PlayFadeOut(FFadeOut);

  if FFadingOut then
  begin
    Dec(FFadeVolume, fFadeOutStep);
    if FFadeVolume <= 0 then
    begin
      FFadeVolume := 0;
      FFadingOut := False;
      PlayEnd;
    end;
    SetVolumeInt(FFadeVolume, 50);
  end;
  if Assigned(FOnPositionChange) then
    FOnPositionChange(self);
end;

procedure TMyXAudioPlayer.NotifyInputDuration(Sender: TObject; Duration: Cardinal);
begin
  FDuration := Duration { seconds } * 1000; { = msec }
end;

procedure TMyXAudioPlayer.NotifyInputStreamInfo(Sender: TObject; Level: Byte;
          Layer: Byte; Bitrate: Word; Frequency: Word; Mode: Byte);
var
  ErrStr : String;
  iFileHandle : Integer;
  iFileLength : LongInt;
  tmpDouble : Double;
begin
  fMPEGInfo := 'MPEG' + IntToStr(level) +
               ', Layer ' + IntToStr(layer) + ', ' +
               IntToStr(bitrate) + 'Kbps, ' +
               IntToStr(frequency) + 'Hz ' +
               mp3Mode[Mode];
  if FDuration = 0 then
  Begin
    ErrStr := 'Error : Unknown file format';
    if Not FHasError then
    Begin
      fErrorString := ErrStr;
      FHasError := True;
      //x.Ping(PingError);
      NotifyPong(Self, PingError);
    end
    else    
      FErrorString := FErrorString + ' ... ' + ErrStr;
  end
  else
  begin
    try
      iFileHandle := FileOpen(FFileName, fmOpenRead or fmShareDenyNone);
      if iFileHandle <> -1 then begin
        iFileLength := FileSeek(iFileHandle, 0, soFromEnd);
        FileClose(iFileHandle);
        tmpDouble := (iFileLength * 8) / (longint(Bitrate)*1000);
        FDuration := Trunc(tmpDouble * 1000);
      end;
    except
      exit;
    end;
    { x.Ping(PingLoad);
    NotifyPong(self, PingLoad); }
  end;
end;

procedure TMyXAudioPlayer.NotifyError(Sender: TObject; Source: Byte; Code: SmallInt; const Msg: String);
var
  ErrStr : String;
begin
  ErrStr := 'Error source :' + IntToStr(source) +
                  ' code :' + IntToStr(code) +
                  ' msg :' + String(msg);
  if Not FHasError then
  Begin
    fErrorString := ErrStr;
    FHasError := True;
    //x.Ping(PingError);
    NotifyPong(Self, PingError);
  end
  else
    FErrorString := FErrorString + ' ... ' + ErrStr;

end;

procedure TMyXAudioPlayer.NotifyNack(Sender: TObject; Command: Byte; Code: SmallInt);
var
  ErrStr : String;
begin
  ErrStr := 'Nack , command :' + IntToStr(command) +
                  ' code :' + IntToStr(code);
  if Not FHasError then
  Begin
    fErrorString := ErrStr;
    FHasError := True;
    //x.Ping(PingError);
    NotifyPong(Self, PingError);
  end
  else
    FErrorString := FErrorString + ' ... ' + ErrStr;
end;

procedure TMyXAudioPlayer.NotifyExited(Sender: TObject);
begin
//  x.Ping(PingUnload);
{  NotifyPong(self, PingUnload);          }
end;

procedure TMyXAudioPlayer.SetOutputName(const Name: String);
begin
  fUseDirectSound := pos('dsound',Name) <> 0;
  x.SetOutputName(name);
  fDeviceName := Name;
end;

procedure TMyXAudioPlayer.NotifyPlayerState(Sender: TObject; State: Integer);
begin
  case State of
    XA_PLAYER_STATE_STOPPED:
      begin
        FTimer.Enabled := False;
        FState := stStoped;
        x.OutputClose;
        if FCommand = cmdStop then
          //x.Ping(PingStop);
          NotifyPong(Self, PingStop);
      end;
    XA_PLAYER_STATE_PLAYING:
      begin
        FState := stPlaying;
        //x.Ping(PingPlay);
        If not FFadingIn then
          NotifyPong(Self, PingPlay);
      end;
    XA_PLAYER_STATE_PAUSED:
      begin
        FState := stPaused;
        //x.Ping(PingPause);
        NotifyPong(Self, PingPause);
      end;
    XA_PLAYER_STATE_EOF:
      begin
        FTimer.Tag     := 0;
        FTimer.Enabled := True;
      end;
  end
end;

procedure TMyXAudioPlayer.TimerOnTimer(Sender : TObject);
begin
  Inc(FPosition, 100);
  DoEvery100Msec;
  if FPosition >= FDuration then
  Begin
    FTimer.Enabled := False;
    PlayEnd;
  end;
end;


end.
