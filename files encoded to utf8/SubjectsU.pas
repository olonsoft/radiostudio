unit SubjectsU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Buttons, ExtCtrls, DBCtrls, StdCtrls, DBFEdit,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, JvPanel, JvExExtCtrls, JvComponent;

type
  TSubjectsForm = class(TForm)
    Panel1: TJvPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TJvPanel;
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
  SubjectsForm: TSubjectsForm;

implementation

{$R *.DFM}

Uses
  DataFormU;

procedure TSubjectsForm.SpeedButton1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

end.
