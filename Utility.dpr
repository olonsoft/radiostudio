program Utility;

uses
  Forms,
  UtilityU in 'UtilityU.pas' {Form1},
  FindFile in 'FindFile.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Utility';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
