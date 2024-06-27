unit LoggerU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Buttons, JvComponent,
  JvFormPlacement, JvExExtCtrls, JvPanel, JvAppStorage, JvAppIniStorage;

type
  TForm1 = class(TForm)
    Panel1: TJvPanel;
    Panel2: TJvPanel;
    DatePicker1: TDateTimePicker;
    DatePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    TimePicker1: TDateTimePicker;
    TimePicker2: TDateTimePicker;
    GroupBox1: TGroupBox;
    chSongs: TCheckBox;
    chJingles: TCheckBox;
    chSpots: TCheckBox;
    chTime: TCheckBox;
    chNews: TCheckBox;
    chHardDisc: TCheckBox;
    chPrograms: TCheckBox;
    chErrors: TCheckBox;
    chWarnings: TCheckBox;
    chShowTime: TCheckBox;
    chShowDate: TCheckBox;
    btnShow: TBitBtn;
    ListBox1: TListBox;
    chDescr: TCheckBox;
    chFilters: TCheckBox;
    StatusBar1: TStatusBar;
    FormStorage1: TJvFormStorage;
    btnExport: TBitBtn;
    SaveDialog1: TSaveDialog;
    Edit1: TEdit;
    Label3: TLabel;
    chShowDay1: TCheckBox;
    SepEdit1: TEdit;
    Label4: TLabel;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    procedure FormCreate(Sender: TObject);
    procedure btnShowClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
    Procedure CheckDates;
    procedure ProccessLine(s : String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

uses
  SettingsR, MyTypes;

Var
  LogDir : String;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Try
    LoadSettings;
    LogDir := RadioSettings.NetDir;
    if LogDir[Length(LogDir)] = '\' then
      Delete(LogDir, Length(LogDir), 1);
    LogDir := Copy(LogDir, 1, LastDelimiter('\',LogDir));
    LogDir := LogDir + 'Log\';
  except
  end;
  DatePicker1.DateTime := Now;
  DatePicker2.DateTime := DatePicker1.DateTime;
end;

procedure TForm1.CheckDates;
var
  dt : Integer;
  FileName : String;
  i : Integer;
  sl : TStringList;
begin
  Screen.Cursor := crHourglass;
  sl := TStringList.Create;
  ListBox1.Items.BeginUpdate;
  Try
    for dt := Trunc(DatePicker1.DateTime) to Trunc(DatePicker2.DateTime) do
    begin
      FileName := LogDir + FormatDateTime('yyyymmdd', dt) + '.log';
  //    FileName := LogDir + 'Log-' + FormatDateTime('yyyymmdd', dt) + '.log';
      if FileExists(FileName) then
      begin
        sl.LoadFromFile(FileName);
        for i := 0 to sl.Count -1 do
          ProccessLine(sl[i]);
      end;
    end;
  Finally
    sl.Free;
  end;
  ListBox1.Items.EndUpdate;
  Screen.Cursor := crDefault;	
end;

procedure TForm1.ProccessLine(s : String);
var
  b : Byte;
  txt ,
  Date ,
  Time ,
  Descr : String;
  theTime : TDateTime;
begin
  Try
    TheTime := StrToTime(Copy(s, 12, 8));
    if (theTime >= (TimePicker1.Time - Trunc(TimePicker1.Time))) and (theTime <= (TimePicker2.Time - Trunc(TimePicker1.Time))) then
    begin
      Date := '';
      Time := '';
      Descr := '';
      b := ord(s[21]) - 48;
      if ((TLogItems(b) = liSong) and chSongs.Checked)
         or   ((TLogItems(b) = liJingle) and chJingles.Checked)
         or   ((TLogItems(b) = liSpot) and chSpots.Checked)
         or   ((TLogItems(b) = liTimeAnnounce) and chTime.Checked)
         or   ((TLogItems(b) = liNews) and chNews.Checked)
         or   ((TLogItems(b) = liHardDisc) and chHardDisc.Checked)
         or   ((TLogItems(b) = liNewProgram) and chPrograms.Checked)
         or   ((TLogItems(b) = liError) and chErrors.Checked)
         or   ((TLogItems(b) = liWarning) and chWarnings.Checked) then
      begin
        txt := Copy(s, 23, Length(s));
        if not chFilters.Checked then
          if txt[1] = '*' then
            Delete(txt,1,3);
        if chShowDay1.Checked then
        begin
          TheTime := EncodeDate(StrToInt(Copy(s,1,4)), StrToInt(Copy(s,6,2)), StrToInt(Copy(s,9,2)) );
          date := FormatDateTime('ddd ', TheTime);
        end;
        if chShowDate.Checked then
          Date := date + Copy(s, 1, 10) + SepEdit1.Text;
        if chShowTime.Checked then
          Time := Copy(s, 12, 8) + SepEdit1.Text;
        if chDescr.Checked then
          Descr := LogItemName[TLogItems(b)] + SepEdit1.Text;
    {    if chFilters.Checked then
    }
        if Edit1.Text <> '' then
        begin
          if Pos(Edit1.Text, txt) <> 0 then
          begin
            Txt := Format('%s%s%s%s', [Date, Time, Descr, txt]);
            ListBox1.Items.Add(txt);
          end
        end
        else
        begin
          Txt := Format('%s%s%s%s', [Date, Time, Descr, txt]);
          ListBox1.Items.Add(txt);
        end;
      end;
    end;
  Except
  end;  
end;

procedure TForm1.btnShowClick(Sender: TObject);
begin
  ListBox1.Items.Clear;
  CheckDates;
  StatusBar1.Panels[0].Text := Format('%d lines',[ListBox1.Items.Count]);
end;

procedure TForm1.btnExportClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
    ListBox1.Items.SaveToFile(SaveDialog1.FileName);
end;

end.
