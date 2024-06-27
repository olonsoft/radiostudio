program Traffic;

uses
  Windows,
  Forms,
  CueForm in 'CueForm.pas' {CueForm1},
  DaysSpotsForm in 'DaysSpotsForm.pas' {DaysSpotsForm1},
  Recs in 'Recs.pas' {Form1},
  TrafficForm in 'TrafficForm.pas' {TrafficForm1};

{$R *.RES}

begin
  { --------------------------------------------------- }
  {Attempt to create a named mutex}
  CreateMutex(nil, false, 'Recordings');
  {if it failed then there is another instance}
  if GetLastError = ERROR_ALREADY_EXISTS then begin
   {Send all windows our custom message - only our other}
   {instance will recognise it, and restore itself}
    SendMessage(HWND_BROADCAST,
                RegisterWindowMessage('Recordings'),
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

  Application.Title := 'Traffic';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TCueForm1, CueForm1);
  Application.CreateForm(TDaysSpotsForm1, DaysSpotsForm1);
  Application.CreateForm(TTrafficForm1, TrafficForm1);
  Application.Run;
end.
