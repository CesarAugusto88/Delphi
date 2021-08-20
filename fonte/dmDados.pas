
unit dmDados;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBCustomDataSet, IBQuery, IBTable;

type
  TDataModule1 = class(TDataModule)
    IBTransaction1: TIBTransaction;
    sqlConCidade: TIBQuery;
    baseDadosEstoque: TIBDatabase;
    dsSqlConCidade: TDataSource;
    sqlConCidadeCID_CODIGO: TIntegerField;
    sqlConCidadeCID_NOME: TIBStringField;
    sqlConCidadeCID_UF: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation


{$R *.dfm}


end.
