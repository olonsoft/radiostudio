unit CopyHourU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Buttons, JvExExtCtrls, JvComponent,
  JvPanel;

type
  TCopyHourForm = class(TForm)
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    DaysListBox: TListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TJvPanel;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CopyHourForm: TCopyHourForm;

implementation

{$R *.DFM}

procedure TCopyHourForm.RadioGroup1Click(Sender: TObject);
begin
  MaskEdit1.Enabled := RadioGroup1.ItemIndex = 1;
end;

procedure TCopyHourForm.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  for i := 1 to 7 do
    DaysListBox.Items.Add( LongDayNames[i] );
end;

procedure TCopyHourForm.MaskEdit1Exit(Sender: TObject);
begin
  Try
    StrToTime(MaskEdit1.EditText);
  Except
    MaskEdit1.Text := '00:00';
    MaskEdit1.SetFocus;
  end;
end;

end.
