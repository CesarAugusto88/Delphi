unit UCad_Cidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, sDBComboBox, dbcgrids, acDBCtrlGrid, sLabel,
<<<<<<< HEAD
<<<<<<< HEAD
  Grids, DBGrids, ExtCtrls, sEdit, DB, IBCustomDataSet, IBTable;
=======
  Grids, DBGrids, ExtCtrls, sEdit;
>>>>>>> ef986f9f41bcf168ea640d26d14474703c37eb16
=======
  Grids, DBGrids, ExtCtrls, sEdit;
>>>>>>> ef986f9f41bcf168ea640d26d14474703c37eb16

type
  TfrmCadCidades = class(TForm)
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    DBNavigator1: TDBNavigator;
    ComboBox1: TComboBox;
<<<<<<< HEAD
<<<<<<< HEAD
    edCod: TsEdit;
    edNom: TsEdit;
    tblAuxCidade: TIBTable;
    tblAuxCidadeCID_CODIGO: TIntegerField;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
=======
    edCodCid: TsEdit;
    edNomCid: TsEdit;
    sDBCtrlGrid1: TsDBCtrlGrid;
>>>>>>> ef986f9f41bcf168ea640d26d14474703c37eb16
=======
    edCodCid: TsEdit;
    edNomCid: TsEdit;
    sDBCtrlGrid1: TsDBCtrlGrid;
>>>>>>> ef986f9f41bcf168ea640d26d14474703c37eb16
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

<<<<<<< HEAD
<<<<<<< HEAD
procedure TfrmCadCidades.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
  var ultcod : Integer;
begin
  if DataModule1.dsSqlConCidade.State in [dsInsert] then
  begin
        tblAuxCidade.last;
        ultcod := tblAuxCidadeCID_CODIGO.Value+1;
        DataModule1.sqlConCidadeCID_CODIGO.Value:=ultcod;
  end;
end;

procedure TfrmCadCidades.DBGrid1CellClick(Column: TColumn);
begin
  edCod.Text := DataModule1.sqlConCidadeCID_CODIGO.AsString;
  edNom.Text := DataModule1.sqlConCidadeCID_NOME.AsString;
=======
=======
>>>>>>> ef986f9f41bcf168ea640d26d14474703c37eb16
procedure TfrmCadCidades.DBGrid1CellClick(Column: TColumn);
begin
  edCodCid.Text := DataModule1.sqlConCidade.FieldByName('CID_CODIGO').AsString;
  edNomCid.Text := DataModule1.sqlConCidade.FieldByName('CID_NOME').AsString;
<<<<<<< HEAD
>>>>>>> ef986f9f41bcf168ea640d26d14474703c37eb16
=======
>>>>>>> ef986f9f41bcf168ea640d26d14474703c37eb16
end;

end.
