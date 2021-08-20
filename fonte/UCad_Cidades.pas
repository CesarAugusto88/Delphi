unit UCad_Cidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, sDBComboBox, dbcgrids, acDBCtrlGrid, sLabel,
  Grids, DBGrids, ExtCtrls;

type
  TfrmCadCidades = class(TForm)
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ComboBox1: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCidades: TfrmCadCidades;

implementation

uses dmDados;

{$R *.dfm}

end.
