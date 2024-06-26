program studio19;

uses
  JclAppInst, // Added JclAppInst unit
  Windows,
  SysUtils,
  Forms,
  MyTypes in 'MyTypes.pas',
  SettingsR in 'SettingsR.pas',
  GetPrgItemU in 'GetPrgItemU.pas',
  MainPlayer1 in 'MainPlayer1.pas',
  MyLibrary in '..\..\MyUnits\MyLibrary.pas',
  FindFile in 'FindFile.pas',
  DataModule in 'DataModule.pas',
  Splash in 'Splash.pas' {SplashScreen},
  mainform1 in 'mainform1.pas' {Form1},
  CueForm in 'CueForm.pas' {CueForm1},
  cdU in 'cdU.pas' {CDsForm},
  SelectU in 'SelectU.pas' {SelectForm},
  SubjectsU in 'SubjectsU.pas' {SubjectsForm},
  StylesU in 'StylesU.pas',
  DataFormU in 'DataFormU.pas'; {DataForm1}

{$R *.RES}

begin
  JclAppInstances.CheckSingleInstance; // Added instance checking
  Application.Initialize;
  Application.Title := 'On Air';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TCueForm1, CueForm1);
  Application.CreateForm(TSelectForm, SelectForm);
  Application.CreateForm(TCDsForm, CDsForm);
  Application.CreateForm(TStylesForm, StylesForm);
  Application.CreateForm(TSubjectsForm, SubjectsForm);
  Application.CreateForm(TDataForm1, DataForm1);
  Application.Run;
end.
