unit cdU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, DBCtrls, JvPanel,
  JvExExtCtrls, JvComponent;

type
  TCDsForm = class(TForm)
    Panel1: TJvPanel;
    Panel2: TJvPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Panel3: TJvPanel;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CDsForm: TCDsForm;

implementation

{$R *.DFM}

uses
  DataFormU;

end.
