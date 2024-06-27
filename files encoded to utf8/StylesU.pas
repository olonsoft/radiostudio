unit StylesU;

interface                    

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Grids, DBGrids, ExtCtrls, Db, DBTables, DBCtrls,
  StdCtrls, JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvPanel, JvExExtCtrls,
  JvComponent;

type
  TStylesForm = class(TForm)
    Panel1: TJvPanel;
    Panel2: TJvPanel;
    DBNavigator1: TDBNavigator;
    Panel3: TJvPanel;
    BitBtn1: TBitBtn;
    JvDBUltimGrid1: TJvDBUltimGrid;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StylesForm: TStylesForm;

implementation

{$R *.DFM}

Uses
  DataFormU;

procedure TStylesForm.SpeedButton1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

end.
