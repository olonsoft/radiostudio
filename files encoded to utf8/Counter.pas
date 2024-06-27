unit Counter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Sec: Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Sec := 10;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Label1.Caption := IntToStr(sec);
  Dec(Sec);
  if Sec < 0 then
    Application.Terminate;
end;

end.
