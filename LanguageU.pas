unit LanguageU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    procedure RadioGroup1Click(Sender: TObject);
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
  Registry;

procedure SetLocalOverrides(FileName: string; LocaleOverride: string);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    if Reg.OpenKey('Software\Borland\Locales', True) then
      Reg.WriteString(FileName, LocaleOverride);
  finally
    Reg.Free;
  end;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
var
  s, x : String;
begin
  s := ExtractFilePath(Application.ExeName);
  if RadioGroup1.ItemIndex = 1 then
    x := 'enu'
  else
    x := '';
  SetLocalOverrides(s + 'Playlist.exe', x);
  SetLocalOverrides(s + 'Database.exe', x);
  SetLocalOverrides(s + 'Utility.exe', x);
  SetLocalOverrides(s + 'Studio19.exe', x);
  SetLocalOverrides(s + 'Traffic.exe', x);
  SetLocalOverrides(s + 'Log.exe', x);
  SetLocalOverrides(s + 'Settings.exe', x);
end;

end.
