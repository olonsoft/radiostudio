unit WaitServer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TWaitServerForm = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dirToCheck : String;
  end;

var
  WaitServerForm: TWaitServerForm;

implementation

{$R *.DFM}

uses
  FileCtrl;

var
  CancelPressed : Boolean;

procedure TWaitServerForm.Button1Click(Sender: TObject);
begin
  Halt(0);
end;

procedure TWaitServerForm.FormCreate(Sender: TObject);
begin
  CancelPressed := False;
end;

procedure TWaitServerForm.FormShow(Sender: TObject);
begin
  CancelPressed := False;
  Repeat
    Application.ProcessMessages;
  Until DirectoryExists( DirToCheck ) or (CancelPressed);
  Close;
{  if CancelPressed then
    ModalResult := mrCancel
  else
    ModalResult := mrOk; }
end;    

end.
