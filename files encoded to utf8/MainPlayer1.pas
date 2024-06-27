unit MainPlayer1;

interface

uses
  classes, graphics, ExtCtrls, StdCtrls, ComCtrls, SysUtils,
  MyXAudioPlayer1, MyTypes ;

Type
  TStatusChangeEvent = procedure(Sender:TObject; TheStatus : TItemStatus) of object;

  TMainPlayer = Class(TComponent)
  private
//    FHDPlayer  : TAudioPlayer;
    FHDPlayer  : TMyXAudioPlayer;
    FCDPlayer  : TMyXAudioPlayer; // TCDPlayer;
    FFileName  : String;
    FPlayInfo  : TPlayInfo;
    FMixCalled : Boolean;
    FBusy      : Boolean;
    FStatus    : TItemStatus;
    FSimpleUnload   : Boolean;
    FOnChangeStatus : TStatusChangeEvent;
    FHasError       : Boolean;
    FErrorString    : String;
    Function LoadHardDisc:Boolean;
    function LoadCD:Boolean;
    procedure SetPosition(Position : LongInt);
    Function GetPosition : LongInt;
    Function GetDuration : LongInt;
  protected
    procedure XOnStateChange(Sender :TObject);

  public
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    function Load : Boolean;
    procedure Play;
    procedure Pause;
    procedure Stop;
    procedure Unload;
    procedure UnloadOnly;
    procedure PlayFadeOut(delay:LongInt);

  published
    property FileName : String read FFileName write FFileName;
    property SimpleUnload : Boolean Read FSimpleUnload Write FSimpleUnload;
    property Busy : Boolean read FBusy;
    property PlayInfo : TPlayInfo read FPlayInfo write FPlayInfo;
    property MixCalled : Boolean Read FMixCalled write FMixCalled;
    property Duration : LongInt read GetDuration;
    property HasError : Boolean read FHasError write FHasError;
    property ErrorString : String read FErrorString write FErrorString;
    property Position : Longint read GetPosition write SetPosition;
    property OnChangeStatus : TStatusChangeEvent read FOnChangeStatus write FOnChangeStatus;
 end;

implementation

uses
  MainForm1, MyLibrary, dialogs;

constructor TMainPlayer.Create(AOwner:TComponent);
begin
  inherited create(AOwner);
  with FPlayInfo do
  begin
    Length    := 0;
    PlayStart := 0;
    MixPos    := 0;
  end;
  FStatus    := isUnloaded;
  FCDPlayer := nil;
  FHDPlayer := nil;
  FBusy     := False;
end;

destructor TMainPlayer.Destroy;
begin
  if FHDPlayer <> nil then
  begin
    FHDPlayer := nil;
  end;
  if FCDPlayer <> nil then
  begin
    FCDPlayer := Nil;
  end;
  inherited Destroy;
end;

function TMainPlayer.Load : Boolean;
begin
  Result := False;
  FMixCalled     := False;
  FSimpleUnload  := False;
  FHasError      := False;

  FBusy := LoadHardDisc;

{  case FPlayItem.Kind of
    pkHD : FBusy := LoadHardDisc;
    pkCD : FBusy := LoadCD;
  end; }

  if FBusy then
    FStatus := isLoading
  else
    FStatus := isUnloaded;
  Result := FBusy;
  if Assigned(FOnChangeStatus) then
    FOnChangeStatus(Self, FStatus);
end;

Function TMainPlayer.LoadHardDisc:Boolean;
begin
  Result := False;
  if FHDPlayer = nil then
  begin
    FHDPlayer := Form1.FindFreeAudioPlayer;
    if FHDPlayer <> nil then
      with FHDPlayer do
      Begin
        if Open(FFileName) then
        Begin
          OnStateChange  := XOnStateChange;
          Result         := True;
          Tag            := 1;
          SelectionStart := FPlayInfo.PlayStart;
          SelectionEnd   := FPlayInfo.Length;
          FadeIn         := FPlayInfo.FadeIn;
          FadeOut        := FPlayInfo.FadeOut;
          MixPos         := FPlayInfo.MixPos;
          Volume         := FPlayInfo.Volume;
        end
        else
        Begin
          OnStateChange := nil;
          FHDPlayer.Tag := 0;
          FHDPlayer     := nil;
        end;
      end;
  end;
end;

Function TMainPlayer.LoadCD:Boolean;
begin
  Result := False;
end;

procedure TMainPlayer.XOnStateChange(Sender : TObject);
Begin

  if (FHDPlayer = nil) or (Sender <> FHDPlayer) then
    Exit;

    Case FHDPlayer.PlayerState of

      stLoading :  FStatus := isLoading;
      stOpened  :  FStatus := isReadyPlay;
      stPlaying :
        Begin
          FHDPlayer.Tag := 2;
          FStatus := isPlaying;
        end;
      stPaused : FStatus := isPaused;
      stStoped : FStatus := isReadyPlay;
      stClosed :
        begin
          FStatus := isDelete;
          FHDPlayer.Tag := 0;
          FHDPlayer.OnStateChange := nil;
          FHDPlayer := nil;
          FCDPlayer := nil;
          FBusy := False;
        end;
      stEOF : FStatus := isEnded;
      stError :
        Begin
          FHasError := True;
          //FErrorString := (Sender as TAudioPlayer).ErrorStr;
           FErrorString := (Sender as TMyXAudioPlayer).ErrorStr;
          FStatus  := isEnded;
          FSimpleUnload := False;
        end;
      stFadingIn, stFadingOut :  FStatus := isFadePlay;
      stSeeking : ;
    end;
  if Assigned(FOnChangeStatus) then
    FOnChangeStatus(Self, FStatus);
end;

procedure TMainPlayer.Play;
begin
    FHDPlayer.Play;
{    case FPlayItem.Kind of
      pkHD :
        begin
          FHDPlayer.Play;
        end;
    end; }
end;

procedure TMainPlayer.Pause;
begin
    FHDPlayer.Pause;
{    case FPlayItem.Kind of
      pkHD : FHDPlayer.Pause;
      pkCD : FCDPlayer.Pause;
    end; }
end;

procedure TMainPlayer.Stop;
begin
    FHDPlayer.Stop;
{    case FPlayItem.Kind of
      pkHD : FHDPlayer.Stop;
      pkCD : FCDPlayer.Stop;
    end; }
end;

procedure TMainPlayer.PlayFadeOut(delay:LongInt);
begin
  FHDPlayer.PlayFadeOut(delay);
end;

procedure TMainPlayer.UnloadOnly;
begin
  FSimpleUnload := True;
  Unload;
end;

procedure TMainPlayer.Unload;
begin
  FStatus := isUnLoading; // to change button color to busy
  if Assigned(FOnChangeStatus) then
    FOnChangeStatus(Self, FStatus);
  FHDPlayer.Unload;
{    case FPlayItem.Kind of
      pkHD : FHDPlayer.Unload;
      pkCD : FCDPlayer.Unload;
    end; }
end;

procedure TMainPlayer.SetPosition(Position : LongInt);
begin
  FHDPlayer.CurrentPosition := Position;
end;

Function TMainPlayer.GetPosition : LongInt;
Begin
  Result := FHDPlayer.CurrentPosition;
end;

Function TMAinPlayer.GetDuration : LongInt;
Begin
  Result := FHDPlayer.Duration;
end;

end.
