unit UtilityU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ComCtrls, Buttons, StdCtrls, Gauges, ExtCtrls,
  JvSplit, Menus, Grids, DBGrids,
  JvExControls, JvComponent, JvSpeedButton,
  JvExExtCtrls, JvSplitter, CheckLst, JvExCheckLst, JvCheckListBox,
  JvExStdCtrls, JvTextListBox, JvPanel;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    tblArtists: TTable;
    tblTitles: TTable;
    GroupBox1: TGroupBox;
    btnResetArtists: TSpeedButton;
    GroupBox2: TGroupBox;
    brnResetTitles: TSpeedButton;
    Panel1: TJvPanel;
    Panel2: TJvPanel;
    Panel3: TJvPanel;
    TextListBox1: TJvTextListBox;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Panel4: TJvPanel;
    Panel5: TJvPanel;
    Gauge1: TGauge;
    Panel6: TJvPanel;
    Panel7: TJvPanel;
    Panel8: TJvPanel;
    Panel9: TJvPanel;
    RxSplitter1: TJvSplitter;
    Panel10: TJvPanel;
    SpeedButton3: TSpeedButton;
    btnLoad: TSpeedButton;
    btnClear: TSpeedButton;
    btnSave: TSpeedButton;
    btnDeleteFiles: TSpeedButton;
    btnCheck: TSpeedButton;
    HDFilesListBox: TJvCheckListBox;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    PopupMenu1: TPopupMenu;
    Deletefilesfromharddisc1: TMenuItem;
    DBOutListBox1: TJvCheckListBox;
    Selectallfiles1: TMenuItem;
    DeSelectallfiles1: TMenuItem;
    ArtistPlayCountCheck: TCheckBox;
    TitlePlayCountCheck: TCheckBox;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    PopupMenu2: TPopupMenu;
    TopSongs1: TMenuItem;
    DisabledSongs1: TMenuItem;
    TopArtists: TMenuItem;
    Button1: TButton;
    Label3: TLabel;
    Panel11: TJvPanel;
    Panel12: TJvPanel;
    Label2: TLabel;
    SpeedButton4: TSpeedButton;
    RxSpeedButton1: TJvSpeedButton;
    SqlEdit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure brnResetTitlesClick(Sender: TObject);
    procedure btnResetArtistsClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnDeleteFilesClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Deletefilesfromharddisc1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure Selectallfiles1Click(Sender: TObject);
    procedure DeSelectallfiles1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure TopSongs1Click(Sender: TObject);
    procedure TopArtistsClick(Sender: TObject);
    procedure DisabledSongs1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Panel11DblClick(Sender: TObject);
    procedure LMDFMDrop1FMDragDrop(Sender: TObject; fcount, x, y: Integer;
      FileList: TStrings);
  private
    { Private declarations }
    procedure ModifyTable(tbl : TTable);
    Procedure ExecSQL(sql : String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

uses
  SettingsR, MyLibrary, FindFile, ResStringsU, JclFileUtils;

var
  FindFile1 : TFindFile;
  tmpDir1 : String;
  MustStop : Boolean;

procedure TForm1.FormCreate(Sender: TObject);
var
  tmpS : String;
begin
  LoadSettings;
  tmpS := ExtractFilePath(Application.ExeName);
  try
    tmpDir1 := tmpS + MyExtractFileName(Application.ExeName) + '-01.tmp';
    DelTree(tmpDir1);
    ForceDirectories(tmpDir1);
    Session.NetFileDir := RadioSettings.NetDir;
    Session.PrivateDir := tmpDir1;
    Session.Active := True;
  except
    ShowMessage(C_ErrorCanNotCreateTmpDir + tmpDir1);
  end;

  FindFile1 := TFindFile.Create;

  tblArtists.DatabaseName := RadioSettings.DBAlias;
  tblTitles.DatabaseName  := RadioSettings.DBAlias;
  Query1.DatabaseName     := RadioSettings.DBAlias;
  Try
    tblArtists.Open;
    tblTitles.Open;
  except
  end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FindFile1.Free;
  tblArtists.Close;
  tblTitles.Close;
  Query1.Close;
  Session.Active := False;
  DelTree(tmpDir1);
end;

procedure TForm1.ModifyTable(tbl : TTable);
var
  i : Integer;
begin
  Gauge1.MaxValue := tbl.RecordCount;
  i := 0;
  MustStop := False;
  tbl.First;
  While (not tbl.EOF) and (not MustStop) do
  begin
    inc(i);
    Gauge1.Progress := i;
    tbl.Edit;
    if (tbl = tblArtists) then
    begin
      if CheckBox1.Checked then
        tbl.FieldByName('LastPlayed').AsDateTime := 0;
      if CheckBox1.Checked then
        tbl.FieldByName('PlayAgain').AsDateTime := 0;
      if ArtistPlayCountCheck.Checked then
        tbl.FieldByName('PlayCount').AsInteger := 0;
    end
    else
    begin
      if CheckBox3.Checked then
        tbl.FieldByName('PlayedLast').AsDateTime := 0;
      if CheckBox4.Checked then
        tbl.FieldByName('PlayAgain').AsDateTime := 0;
      if TitlePlayCountCheck.Checked then
        tbl.FieldByName('PlayCounter').AsInteger := 0;
    end;
    tbl.Post;
    tbl.Next;
    Application.ProcessMessages;
  end;
end;

procedure TForm1.brnResetTitlesClick(Sender: TObject);
begin
  ModifyTable(tblTitles);
end;

procedure TForm1.btnResetArtistsClick(Sender: TObject);
begin
  ModifyTable(tblArtists);
end;

procedure TForm1.FormActivate(Sender: TObject);
var
  fn : String;
begin
  try
    fn := PathAddSeparator(RadioSettings.LocalDataDir) + C_SearchDirsFile;
    if FileExists(fn) then
      FindFile1.Directories.LoadFromFile(fn);
  Except
    ShowMessage('Error trying to Load Search audio directories');
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  i : Integer;
begin
  MustStop := False;
  Gauge1.MaxValue := tblTitles.RecordCount;
  i := 0;
  FindFile1.BuildFileList;
  tblTitles.First;
  While (not tblTitles.Eof) and (not MustStop) do
  begin
    inc(i);
    Gauge1.Progress := i;
    Label1.Caption := tblTitles.FieldByName('FileName').AsString;
    if FindFile1.FilesList.IndexOfName(Label1.Caption) = -1 then
//    if FindFile1.FindFile(tblTitles.FieldByName('FileName').AsString) = '' then
      TextListbox1.Items.Add( Label1.Caption );
    tblTitles.Next;
    Application.ProcessMessages;
  end;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  MustStop := True;
end;

procedure TForm1.btnLoadClick(Sender: TObject);
var
  i : Integer;
begin
  if OpenDialog1.Execute then
  begin
    i := 0;
    While i <= OpenDialog1.Files.Count-1 do
    begin
      HDFilesListBox.Items.Add(ExtractFileName(OpenDialog1.Files[i]));
      inc(i);
    end;
  end;
end;

procedure TForm1.btnCheckClick(Sender: TObject);
var
  i : Integer;
begin
  Gauge1.MaxValue := HDFilesListBox.Items.Count;
  i := 0;
  MustStop := False;
  While (i <= HDFilesListBox.Items.Count-1) and (not MustStop) do
  begin
    if tblTitles.Locate('FileName',HDFilesListBox.Items[i], [loCaseInsensitive]) then
      HDFilesListBox.Checked[i] := True
    else
      DBOutListBox1.Items.Add(HDFilesListBox.Items[i]);
    inc(i);
    Gauge1.Progress := i;
    Application.ProcessMessages;
  end;
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  HDFilesListBox.Items.Clear;
end;

procedure TForm1.btnSaveClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  Try
    DBOutListBox1.Items.SaveToFile(SaveDialog1.FileName);
    ShowMessage('Saved OK');
  except
  end;
end;

procedure TForm1.btnDeleteFilesClick(Sender: TObject);
begin
  DBOutListBox1.Items.Clear;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  Try
    TextListBox1.Items.SaveToFile(SaveDialog1.FileName);
    ShowMessage('Saved OK');
  except
  end;
end;

procedure TForm1.Deletefilesfromharddisc1Click(Sender: TObject);
var
  fn : String;
  i : Integer;
begin
  if MessageDlg(C_WarningDeleteFiles,
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      if MessageDlg(C_WarningSureDeleteFiles,
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        Gauge1.MaxValue := DBOutListBox1.Items.Count - 1;
        i := 0;
        MustStop := False;
        While (i <= DBOutListBox1.Items.Count - 1) and (not MustStop) do
        begin
          Gauge1.Progress := i;
          if DBOutListBox1.Checked[i] then
          begin
            fn := FindFile1.FindFile( DBOutListBox1.Items[i] );
            if fn <> '' then
            begin
              FileSetAttr(fn, faArchive);
              DeleteFile(fn);
            end;
          end;
          inc(i);
          Application.ProcessMessages;
        end;
      end;
end;

procedure TForm1.PopupMenu1Popup(Sender: TObject);
begin
  Deletefilesfromharddisc1.Enabled := DBOutListBox1.Items.Count > 0;
end;

procedure TForm1.Selectallfiles1Click(Sender: TObject);
var
  i : Integer;
begin
  for i := 0 to DBOutListBox1.Items.Count-1 do
    DBOutListBox1.Checked[i] := True;
end;

procedure TForm1.DeSelectallfiles1Click(Sender: TObject);
var
  i : Integer;
begin
  for i := 0 to DBOutListBox1.Items.Count-1 do
    DBOutListBox1.Checked[i] := False;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  ExecSQL(SqlEdit1.Text);
end;

Procedure TForm1.ExecSQL(sql : String);
begin
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add(SQL);
  Query1.Prepare;
  Query1.Open;
end;


procedure TForm1.TopSongs1Click(Sender: TObject);
begin
  ExecSQL('select filename, playCounter from songs order by playCounter descending');
end;

procedure TForm1.TopArtistsClick(Sender: TObject);
begin
  ExecSQL('select name, playCount from Artists order by playCount descending');
end;

procedure TForm1.DisabledSongs1Click(Sender: TObject);
begin
  ExecSQL('Select FileName from Songs where Enabled = False');
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  fn : String;
  ArtistCode : LongInt;
  i : Integer;
  CountT : Integer;
  CountA : Integer;

begin
  if MessageDlg('This command will DELETE ALL ENTRIES from database. Continue ?',
                 mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit;

  Gauge1.MaxValue := tblTitles.RecordCount;
  tblTitles.First;
  i := 0;
  CountT := 0;
  CountA := 0;
  While not tblTitles.Eof do
  begin
    fn := tblTitles.fieldByName('FileName').AsString;
    Label3.Caption := fn;

    if FindFile1.FindFile(fn) = '' then
    Begin
//    αν το τραγούδι δεν είναι στο listbox
//    if HDFilesListBox.Items.IndexOf(fn) = -1 then
      tblTitles.Delete;
      Inc(CountT);
    end
    else
      tblTitles.Next;
    Gauge1.Progress := i;
    inc(i);
    Application.ProcessMessages;
  end;

  Gauge1.MaxValue := tblArtists.RecordCount;
  tblArtists.First;
  While not tblArtists.EOF do
  begin
    ArtistCode := tblArtists.fieldByName('ArtistCode').AsInteger;
    // αν δεν βρέθηκε ο καλλιτέχνης σε άλλα τραγούδια
    if not tblTitles.Locate('ArtistCode', ArtistCode, []) then
    begin
      tblArtists.Delete;
      Inc(CountA);
    end
    else
      tblArtists.Next;
    Gauge1.Progress := i;
    inc(i);
    Application.ProcessMessages;
  end;
  ShowMessage(Format('Deleted %d Titles, %d Artists', [CountT, CountA]));
end;

procedure TForm1.Panel11DblClick(Sender: TObject);
begin
  Button1.Visible := not Button1.Visible;
end;

procedure TForm1.LMDFMDrop1FMDragDrop(Sender: TObject; fcount, x,
  y: Integer; FileList: TStrings);
var
  i : Integer;
begin
  screen.Cursor:=crHourglass;
  HDFilesListBox.Items.BeginUpdate;
  try
    for i := 0 to fcount-1 do
      HDFilesListBox.Items.Add(ExtractFileName(FileList[i]));
  finally
    screen.Cursor := crDefault;
    HDFilesListBox.Items.EndUpdate;
  end;
end;

end.
