unit MainFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, SettingsR, StdCtrls;

type
  TForm1 = class(TForm)
    btnEnter: TBitBtn;
    btnExit: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEnterClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

uses
  SelectU;

var
  OldWindowProc : Pointer; {Variable for the old windows proc}
  MyMsg : DWord; {custom systemwide message}

function NewWindowProc(WindowHandle : hWnd;
                       TheMessage   : LongInt;
                       ParamW       : LongInt;
                       ParamL       : LongInt) : LongInt stdcall;
begin
  if TheMessage = MyMsg  then begin
   {Tell the application to restore, let it restore the form}
    SendMessage(Application.handle, WM_SYSCOMMAND, SC_RESTORE, 0);
    SetForegroundWindow(Application.Handle);
   {We handled the message - we are done}
    Result := 0;
    exit;
  end;
 {Call the original winproc}
  Result := CallWindowProc(OldWindowProc,
                           WindowHandle,
                           TheMessage,
                           ParamW,
                           ParamL);
end;


procedure TForm1.FormActivate(Sender: TObject);
begin
  SelectForm.ShowSelectTabs := [stDatabase, stInsertFiles];
  SelectForm.InitializeForm;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 {Register a custom windows message}
  MyMsg := RegisterWindowMessage('S19Database');
 {Set form1's windows proc to ours and remember the old window proc}
  OldWindowProc := Pointer(SetWindowLong(Form1.Handle,
                                         GWL_WNDPROC,
                                         LongInt(@NewWindowProc)));
  LoadSettings;
end;

procedure TForm1.btnEnterClick(Sender: TObject);
begin
  SelectForm.ShowModal;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
 {Set form1's window proc back to it's original procedure}
  SetWindowLong(Form1.Handle,
                GWL_WNDPROC,
                LongInt(OldWindowProc));
end;

procedure TForm1.btnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;


begin
 {Tell Delphi to hide it's hidden application window for now to avoid}
 {a "flash" on the taskbar if we halt due to another instance}
  ShowWindow(Application.Handle, SW_HIDE);

end.

