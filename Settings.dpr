program Settings;

uses
  Forms,
  SettingsU in 'SettingsU.pas' {Form1},
  SettingsR in 'SettingsR.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Settings';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
