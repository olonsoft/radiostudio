unit DataFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, ComCtrls, BPMEdit, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls,
  DBCGrids, TimeLabel,
  MyXaudioPlayer1, Grids, DBGrids, Spin, JTTrackBar, JvExExtCtrls,
  JvComponent, JvPanel, JvExControls, JvDBLookup;

type
  TDataForm1 = class(TForm)
    Panel5: TJvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    btnNewStyle: TSpeedButton;
    btnOpenFile: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    FileNameEdit: TEdit;
    EnabledCheck: TCheckBox;
    OpenerCheck: TCheckBox;
    QualityCombo: TComboBox;
    ArtistRepeatMaskEdit: TMaskEdit;
    TitleRepeatMaskEdit: TMaskEdit;
    SexCombo: TComboBox;
    CheckCat1: TCheckBox;
    CheckCat2: TCheckBox;
    CheckCat3: TCheckBox;
    CheckCat4: TCheckBox;
    CheckCat5: TCheckBox;
    CheckCat6: TCheckBox;
    CheckCat7: TCheckBox;
    CheckCat8: TCheckBox;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    ArtistLastPlayed: TLabel;
    ArtistCount: TLabel;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label14: TLabel;
    TitleLastPlayed: TLabel;
    TitleCount: TLabel;
    Panel8: TJvPanel;
    btnDelete: TSpeedButton;
    SubjectLookupCombo: TDBLookupComboBox;
    BPMEdit: TBPMEdit;
    DateTimePicker1: TDateTimePicker;
    PromoMaskEdit1: TMaskEdit;
    PromoTimesEdit1: TMaskEdit;
    AutoDeleteCheck1: TCheckBox;
    AutoDeleteTimePicker: TDateTimePicker;
    tblCDs: TTable;
    dsCDs: TDataSource;
    tblAllArtists: TTable;
    dsAllArtists: TDataSource;
    tblAllSongs: TTable;
    dsAllSongs: TDataSource;
    QSongs: TQuery;
    dsQSongs: TDataSource;
    dsStyles: TDataSource;
    dsSubjects: TDataSource;
    Query1: TQuery;
    XAudioPanel: TJvPanel;
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
    PlayButton: TSpeedButton;
    PauseButton: TSpeedButton;
    StopButton: TSpeedButton;
    VolumeLabel: TLabel;
    Label23: TLabel;
    Database1: TDatabase;
    Label24: TLabel;
    btnNewCD: TSpeedButton;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    OpenDialog1: TOpenDialog;
    StatusBar1: TStatusBar;
    StartSpin1: TSpinButton;
    IntroSpin1: TSpinButton;
    FadeInSpin1: TSpinButton;
    FadeOutSpin1: TSpinButton;
    MixSpin1: TSpinButton;
    PositionSlider: JTrackBar;
    VolumeSlider: JTrackBar;
    ArtistLookupEdit: TEdit;
    SongLookupEdit: TEdit;
    CDsLookupCombo: TDBLookupComboBox;
    tblStyles1: TTable;
    tblSubjects1: TTable;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    StylesLookupCombo: TJvDBLookupCombo;
    procedure FormActivate(Sender: TObject);
    procedure DBTextClick(Sender: TObject);
    procedure VolumeSliderChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNewStyleClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnNewCDClick(Sender: TObject);
    procedure tblCDsBeforeDelete(DataSet: TDataSet);
    procedure tblStylesBeforeDelete(DataSet: TDataSet);
    procedure tblSubjectsBeforeDelete(DataSet: TDataSet);
    procedure PlayButtonClick(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure PauseButtonClick(Sender: TObject);
    procedure StopButtonClick(Sender: TObject);
    procedure StartTimeClick(Sender: TObject);
    procedure IntroTimeClick(Sender: TObject);
    procedure FadeOutTimeClick(Sender: TObject);
    procedure MixTimeClick(Sender: TObject);
    procedure FadeOutTimeDblClick(Sender: TObject);
    procedure StartButtonClick(Sender: TObject);
    procedure IntroButtonClick(Sender: TObject);
    procedure MixButtonClick(Sender: TObject);
    procedure PositionSliderChange(Sender: TObject);
    procedure PositionSliderMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PositionSliderMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnOpenFileClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure tblCDsBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpinDownClick(Sender: TObject);
    procedure SpinUpClick(Sender: TObject);
    Procedure UpdateSelectedlength;
  private
    { Private declarations }
    function SetRepeatValue(StrValue:String):TDateTime;
    function GetRepeatValue(value : TDateTime):String;
    procedure GetFieldValues;
    function SaveFieldValues : Boolean;
    procedure ClearAllFields;
    procedure DeleteSong;
    procedure UpdateDataSources;
    procedure LoadAudio;
    procedure ClearTimes;
    Function SaveTagInfo : Boolean;
    procedure EnableControls(Flag : Boolean);
    Procedure XPlayerOnChange(Sender : TObject);
    Procedure XPlayerOnPositionChange(Sender : TObject);

  public
    { Public declarations }
    TitleCode : LongInt;
    FileName  : String;
    Directories : TStringList;
    AudioCard   : String;
    DBAlias     : String;
    AutoPlay    : Boolean;
    XPlayer1    : TMyXAudioPlayer;
    procedure SetProperties;
    procedure InitializeForm;
  end;

var
  DataForm1: TDataForm1;

implementation

{$R *.DFM}

Uses
  SelectU, StylesU, SubjectsU, cdU, FindFile, mp3Tag, MyTypes,
  MyLibrary, ResStringsU, DataModule;

Type
  TEditedRec = Record
    Status     : (stInsert, stEdit);
    ArtistCode : LongInt;
    ArtistName : String;
    TitleCode  : LongInt;
    TitleName  : String;
  end;

Var
  EditedRec : TEditedRec;
  SliderUserChanged : Boolean;
  KeepArtistPlayAgain : TDateTime;
  KeepTitlePlayAgain  : TDateTime;
  AudioFileName       : String;
  mp3Tag1 : Tmp3Tag;
  ThreadIsActive : Boolean;

procedure TDataForm1.FormCreate(Sender: TObject);
begin
  XPlayer1 := TMyXAudioPlayer.Create(self);
  XPlayer1.OnStateChange := XPlayerOnChange;
  XPlayer1.OnPositionChange := XPlayerOnPositionChange;

  Directories := TStringList.Create;
//  FindFile1   := TFindFile.Create;
  mp3tag1     := Tmp3Tag.Create(self);
  QualityCombo.ItemIndex := 6;
  SexCombo.ItemIndex     := 1;
  ThreadIsActive := False;
  DateTimePicker1.DateTime := Now;
end;

procedure TDataForm1.FormDestroy(Sender: TObject);
begin
  XPlayer1.Free;
  Directories.Free;
//  FindFile1.Free;
  mp3Tag1.Free;
  QSongs.Close;
  tblCDs.Active        := False;
  tblAllArtists.Active := False;
  tblAllSongs.Active   := False;
  tblStyles1.Active    := False;
  tblSubjects1.Active  := False;
  Database1.Connected  := False;
end;

procedure TDataForm1.InitializeForm;
begin
  Database1.AliasName := SelectForm.DBAlias;
  Database1.Connected  := True;
{  tblCDs.DatabaseName := SelectForm.DBAlias;
  tblAllArtists.DatabaseName := SelectForm.DBAlias;
  tblAllSongs.DatabaseName := SelectForm.DBAlias;
  tblStyles1.DatabaseName := SelectForm.DBAlias;
  tblSubjects1.DatabaseName := SelectForm.DBAlias;
  QSongs.DatabaseName := SelectForm.DBAlias;
  Query1.DatabaseName := SelectForm.DBAlias; }
  tblCDs.Active        := true;
  tblAllArtists.Active := True;
  tblAllSongs.Active   := True;
  tblStyles1.Active     := True;
  tblSubjects1.Active   := True;
  QSongs.Open;
end;

procedure TDataForm1.FormActivate(Sender: TObject);
begin
  SliderUserChanged := False;
  ClearTimes;
  EnableControls(False);
  if TitleCode = -1 then
  begin
    EditedRec.Status := stInsert;
    ClearAllFields;
    FileNameEdit.Text := FileName;
  end
  else
  begin
    ClearAllFields;
    EditedRec.Status := stEdit;
    EditedRec.TitleCode  := TitleCode;
    GetFieldValues;
  end;

  AudioFileName := DataModule1.FileFind1.FindFile(FileNameEdit.Text);
  if AudioFileName = '' then
    ShowMessage('Δεν βρέθηκε το αρχείο : ' + FileNameEdit.Text)
  else
    LoadAudio;

//  SearchForFileName;
end;

procedure TDataForm1.SetProperties;
begin
//  FindFile1.Directories.AddStrings(Directories);
  XPlayer1.SetOutputName(AudioCard);
end;

Function TDataForm1.SetRepeatValue(StrValue:String):TDateTime;
var
  days, hours, minutes : word;
begin
  days := StrToInt(Copy(StrValue, 1, 2));
  hours := StrToInt(Copy(StrValue, 5, 2));
  minutes := StrToInt(Copy(StrValue, 9, 2));
  Result := Days + EncodeTime(Hours, Minutes, 0, 0);
end;

function TDataForm1.GetRepeatValue(value : TDateTime):String;
var
  tmp, days, hours, minutes : word;
begin
  days := Trunc(Value);
  DecodeTime(value, hours, minutes, tmp, tmp);
  Result := Format('%.2dd/%.2dh:%.2dm', [days, hours, minutes]);
end;

procedure TDataForm1.GetFieldValues;
begin
  // εάν υπάρχει ο κωδικός του τραγουδιού
  if not tblAllSongs.Locate('TitleCode', TitleCode, []) then
  begin
    ShowMessage(C_SongCodeDoesNotExist);
    exit;
  end;

  with EditedRec do
  begin
    ArtistCode := tblAllSongs.fieldByName('ArtistCode').AsInteger;
    TitleName  := tblAllSongs.fieldByName('Title').AsString;
  end;

  with tblAllArtists do
  begin
    if Locate('ArtistCode', tblAllSongs['ArtistCode'], []) then
    begin
      EditedRec.ArtistName      := FieldByName('Name').AsString;
      ArtistLookupEdit.Text     := FieldByName('Name').AsString;
      ArtistLastPlayed.Caption  := DateTimeToStr(FieldByName('LastPlayed').AsDateTime);
      ArtistCount.Caption       := IntToStr(FieldByName('PlayCount').AsInteger);
      ArtistRepeatMaskEdit.Text := GetRepeatValue(FieldByName('Repeat').AsDateTime);
      KeepArtistPlayAgain       := FieldByName('PlayAgain').AsDateTime;
    end
    else
    begin
      ShowMessage(C_ArtistCodeDoesNotExist);
    end;
  end;

  with tblAllSongs do
  begin
    PositionTime.Time      := 0;
    FileNameEdit.Text      := FieldByName('FileName').AsString;
    SongLookupEdit.Text    := FieldByName('Title').AsString;
    // τα παρακάτω δύο χρειάζονται επεξεργασία
    DateTimePicker1.Date   := FieldByName('SYear').AsDateTime;
    IntroTime.Time         := FieldByName('Intro').AsInteger;
    StartTime.Time         := FieldByName('Start').AsInteger;
    LengthTime.Time        := FieldByName('SLength').AsInteger;
    FadeInTime.Time        := FieldByName('FadeIn').AsInteger;
    FadeOutTime.Time       := FieldByName('FadeOut').AsInteger;
    MixTime.Time           := FieldByName('MixPosition').AsInteger;
    VolumeSlider.Position  := -FieldByName('Volume').AsInteger;
    VolumeSliderChange(nil);
    QualityCombo.ItemIndex := FieldByName('Quality').AsInteger;
    BPMEdit.Text           := IntToStr(FieldByName('BPM').AsInteger);
    SexCombo.ItemIndex     := FieldByName('Sex').AsInteger;
    OpenerCheck.Checked    := FieldByName('Opener').AsBoolean;
    TitleRepeatMaskEdit.Text:= GetRepeatValue(FieldByName('SongRepeat').AsDateTime);
    KeepTitlePlayAgain      := FieldByName('PlayAgain').AsDateTime;
    EnabledCheck.Checked    := FieldByName('Enabled').AsBoolean;
    TitleLastPlayed.Caption := DateTimeToStr(FieldByName('PlayedLast').AsDateTime);
    TitleCount.Caption      := IntToStr(FieldByName('PlayCounter').AsInteger);
    PromoTimesEdit1.Text    := Format('%.3d', [FieldByName('PromoCount').AsInteger]);
    PromoMaskEdit1.Text     := GetRepeatValue(FieldByName('PromoRotation').AsDateTime);
    AutoDeleteCheck1.Checked:= FieldByName('AutoDelete').AsBoolean;
    AutoDeleteTimePicker.DateTime := FieldByName('DeleteDate').AsDateTime;

    if tblStyles1.Locate('StyleCode', FieldByName('Style').AsInteger,[]) then
      StylesLookupCombo.KeyValue := tblStyles1['Name']
    else
      ShowMessage(C_WrongStyleCode);

    if tblSubjects1.Locate('SubjectCode', FieldByName('Subject').AsInteger, []) then
      SubjectLookupCombo.KeyValue := tblSubjects1['SubjectName']
    else
      ShowMessage(C_WrongSubjectCode);

    if tblCDs.Locate('CDCode', FieldByName('CDCode').AsInteger,[]) then
      CDsLookupCombo.KeyValue := tblCDs['DiscTitle']
    else
      ShowMessage(C_WrongCDCode);

    CheckCat1.Checked := FieldByName('Category1').AsBoolean;
    CheckCat2.Checked := FieldByName('Category2').AsBoolean;
    CheckCat3.Checked := FieldByName('Category3').AsBoolean;
    CheckCat4.Checked := FieldByName('Category4').AsBoolean;
    CheckCat5.Checked := FieldByName('Category5').AsBoolean;
    CheckCat6.Checked := FieldByName('Category6').AsBoolean;
    CheckCat7.Checked := FieldByName('Category7').AsBoolean;
    CheckCat8.Checked := FieldByName('Category8').AsBoolean;
  end;

  with EditedRec do
  begin
    Status := stEdit;
    ArtistCode := tblAllArtists.FieldByName('ArtistCode').AsInteger;
    ArtistName := tblAllArtists.FieldByName('Name').AsString;
    TitleCode  := tblAllSongs.FieldByName('TitleCode').AsInteger;
    TitleName  := tblAllSongs.FieldByName('Title').AsString;
  end;

{  if AutoLoad.Checked then
    LoadFile(tblCDs.FieldByName('Directory').AsString,
             tblSongs.FieldByName('FileName').AsString);
}
end;

function TDataForm1.SaveFieldValues : Boolean;
var
  ArtistCode1 : LongInt;
//  TitleCode1  : LongInt;
  EditIt      : Boolean;
  RefreshQuery: Boolean;
  ArtistName1,TitleName1: String;
//  i           : Integer;
begin
  Result := False;
  ArtistName1 := Trim(ArtistLookupEdit.Text);
  TitleName1  := Trim(SongLookupEdit.Text);
//  TitleCode1  := 0;
  if ArtistName1 = '' then
  begin
    ShowMessage(C_NoArtistEntered);
    Exit;
  end;
  if TitleName1 = '' then
  begin
    ShowMessage(C_NoTitleEntered);
    Exit;
  end;

  RefreshQuery := (EditedRec.ArtistName <> ArtistName1);
  try
    try
      Database1.StartTransaction;

      tblAllSongs.DisableControls;
      tblAllArtists.DisableControls;
//      tblSongs.DisableControls;

//      tblSongs.Active := False;
      EditIt := False;
      with EditedRec do
      begin
        if RefreshQuery then
          QSongs.Active := False;
        if Status = stEdit then
        begin
          // αν άλλαξε ο καλλιτέχνης
          if RefreshQuery then
       {  αν ο παλιός καλλιτέχνης υπάρχει σε περισσότερα από 1 τραγούδια
          τότε κάνε insert τον νέο και διόρθωσε το current record
          αλλιώς απλά διόρθωσε το current record  }
          begin
            Query1.Params[0].AsInteger := ArtistCode;
            Query1.Open;
            // αν ο καλλιτέχνης υπάρχει μόνο μια φορά
            if Query1.FieldByName('ArtistsAtSongs').AsInteger = 1 then
            begin
              // εάν ο καλλιτέχνης που καταχωρούμε δεν υπάρχει τότε
              // διόρθωσε τον μοναδικό που βρήκαμε (θα γίνει αλλαγή ονόματος)
              if not tblAllArtists.Locate('Name', ArtistName1, [loCaseInsensitive]) then
                EditIt := True
              else
              // αλλιώς διέγραψε τον μοναδικό που βρήκαμε
              Begin
                if tblAllArtists.Locate('ArtistCode', ArtistCode,[]) then
                  tblAllArtists.Delete;
                //tblAllArtists.ApplyUpdates;
              end;
            end;
            Query1.Close;
          end;
        end;
      end;

      with tblAllArtists do
      begin
        // εάν αλλάξαμε το όνομα του καλλιτέχνη που υπάρχει μόνο σε ένα τραγούδι
        if EditIt then
        begin
          Locate('ArtistCode', EditedRec.ArtistCode,[]);
          Edit;
        end
        else
        begin
          // ο καλλιτέχνης δεν υπάρχει και κάνουμε insert
          if not Locate('Name', ArtistName1, [loCaseInsensitive]) then
          Begin
            ArtistCount.Caption := '0';
            ArtistLastPlayed.Caption := '0';
            KeepArtistPlayAgain := 0;
            Insert;
          end
          else
            // αλλιώς αν υπάρχει απλά τον διορθώνουμε (αν χρειάζεται)
            Edit;
        end;

        FieldByName('Name').AsString := ArtistName1;
        FieldByName('Repeat').AsDateTime   :=  SetRepeatValue(ArtistRepeatMaskEdit.EditText);
        FieldByName('PlayCount').AsInteger :=  StrToInt(ArtistCount.Caption);
        FieldByName('LastPlayed').AsDateTime := StrToDateTime(ArtistLastPlayed.Caption);
        FieldByName('PlayAgain').AsDateTime := KeepArtistPlayAgain;
        Post;
      end;

      ArtistCode1 := tblAllArtists.FieldByName('ArtistCode').AsInteger;

      EditIt := False;
      with EditedRec do
        if Status = stEdit then
          if tblAllSongs.Locate('TitleCode', TitleCode, []) then
            EditIt := True;

      with tblAllSongs do
      begin
        if EditIt  then
          Edit
        else
        Begin
          TitleCount.Caption := '0';
          TitleLastPlayed.Caption := '0';
          KeepTitlePlayAgain := 0;
          Insert;
        end;
{        if not Locate('ArtistCode;Title',
                      VarArrayOf([ArtistCode1, SongLookupEdit.Text]),
                      [loCaseInsensitive]) then
          insert
        else
          edit;       }
        FieldByName('Filename').AsString := FileNameEdit.Text;
        FieldByName('Title').AsString := TitleName1;
         // θέλει επεξαργασία
        FieldByName('SYear').AsDateTime := DateTimePicker1.Date;
        FieldByName('Intro').AsInteger  := IntroTime.Time;
        FieldByName('SLength').AsInteger := LengthTime.Time;
        FieldByName('Start').AsInteger   := StartTime.Time;
        FieldByName('FadeIn').AsInteger  := FadeInTime.Time;
        FieldByName('FadeOut').AsInteger := FadeOutTime.Time;
        FieldByName('MixPosition').AsInteger := MixTime.Time;
        FieldByName('Volume').AsInteger      := -VolumeSlider.Position;

        FieldByName('Opener').AsBoolean := OpenerCheck.Checked;
        FieldByName('Sex').AsInteger    := SexCombo.ItemIndex;
        FieldByName('Quality').AsInteger:= QualityCombo.ItemIndex;
        if StrToInt(BPMEdit.Text) > 255 then
          BPMEdit.Text := '255';
        FieldByName('BPM').AsInteger := StrToInt(BPMEdit.Text);
        FieldByName('PlayCounter').AsInteger := StrToInt(TitleCount.Caption);
        FieldByName('PlayedLast').AsDateTime := StrToDateTime(TitleLastPlayed.Caption);
        FieldByName('SongRepeat').AsDateTime := SetRepeatValue(TitleRepeatMaskEdit.EditText);
        FieldByName('PlayAgain').AsDateTime := KeepTitlePlayAgain;
        FieldByName('Enabled').AsBoolean   := EnabledCheck.Checked;

        FieldByName('Category1').AsBoolean := CheckCat1.Checked;
        FieldByName('Category2').AsBoolean := CheckCat2.Checked;
        FieldByName('Category3').AsBoolean := CheckCat3.Checked;
        FieldByName('Category4').AsBoolean := CheckCat4.Checked;
        FieldByName('Category5').AsBoolean := CheckCat5.Checked;
        FieldByName('Category6').AsBoolean := CheckCat6.Checked;
        FieldByName('Category7').AsBoolean := CheckCat7.Checked;
        FieldByName('Category8').AsBoolean := CheckCat8.Checked;
        FieldByName('Style').AsInteger     := tblStyles1.FieldByName('StyleCode').AsInteger;
        FieldByName('Subject').AsInteger   := tblSubjects1.FieldByName('SubjectCode').AsInteger;
        FieldByName('Start').AsInteger     := StartTime.Time;
        FieldByName('Intro').AsInteger     := IntroTime.Time;
        FieldByName('SLength').AsInteger   := LengthTime.Time;
        FieldByName('FadeIn').AsInteger    := FadeInTime.Time;
        FieldByName('FadeOut').AsInteger   := FadeOutTime.Time;
        FieldByName('MixPosition').AsInteger := MixTime.Time;
        FieldByName('ArtistCode').AsInteger  := ArtistCode1;
        FieldByName('AutoDelete').AsBoolean  := AutoDeleteCheck1.Checked;
        FieldByName('DeleteDate').AsDateTime := AutoDeleteTimePicker.DateTime;
        FieldByName('PromoCount').AsInteger  := StrToInt(PromoTimesEdit1.EditText);
        FieldByName('PromoRotation').AsDateTime := SetRepeatValue(PromoMaskEdit1.EditText);
        FieldByName('CDCode').AsInteger      := tblCDs.FieldByName('CDCode').AsInteger;
        Post;

        // σώσε πληροφορίες στο mp3 tag
        SaveTagInfo;
      end;
      Database1.Commit;
      Result := True;
    Except
      Database1.Rollback;
      tblAllSongs.Cancel;
      tblAllArtists.Cancel;
      Raise;
    end;
//    TitleCode1 := tblAllSongs['TitleCode'];
  finally
    if RefreshQuery then
      QSongs.Active := True;

    UpdateDataSources;
    tblAllSongs.EnableControls;
    tblAllArtists.EnableControls;
  end
end;

procedure TDataForm1.DBTextClick(Sender: TObject);
begin
  if Sender = DBText1 then
    CheckCat1.Checked := Not CheckCat1.Checked
  else
  if Sender = DBText2 then
    CheckCat2.Checked := Not CheckCat2.Checked
  else
  if Sender = DBText3 then
    CheckCat3.Checked := Not CheckCat3.Checked
  else
  if Sender = DBText4 then
    CheckCat4.Checked := Not CheckCat4.Checked
  else
  if Sender = DBText5 then
    CheckCat5.Checked := Not CheckCat5.Checked
  else
  if Sender = DBText6 then
    CheckCat6.Checked := Not CheckCat6.Checked
  else
  if Sender = DBText7 then
    CheckCat7.Checked := Not CheckCat7.Checked
  else
  if Sender = DBText8 then
    CheckCat8.Checked := Not CheckCat8.Checked
end;

procedure TDataForm1.DeleteSong;
begin
  Database1.StartTransaction;
  try
    QSongs.Active := False;
    try
      with tblAllSongs do
      begin
        if locate('TitleCode', EditedRec.TitleCode, []) then
        begin
          Delete;
          dsAllSongs.DataSet.Refresh;
        end;
      end;

      // εάν δεν υπάρχει ο ίδιος κωδικός καλλιτέχνη σε άλλο τραγούδι
      if not tblAllSongs.locate('ArtistCode', EditedRec.ArtistCode,[]) then
        // σβήσε και τον καλλιτέχνη από το αρχείο καλλιτεχνών
        if tblAllArtists.locate('ArtistCode',EditedRec.ArtistCode,[]) then
        begin
          tblAllArtists.Delete;
        end;
      ClearAllFields;
      Database1.Commit;
      UpdateDataSources;
    except
      Database1.Rollback;
      raise;
    end;
  Finally
    QSongs.Active := True;
  end;
end;


procedure TDataForm1.ClearAllFields;
begin
  FileNameEdit.text    := '';
  ArtistLookupEdit.text := '';
  SongLookupEdit.Text  := '';
  BPMEdit.text         := '100';
  OpenerCheck.Checked  := False;
  EnabledCheck.Checked := True;
  ArtistCount.Caption  := '0';
  TitleCount.Caption   := '0';
  ArtistLastPlayed.Caption := '0';
  TitleLastPlayed.Caption  := '0';
{  SexCombo.ItemIndex   := 0;
  QualityCombo         := '8';
  DateMaskEdit         := '00/00/00';
}
  StartTime.Time := 0;
  IntroTime.Time := 0;
  FadeInTime.Time := 0;
//  FadeOutTime.Time := SongsSettingsRec.FadeOutTime;
  MixTime.Time    := 0;
  UpdateSelectedlength;
end;

procedure TDataForm1.VolumeSliderChange(Sender: TObject);
begin
  VolumeLabel.Caption := IntToStr(-VolumeSlider.Position);
  if XPlayer1.PlayerState = stPlaying then
    XPlayer1.SetVolume(-VolumeSlider.Position, 50)
  else
    XPlayer1.Volume := -VolumeSlider.Position;
end;

procedure TDataForm1.UpdateDataSources;
begin
  dsAllArtists.DataSet.Refresh;
  dsAllSongs.DataSet.Refresh;
end;

procedure TDataForm1.btnNewStyleClick(Sender: TObject);
begin
  if StylesForm.ShowModal = mrOK then
    tblStyles1.Refresh;
end;

procedure TDataForm1.SpeedButton3Click(Sender: TObject);
begin
  if SubjectsForm.ShowModal = mrOK then
    tblSubjects1.Refresh;
end;

procedure TDataForm1.btnNewCDClick(Sender: TObject);
begin
  if CDsForm.ShowModal = mrOK then
    tblCDs.Refresh;
end;

procedure TDataForm1.tblCDsBeforeDelete(DataSet: TDataSet);
begin
  if tblAllSongs.Locate('CDCode', DataSet.FieldByName('CDCode').AsInteger, []) then
  begin
    ShowMessage(C_CanNotDeleteCD);
    Abort;
  end;
end;

procedure TDataForm1.tblStylesBeforeDelete(DataSet: TDataSet);
begin
  if tblAllSongs.Locate('Style', DataSet.FieldByName('StyleCode').AsString, []) then
  begin
    ShowMessage(C_CanNotDeleteStyle);
    Abort;
  end;
end;

procedure TDataForm1.tblSubjectsBeforeDelete(DataSet: TDataSet);
begin
  if tblAllSongs.Locate('Subject', DataSet.FieldByName('SubjectCode').AsString, []) then
  begin
    ShowMessage(C_CanNotDeleteSubject);
    Abort;
  end;
end;

procedure TDataForm1.LoadAudio;
begin
  StatusBar1.Panels[1].Text := AudioFileName;
  XPlayer1.Open(AudioFileName);
end;

Procedure TDataForm1.XPlayerOnChange(Sender : TObject);
Begin
  Case XPlayer1.PlayerState of
    stOpened :
      Begin
        StatusBar1.Panels[0].Text := 'Opened';
        if XPlayer1.Duration > 0 then
          LengthTime.Time := XPlayer1.Duration;
        if LengthTime.Time = 0 then
          LengthTime.Time := 1;
        PositionSlider.Max := LengthTime.Time div 100;
        PositionSlider.Position := 0;
//        MP3Info3.Caption := XPlayer1.MPEGInfo;
        EnableControls(True);
        UpdateSelectedlength;
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

procedure TDataForm1.PlayButtonClick(Sender: TObject);
begin
  XPlayer1.Volume         := -VolumeSlider.Position;
  XPlayer1.SelectionStart := StartTime.Time;
  XPlayer1.MixPos         := MixTime.Time;
  XPlayer1.FadeIn         := FadeInTime.Time;
  XPlayer1.FadeOut        := FadeOutTime.Time;
  XPlayer1.Play;
end;

procedure TDataForm1.FormDeactivate(Sender: TObject);
begin
  if AudioFileName <> '' then
    XPlayer1.Unload;
end;

procedure TDataForm1.PauseButtonClick(Sender: TObject);
begin
  XPlayer1.Pause;
end;

procedure TDataForm1.StopButtonClick(Sender: TObject);
begin
  XPlayer1.Stop;
  PositionSlider.Position := 0;
  PositionTime.Time := 0;
end;

procedure TDataForm1.StartTimeClick(Sender: TObject);
begin
  StartTime.Time := PositionTime.Time;
  UpdateSelectedlength;
end;

procedure TDataForm1.IntroTimeClick(Sender: TObject);
begin
  IntroTime.Time := PositionTime.Time;
end;

procedure TDataForm1.FadeOutTimeClick(Sender: TObject);
begin
  FadeOutTime.Time := 1500;
end;

procedure TDataForm1.MixTimeClick(Sender: TObject);
begin
  MixTime.Time := PositionTime.Time;
  UpdateSelectedlength;
end;

procedure TDataForm1.FadeOutTimeDblClick(Sender: TObject);
begin
  FadeOutTime.Time := 0;
end;

procedure TDataForm1.StartButtonClick(Sender: TObject);
begin
  if XPlayer1.PlayerState = stPlaying then
    XPlayer1.CurrentPosition := StartTime.Time
  else
    XPlayer1.SelectionStart := StartTime.Time;
end;

procedure TDataForm1.IntroButtonClick(Sender: TObject);
begin
  if XPlayer1.PlayerState = stPlaying then
    XPlayer1.CurrentPosition := IntroTime.Time;
end;

procedure TDataForm1.MixButtonClick(Sender: TObject);
begin
  if XPlayer1.PlayerState = stPlaying then
    XPlayer1.CurrentPosition := MixTime.Time;
end;

procedure TDataForm1.PositionSliderChange(Sender: TObject);
begin
  if SliderUserChanged then
    PositionTime.Time := PositionSlider.Position * 100;
end;

procedure TDataForm1.PositionSliderMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SliderUserChanged := True;
end;

procedure TDataForm1.PositionSliderMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SliderUserChanged := False;
  if XPlayer1.PlayerState in [stPlaying, stPaused] then
    XPlayer1.CurrentPosition := PositionSlider.Position * 100;
end;

procedure TDataForm1.ClearTimes;
begin
  MixTime.Color := clBlack;
  IntroTime.Color := clBlack;
  StatusBar1.Panels[1].Text := '';
  StatusBar1.Panels[0].Text := '';
  StartTime.Time := 0;
  IntroTime.Time := 0;
  FadeInTime.Time := 0;
  FadeOutTime.Time := 0;
  MixTime.Time := 0;
  PositionTime.Time := 0;
{  PlayInfo.PlayStart := 0;
  PlayInfo.Intro := 0;
  PlayInfo.FadeIn := 0;
  PlayInfo.FadeOut := 0;
  PlayInfo.MixPos := 0;
  PlayInfo.Volume := 100;     }
end;

procedure TDataForm1.XPlayerOnPositionChange(Sender : TObject);
begin
  if not SliderUserChanged then
  begin
    PositionTime.Time := XPlayer1.CurrentPosition;
    PositionSlider.Position := PositionTime.Time div 100;
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

procedure TDataForm1.BitBtn1Click(Sender: TObject);
begin
  if SaveFieldValues then
    ModalResult := mrOk
  else
    ShowMessage(C_ErrorSavingToDatabase);
end;

Function TDataForm1.SaveTagInfo : Boolean;
var
  day, month, year : word;
begin
  mp3Tag1.FileName := AudioFileName;
  Result := False;
  Try
    mp3Tag1.Read;
  except
  end;

//  mp3Tag1.Album  := '';
  DecodeDate(DateTimePicker1.Date, Year, Month , Day);
  mp3Tag1.Year   := Year;
  With mp3Tag1 do begin
    Artist := ArtistLookupEdit.Text;
    Title  := SongLookupEdit.Text;
    PlayStart := StartTime.Time;
    Intro  := IntroTime.Time;
    FadeIn := FadeInTime.Time;
    FadeOut:= FadeOutTime.Time;
    MixPos := MixTime.Time;
    Volume := -VolumeSlider.Position;
  end;
  Try
    mp3Tag1.Save;
    Result := True;
  except
    ShowMessage(C_ErrorSavingMPegInfo);
  end;
end;

procedure TDataForm1.btnDeleteClick(Sender: TObject);
begin
  if MessageDlg(C_SureDeleteRecord,
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DeleteSong;
    ModalResult := mrOK;
  end;
end;

procedure TDataForm1.btnOpenFileClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    AudioFileName := OpenDialog1.FileName;
    FileNameEdit.Text := ExtractFileName(OpenDialog1.FileName);
    LoadAudio;
  end;
end;

procedure TDataForm1.Label1Click(Sender: TObject);
var
  i,k : Integer;
begin
  if FileNameEdit.Text <> '' then
  begin
    i := Pos('--', FileNameEdit.Text);
    k := 2;
    if i = 0 then
    begin
      i := Pos('-', FileNameEdit.Text);
      k := 1;
    end;
    if i > 0 then
    begin
      ArtistLookUpEdit.Text := Trim(Copy(FileNameEdit.Text, 1, i-1));
      SongLookupEdit.Text   := Trim(MyExtractFileName(Copy(FileNameEdit.Text, i+k, Length(FileNameEdit.Text))));
    end;
  end;
end;

procedure TDataForm1.tblCDsBeforePost(DataSet: TDataSet);
begin
  if Dataset.FieldByName('CDCode').AsInteger = 0 then
  Begin
    ShowMessage(C_CodeMustBeUnique);
    Abort;
  end;
  if DataSet.FieldByName('DiscTitle').AsString = '' then
  begin
    ShowMessage(C_CDTitleMustHaveValue);
    Abort;
  end;
end;

procedure TDataForm1.EnableControls(Flag : Boolean);
begin
  PlayButton.Enabled  := Flag;
  PauseButton.Enabled := Flag;
  StopButton.Enabled  := Flag;
end;

procedure TDataForm1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := Not ThreadIsActive;  
end;


procedure TDataForm1.SpinDownClick(Sender: TObject);
begin
  if Sender = StartSpin1 then
  begin
    StartTime.Time := StartTime.Time - 100;
    UpdateSelectedlength;
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
    UpdateSelectedlength;
  end;
end;

procedure TDataForm1.SpinUpClick(Sender: TObject);
begin
  if Sender = StartSpin1 then
  begin
    StartTime.Time := StartTime.Time + 100;
    UpdateSelectedlength;
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
    UpdateSelectedlength;
  end;
end;

procedure TDataForm1.UpdateSelectedlength;
begin
  PositionSlider.SelStart := StartTime.Time div 100;
  PositionSlider.SelEnd   := MixTime.Time div 100;
end;

end.
