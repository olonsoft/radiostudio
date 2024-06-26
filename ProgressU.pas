unit ProgressU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, JvExControls, JvComponent, JvLabel, StdCtrls;

type
  TfrmProgress = class(TForm)
    Label1: TLabel;
    lblDirectory: TJvLabel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FOnCancel: TNotifyEvent;
  public
    { Public declarations }
  published
    property OnCancel: TNotifyEvent read FOnCancel write FOnCancel;
  end;

var
  frmProgress: TfrmProgress;

implementation

{$R *.dfm}

procedure TfrmProgress.SpeedButton1Click(Sender: TObject);
begin
  if Assigned(FOnCancel) then
    FOnCancel(Self);
end;

end.
