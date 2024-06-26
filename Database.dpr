program Database;

uses
  Windows,
  Forms,
  DataFormU in 'DataFormU.pas' {DataForm1},
  StylesU in 'StylesU.pas' {StylesForm},
  SubjectsU in 'SubjectsU.pas' {SubjectsForm},
  cdU in 'cdU.pas' {CDsForm},
  SelectU in 'SelectU.pas' {SelectForm},
  MainFormU in 'MainFormU.pas' {Form1},
  CueForm in 'CueForm.pas' {CueForm1},
  SettingsR in 'SettingsR.pas',
  MyTypes in 'MyTypes.pas',
  MyXaudioPlayer1 in '..\..\MyUnits\MyXAudioPlayer1.pas',
  FindFile in '..\..\MyUnits\FindFile.pas',
  mp3tag in '..\..\MyUnits\Mp3tag.pas',
  DataModule in 'DataModule.pas' {DataModule1: TDataModule};

{$R *.RES}

begin
  { --------------------------------------------------- }
  {Attempt to create a named mutex}
  CreateMutex(nil, false, 'S19Database');
  {if it failed then there is another instance}
  if GetLastError = ERROR_ALREADY_EXISTS then begin
    Application.Initialize;
   {Send all windows our custom message - only our other}
   {instance will recognise it, and restore itself}
    SendMessage(HWND_BROADCAST,
                RegisterWindowMessage('S19Database'),
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
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TSelectForm, SelectForm);
  Application.CreateForm(TDataForm1, DataForm1);
  Application.CreateForm(TStylesForm, StylesForm);
  Application.CreateForm(TSubjectsForm, SubjectsForm);
  Application.CreateForm(TCDsForm, CDsForm);
  Application.CreateForm(TCueForm1, CueForm1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
