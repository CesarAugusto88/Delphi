unit Uacesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IBDatabase, DB, IBCustomDataSet, IBQuery, Menus, inifiles,
  Grids, DBGrids;

type
  TfrmAcesso = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    editUsuario: TEdit;
    editSenha: TEdit;
    btAcesso: TButton;
    BANCO_DADOS: TIBDatabase;
    IBTransaction1: TIBTransaction;
    dsAcesso: TDataSource;
    ibqueryLogin: TIBQuery;
    PopupMenu1: TPopupMenu;
    Novobancodedados1: TMenuItem;
    OpenDialog1: TOpenDialog;
    ibqueryLoginUSU_CODIGO: TIntegerField;
    ibqueryLoginUSU_NOME: TIBStringField;
    ibqueryLoginUSU_LOGIN: TIBStringField;
    ibqueryLoginUSU_SENHA: TIBStringField;
    ibqueryLoginUSU_NIVEL: TIntegerField;
    procedure btAcessoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Novobancodedados1Click(Sender: TObject);
  private
    { Private declarations }
    tentativas:integer;
    iniConf:TIniFile;
  public
    { Public declarations }
    usuario:String;
  end;

var
  frmAcesso: TfrmAcesso;

implementation

uses Math;

{$R *.dfm}

procedure TfrmAcesso.btAcessoClick(Sender: TObject);
begin
  ibqueryLogin.Close;
  ibqueryLogin.ParamByName('nome').AsString:=editUsuario.Text;
  ibqueryLogin.ParamByName('senha').AsString:=editSenha.Text;
  ibqueryLogin.Open;
  if (ibqueryLogin.RecordCount > 0) then
  begin
    ShowMessage('Acesso liberado.');
    //usuario:=ibqueryLoginUSU_LOGIN.Value;
    usuario:=editUsuario.Text;
  end
  else
  begin
    ModalResult := mrNone; // anula ação do Ok
    if ((tentativas = 1) or (tentativas = 2)) then
    begin
      ShowMessage('Acesso negado. Você tem 3 tentativas. Tentativa ' +
                  IntToStr(tentativas));
      Inc(tentativas);
    end
    else
    begin
      ShowMessage('Sem chance para acesso. Acesso NEGADO.');
      Close;
    end
  end;
end;

procedure TfrmAcesso.FormCreate(Sender: TObject);
begin
  tentativas := 1;
  // Cria arquivo com path
  iniConf:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'conf.ini');
  BANCO_DADOS.Connected := False;
  BANCO_DADOS.DatabaseName := iniConf.ReadString('banco_dados', 'path', '');
  try
    BANCO_DADOS.Connected := True;
  except
    ShowMessage('Erro na conexão com banco de dados.');
  end;
  
end;

procedure TfrmAcesso.Novobancodedados1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    BANCO_DADOS.Connected := False;
    BANCO_DADOS.DatabaseName:=OpenDialog1.FileName;
    // Escreve no arquivo
    iniConf.WriteString('banco_dados', 'path', 'CESAR:'+BANCO_DADOS.DatabaseName);
    try
      BANCO_DADOS.Connected := True;
      ibqueryLogin.Open;
    except
      ShowMessage('Erro na conexão com banco de dados.');
    end;

  end;
end;

end.
