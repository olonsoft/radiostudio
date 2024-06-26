unit CueForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ExtCtrls, TimeLabel, Mask, MyTypes, Spin,
  MyXAudioPlayer1, JTTrackBar, JvPanel, JvExExtCtrls, JvComponent;

type
  TCueForm1 = class(TForm)
    Panel6: TjvPanel;
    StartButton: TSpeedButton;
    IntroButton: TSpeedButton;
    MixButton: TSpeedButton;
    StartTime: TTimeLabel;
    IntroTime: TTimeLabel;
    FadeInTime: TTimeLabel;
    LengthTime: TTimeLabel;
    PositionTime: TTimeLabel;
    FadeOutTime: TTimeLabel;
    MixTime: TTimeLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    VolumeLabel: TLabel;
    PlayButton: TSpeedButton;
    PauseButton: TSpeedButton;
    StopButton: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    YearEdit1: TMaskEdit;
    Label5: TLabel;
    MP3Info3: TLabel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    StatusBar1: TStatusBar;
    StartSpin1: TSpinButton;
    IntroSpin1: TSpinButton;
    FadeInSpin1: TSpinButton;
    FadeOutSpin1: TSpinButton;
    MixSpin1: TSpinButton;
    SliderBar1: JTrackBar;
    VolumeSlider: JTrackBar;
    FileEdit1: TEdit;
    ArtistEdit1: TEdit;
    TitleEdit1: TEdit;
    AlbumEdit1: TEdit;
    procedure VolumeSliderChange(Sender: TObject);
    procedure StartButtonClick(Sender: TObject);
    procedure IntroButtonClick(Sender: TObject);
    procedure MixButtonClick(Sender: TObject);
    procedure StartTimeClick(Sender: TObject);
    procedure IntroTimeClick(Sender: TObject);
    procedure MixTimeClick(Sender: TObject);
    procedure PositionSliderChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PositionSliderMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PositionSliderMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PlayButtonClick(Sender: TObject);
    procedure PauseButtonClick(Sender: TObject);
    procedure StopButtonClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure ShowMPEGInfo;
    procedure FadeOutTimeClick(Sender: TObject);
    procedure ClearTimes;
    procedure FadeOutTimeDblClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure SliderBar1Change(Sender: TObject);
    procedure SliderBar1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SliderBar1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpinDownClick(Sender: TObject);
    procedure SpinUpClick(Sender: TObject);
    Procedure UpdateSelectedLength;
  private
    { Private declarations }
    Function SaveTagInfo : Boolean;
    procedure SearchThreadTerminated(Sender: TObject);
    procedure OnActivation;
    procedure EnableControls(Flag : Boolean);
    Procedure XPlayerOnChange(Sender : TObject);
    Procedure XPlayerOnPositionChange(Sender : TObject);
  public
    { Public declarations }
    AudioCard : String;
    FileName : String;
    AutoPlay : Boolean;
    UseTag   : Boolean;
    UseThread : Boolean;
    SearchDirectories : TStrings;
    XPlayer1 : TMyXAudioPlayer;
    procedure SetProperties;
  end;

var
  CueForm1: TCueForm1;

implementation

{$R *.DFM}

Uses
  mp3Tag, FindFile, MyLibrary, ResStringsU, DataModule;

Type
  TThreadedFindFile = Class(TThread)
  private
    FFileName : String;
    procedure DoOnFind;
  protected
    procedure Execute; override;
  end;

Var
  SliderUserChanged : Boolean;
  mp3Tag1 : Tmp3Tag;
  ThreadIsActive : Boolean;

procedure TThreadedFindFile.Execute;
Var
  tmpFindFile : TFindFile;
begin
  FreeOnTerminate := True;
  OnTerminate := CueForm1.SearchThreadTerminated;
  tmpFindFile := TFindFile.Create;
  Try
    tmpFindFile.Directories.AddStrings(CueForm1.SearchDirectories);
    tmpFindFile.ScanSubDir := True;
    FFileName := tmpFindFile.FindFile(CueForm1.FileName);
    Synchronize(DoOnFind);
  finally
    tmpFindFile.Free;
  end;
end;

procedure TThreadedFindFile.DoOnFind;
begin
  CueForm1.FileName := FFileName;
end;

procedure TCueForm1.SearchThreadTerminated(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  ThreadIsActive := False;
  OnActivation;
end;

procedure TCueForm1.SetProperties;
begin
  XPlayer1.SetOutputName(AudioCard);
end;

procedure TCueForm1.VolumeSliderChange(Sender: TObject);
begin
  VolumeLabel.Caption := IntToStr(VolumeSlider.Position);
  if XPlayer1.PlayerState = stPlaying then
    XPlayer1.SetVolume(VolumeSlider.Position, 50)
  else
    XPlayer1.Volume := VolumeSlider.Position;
end;

Procedure TCueForm1.UpdateSelectedLength;
Begin
  SliderBar1.SelStart := StartTime.Time div 100;
  SliderBar1.SelEnd := MixTime.Time div 100;
end;

procedure TCueForm1.StartButtonClick(Sender: TObject);
begin
  if XPlayer1.PlayerState = stPlaying then
    XPlayer1.CurrentPosition := StartTime.Time
  else
    XPlayer1.SelectionStart := StartTime.Time;
  UpdateSelectedLength;
end;

procedure TCueForm1.IntroButtonClick(Sender: TObject);
begin
  if XPlayer1.PlayerState = stPlaying then
    XPlayer1.CurrentPosition := IntroTime.Time;
end;

procedure TCueForm1.MixButtonClick(Sender: TObject);
begin
  if XPlayer1.PlayerState = stPlaying then
    XPlayer1.CurrentPosition := MixTime.Time;
  UpdateSelectedLength;
end;

procedure TCueForm1.StartTimeClick(Sender: TObject);
begin
  StartTime.Time := PositionTime.Time;
  if XPlayer1.PlayerState = stPlaying then
    XPlayer1.SelectionStart := PositionTime.Time
  else
    XPlayer1.SelectionStart := PositionTime.Time;
  UpdateSelectedLength;
end;

procedure TCueForm1.IntroTimeClick(Sender: TObject);
begin
  IntroTime.Time := PositionTime.Time;
end;

procedure TCueForm1.MixTimeClick(Sender: TObject);
begin
  MixTime.Time := PositionTime.Time;
  XPlayer1.MixPos := PositionTime.Time;
  UpdateSelectedLength;
end;

procedure TCueForm1.PositionSliderChange(Sender: TObject);
begin
{  if SliderUserChanged then
    PositionTime.Time := PositionSlider.Value }
end;

procedure TCueForm1.FormActivate(Sender: TObject);
begin
  ClearTimes;
  EnableControls(False);
  if UseThread then
  begin
    CueForm1.FileName := DataModule1.FileFind1.FindFile(CueForm1.FileName);
{
    Screen.Cursor := crHourglass;
    ThreadIsActive := True;
    TThreadedFindFile.Create(false); }
  end;
//  else
    OnActivation;
end;

procedure TCueForm1.OnActivation;
begin
  SliderUserChanged := False;
  if FileName = '' then
  begin
    ShowMessage(C_ErrorFileNotFoundInDirectories);
    Exit;
  end;
  StatusBar1.Panels[1].Text := FileName;
  Caption := 'Cueing : ' + ExtractFileName(FileName);
  FileEdit1.Text := MyExtractFileName(FileName);
//  if UseTag then
  Begin
    mp3Tag1.FileName := FileName;
    Try
      mp3Tag1.Read;
    except
      ShowMessage(C_CanNotReadFormFile);
    end;
    StartTime.Time   := mp3Tag1.PlayStart;
    IntroTime.Time   := mp3Tag1.Intro;
    FadeInTime.Time  := mp3Tag1.FadeIn;
    FadeOutTime.Time := mp3Tag1.FadeOut;
    MixTime.Time     := mp3Tag1.MixPos;
    if mp3Tag1.Volume <= 0 Then
       mp3Tag1.Volume := 100;
    LengthTime.Time  := mp3Tag1.Duration;
    ShowMPEGInfo;
  end;
  VolumeSlider.Position := mp3Tag1.Volume;
  VolumeSliderChange(nil);
  XPlayer1.Open(FileName);
end;

procedure TCueForm1.EnableControls(Flag : Boolean);
begin
  btnOK.Enabled       := FLag;
  PlayButton.Enabled  := Flag;
  PauseButton.Enabled := Flag;
  StopButton.Enabled  := Flag;
end;

procedure TCueForm1.ClearTimes;
Begin
  MixTime.Color := clBlack;
  IntroTime.Color := clBlack;
  SliderBar1.Position := 0;
  StatusBar1.Panels[1].Text := '';
  FileEdit1.Text := '';
  ArtistEdit1.Text := '';
  TitleEdit1.Text := '';
  AlbumEdit1.Text := '';
  YearEdit1.Text := '';
  MP3Info3.Caption := '';
  StartTime.Time := 0;
  IntroTime.Time := 0;
  FadeInTime.Time := 0;
  FadeOutTime.Time := 0;
  MixTime.Time := 0;
  PositionTime.Time := 0;
  mp3Tag1.ClearValues;
  UpdateSelectedlength;
end;

procedure TCueForm1.PositionSliderMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
{  SliderUserChanged := True; }
end;

procedure TCueForm1.ShowMPEGInfo;
begin
{  MP3Info1.Caption := mp3Tag1.Version + ' ' + mp3Tag1.Layer;
  MP3Info2.Caption := mp3Tag1.SampleRate + ' ' + mp3Tag1.BitRate + ' ' + mp3Tag1.Mode; }
  ArtistEdit1.Text := mp3Tag1.Artist;
  TitleEdit1.Text  := mp3Tag1.Title;
  AlbumEdit1.Text  := mp3Tag1.Album;
  if mp3Tag1.Year > 0 then
    YearEdit1.Text := IntToStr(mp3Tag1.Year)
  else
    YearEdit1.Text := '';
  StartTime.Time   := mp3Tag1.PlayStart;
  IntroTime.Time   := mp3Tag1.Intro;
  FadeInTime.Time  := mp3Tag1.FadeIn;
  FadeOutTime.Time := mp3Tag1.FadeOut;
  MixTime.Time     := mp3Tag1.MixPos;
  VolumeSlider.Position := mp3Tag1.Volume;
  VolumeSliderChange(nil);
end;

procedure TCueForm1.PositionSliderMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
{  SliderUserChanged := False;
  XPlayer1.SeekTo(PositionSlider.value); }
end;

procedure TCueForm1.XPlayerOnPositionChange(Sender : TObject);
begin
  if not SliderUserChanged then
  begin
    PositionTime.Time := XPlayer1.CurrentPosition;
    SliderBar1.Position := PositionTime.Time div 100;
  end;
  
  if (MixTime.Time > 0) and (PositionTime.Time >= MixTime.Time) then
    MixTime.Color := clBlue
  else
    if MixTime.Color <> clBlack then
      MixTime.Color := clBlack;

  if (IntroTime.Time > 0) and (PositionTime.Time < IntroTime.Time) then
    IntroTime.Color := clBlue
  else
    if IntroTime.Color <> clBlack then
      IntroTime.Color := clBlack;
end;

Procedure TCueForm1.XPlayerOnChange(Sender : TObject);
Begin
  Case XPlayer1.PlayerState of
    stOpened :
      Begin
        StatusBar1.Panels[0].Text := 'Opened';
        if XPlayer1.Duration > 0 then
          LengthTime.Time := XPlayer1.Duration;
        if LengthTime.Time = 0 then
          LengthTime.Time := 1;
        Sliderbar1.Max := LengthTime.Time div 100;
        SliderBar1.Position := 0;
        MP3Info3.Caption := XPlayer1.MPEGInfo;
        EnableControls(True);
        UpdateSelectedLength;
        if AutoPlay then
          PlayButtonClick(nil);
//          XPlayer1.Play;
      end;
    stError :
      Begin
        StatusBar1.Panels[0].Text := 'Error';
        ShowMessage(XPlayer1.ErrorStr);
      end;
    stClosed : StatusBar1.Panels[0].Text := 'Closed';
    stLoading : StatusBar1.Panels[0].Text := 'Loading';
    stPlaying : StatusBar1.Panels[0].Text := 'Playing';
    stPaused  : StatusBar1.Panels[0].Text := 'Paused';
    stStoped  : StatusBar1.Panels[0].Text := 'Stoped';
    stSeeking : StatusBar1.Panels[0].Text := 'Seeking';
    stFadingIn, stFadingOut : StatusBar1.Panels[0].Text := 'Fading';
    stEOF     : StatusBar1.Panels[0].Text := 'EOF';
  end;
end;

procedure TCueForm1.PlayButtonClick(Sender: TObject);
begin
  XPlayer1.Volume         := VolumeSlider.Position;
  XPlayer1.SelectionStart := StartTime.Time;
  XPlayer1.MixPos         := MixTime.Time;
  XPlayer1.FadeIn         := FadeInTime.Time;
  XPlayer1.FadeOut        := FadeOutTime.Time;
  XPlayer1.Play;
end;

procedure TCueForm1.PauseButtonClick(Sender: TObject);
begin
  XPlayer1.Pause;
end;

procedure TCueForm1.StopButtonClick(Sender: TObject);
begin
  XPlayer1.Stop;
  SliderBar1.Position := 0;
  PositionTime.Time := 0;
end;

procedure TCueForm1.FormDeactivate(Sender: TObject);
begin
  if FileName <> '' then
    XPlayer1.Unload;
end;

procedure TCueForm1.FormCreate(Sender: TObject);
begin
  XPlayer1 := TMyXAudioPlayer.Create(self);
  XPlayer1.OnStateChange := XPlayerOnChange;
  XPlayer1.OnPositionChange := XPlayerOnPositionChange;
  FileName := '';
  AutoPlay := False;
  mp3Tag1  := Tmp3Tag.Create(self);
  UseTag   := True;
  UseThread := False;
end;

procedure TCueForm1.FormDestroy(Sender: TObject);
begin
//  SearchDirectories.Free;
  XPlayer1.Free;
  mp3Tag1.free;
end;

Function TCueForm1.SaveTagInfo : Boolean;
begin
  Result := False;
  if UseTag then
  Begin
    with mp3Tag1 do begin
      Artist := ArtistEdit1.Text;
      Title  := TitleEdit1.Text;
      Album  := AlbumEdit1.Text;
      Year   := StrToInt('0'+Trim(YearEdit1.Text));
      PlayStart := StartTime.Time;
      Intro  := IntroTime.Time;
      FadeIn := FadeInTime.Time;
      FadeOut:= FadeOutTime.Time;
      MixPos := MixTime.Time;
      Volume := VolumeSlider.Position;
    end;
    if not mp3Tag1.Save then
      ShowMessage('Error saving mpeg info to file')
    else
      Result := True;
  end;
end;

procedure TCueForm1.FadeOutTimeClick(Sender: TObject);
begin
  FadeOutTime.Time := 1500;
  XPlayer1.FadeOut := FadeOutTime.Time;
end;

procedure TCueForm1.FadeOutTimeDblClick(Sender: TObject);
begin
  FadeOutTime.Time := 0;
  XPlayer1.FadeOut := FadeOutTime.Time;
end;

procedure TCueForm1.btnOKClick(Sender: TObject);
begin
  ModalResult := mrNone;
  if SaveTagInfo then
    ModalResult := mrOK;
end;

procedure TCueForm1.SliderBar1Change(Sender: TObject);
begin
  if SliderUserChanged then
    PositionTime.Time := SliderBar1.Position * 100;
end;

procedure TCueForm1.SliderBar1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SliderUserChanged := True;
end;

procedure TCueForm1.SliderBar1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SliderUserChanged := False;
  if XPlayer1.PlayerState in [stPlaying, stPaused] then
    XPlayer1.CurrentPosition := SliderBar1.Position * 100;
end;

procedure TCueForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Not ThreadIsActive;
end;

procedure TCueForm1.SpinDownClick(Sender: TObject);
begin
  if Sender = StartSpin1 then
  begin
    StartTime.Time := StartTime.Time - 100;
    UpdateSelectedLength;
  end
  else
  if Sender = IntroSpin1 then
    IntroTime.Time := IntroTime.Time - 100
  else
  if Sender = FadeInSpin1 then
  begin
    FadeInTime.Time := FadeInTime.Time - 100;
    if FadeInTime.Time < 0 then
       FadeInTime.Time := 0;
  end
  else
  if Sender = FadeOutSpin1 then
  begin
    FadeOutTime.Time := FadeOutTime.Time - 100;
    if FadeOutTime.Time < 0 then
       FadeOutTime.Time := 0;
  end
  else
  if Sender = MixSpin1 then
  Begin
    MixTime.Time := MixTime.Time - 100;
    if MixTime.Time < 0 then
      MixTime.Time := 0;
    UpdateSelectedLength;
  end;
end;

procedure TCueForm1.SpinUpClick(Sender: TObject);
begin
  if Sender = StartSpin1 then
  begin
    StartTime.Time := StartTime.Time + 100;
    UpdateSelectedLength;
  end
  else
  if Sender = IntroSpin1 then
    IntroTime.Time := IntroTime.Time + 100
  else
  if Sender = FadeInSpin1 then
  begin
    FadeInTime.Time := FadeInTime.Time + 100;
    if FadeInTime.Time > 9900 then
       FadeInTime.Time := 9900;
  end
  else
  if Sender = FadeOutSpin1 then
  begin
    FadeOutTime.Time := FadeOutTime.Time + 100;
    if FadeOutTime.Time > 9900 then
       FadeOutTime.Time := 9900;
  end
  else
  if Sender = MixSpin1 then
  begin
    MixTime.Time := MixTime.Time + 100;
    UpdateSelectedLength;
  end;
end;

end.
