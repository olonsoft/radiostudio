program Log;

uses
  Forms,
  LoggerU in 'LoggerU.pas' {Form1},
  SettingsR in 'SettingsR.pas',
  ResStringsU in 'ResStringsU.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
