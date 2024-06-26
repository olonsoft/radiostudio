program Playlist;

uses
  Windows,
  Forms,
  DataFormU in 'DataFormU.pas' {DataForm1},
  StylesU in 'StylesU.pas' {StylesForm},
  SubjectsU in 'SubjectsU.pas' {SubjectsForm},
  cdU in 'cdU.pas' {CDsForm},
  SelectU in 'SelectU.pas' {SelectForm},
  PlayListU in 'PlayListU.pas' {Form1},
  NewHourU in 'NewHourU.pas' {NewHourForm},
  CopyHourU in 'CopyHourU.pas' {CopyHourForm},
  CueForm in 'CueForm.pas' {CueForm1},
  SettingsR in 'SettingsR.pas',
  Splash in 'Splash.pas' {SplashScreen},
  Protect in '..\Protect\Protect.pas',
  Protector in '..\Protect\Protector.pas' {RegForm1},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  FindFile in 'FindFile.pas';

{$R *.RES}

begin
  { --------------------------------------------------- }
  {Attempt to create a named mutex}
  CreateMutex(nil, false, 'S19PlayList');
  {if it failed then there is another instance}
  if GetLastError = ERROR_ALREADY_EXISTS then begin
    Application.Initialize;
   {Send all windows our custom message - only our other}
   {instance will recognise it, and restore itself}
    SendMessage(HWND_BROADCAST,
                RegisterWindowMessage('S19PlayList'),
                0,
                0);
   {Lets quit}
    Halt(0);
  end;
  { --------------------------------------------------- }
  Application.Initialize;
  { --------------------------------------------------- }
  {Tell Delphi to un-hide it's hidden application window}
  {This allows our instance to have a icon on the task bar}
  Application.ShowMainForm := true;
  ShowWindow(Application.Handle, SW_RESTORE);
  { --------------------------------------------------- }
  Application.Title := 'PlayLists';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TSelectForm, SelectForm);
  Application.CreateForm(TDataForm1, DataForm1);
  Application.CreateForm(TStylesForm, StylesForm);
  Application.CreateForm(TSubjectsForm, SubjectsForm);
  Application.CreateForm(TCDsForm, CDsForm);
  Application.CreateForm(TNewHourForm, NewHourForm);
  Application.CreateForm(TCopyHourForm, CopyHourForm);
  Application.CreateForm(TCueForm1, CueForm1);
  Application.CreateForm(TRegForm1, RegForm1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
