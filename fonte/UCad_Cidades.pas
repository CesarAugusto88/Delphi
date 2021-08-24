unit UCad_Cidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, sDBComboBox, dbcgrids, acDBCtrlGrid, sLabel,
  Grids, DBGrids, ExtCtrls, sEdit, DB, IBCustomDataSet, IBTable;

type
  TfrmCadCidades = class(TForm)
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    DBNavigator1: TDBNavigator;
    edCod: TsEdit;
    edNom: TsEdit;
    DBGrid1: TDBGrid;
    IBTable1: TIBTable;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    

    procedure DBGrid1CellClick(Column: TColumn);
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

procedure TfrmCadCidades.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
  var ultcod : Integer;
begin
  {if DataModule1.dsSqlConCidade.State in [dsInsert] then
  begin
        tblAuxCidade.last;
        ultcod := tblAuxCidadeCID_CODIGO.Value+1;
        DataModule1.sqlConCidadeCID_CODIGO.Value:=ultcod;
  end;  }
end;

procedure TfrmCadCidades.DBGrid1CellClick(Column: TColumn);
begin
  edCod.Text := DataModule1.sqlConCidadeCID_CODIGO.AsString;
  edNom.Text := DataModule1.sqlConCidadeCID_NOME.AsString;
end;

end.
