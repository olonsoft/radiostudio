unit NewHourU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, JvComponent, JvFormPlacement;

type
  TNewHourForm = class(TForm)
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormStorage1: TJvFormStorage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Hour : String;
    PlayList : String;
  end;

var
  NewHourForm: TNewHourForm;

implementation

{$R *.DFM}

uses
  PlayListU;

procedure TNewHourForm.SpeedButton1Click(Sender: TObject);
begin
  if Form1.OpenDialog1.Execute then
    Edit1.Text := ExtractFileName(Form1.OpenDialog1.FileName);
end;

procedure TNewHourForm.BitBtn1Click(Sender: TObject);
begin
  if Edit1.Text = '' then
    ModalResult := mrNone; 
  Hour := MaskEdit1.EditText;
  PlayList := Edit1.Text;
end;

procedure TNewHourForm.MaskEdit1Exit(Sender: TObject);
begin
  Try
    StrToTime(MaskEdit1.EditText);
  Except
    MaskEdit1.Text := '00:00';
    MaskEdit1.SetFocus;
  end;
end;

end.
