unit DataModule;

interface

uses
  SysUtils, Classes, FindFile;

type
  TDataModule1 = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FileFind1: TFindFile;
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  FileFind1 := TFindFile.Create;
end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(FileFind1);
end;

end.
