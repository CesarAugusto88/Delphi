unit uMenuPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, sBitBtn, ExtCtrls, sPanel, sLabel,
  acMagn, ComCtrls, sStatusBar, sSkinManager;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Consultas1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    sPanel1: TsPanel;
    sBitBtn1: TsBitBtn;
    sLabelFX1: TsLabelFX;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Cidades1: TMenuItem;
    Produtos1: TMenuItem;
    Produtos2: TMenuItem;
    N1: TMenuItem;
    Sair2: TMenuItem;
    Estoque1: TMenuItem;
    Entrada1: TMenuItem;
    Saida1: TMenuItem;
    sPanel2: TsPanel;
    sStatusBar1: TsStatusBar;
    sSkinManager1: TsSkinManager;
    sBitBtn7: TsBitBtn;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure sBitBtn7Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses USobre, UCad_Cidades;

{$R *.dfm}

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  sStatusBar1.panels[1].Text:='Usuário: ';
  sStatusBar1.panels[2].Text:='Hora: '+ timetostr(time);
  sStatusBar1.panels[3].Text:='Data: '+ datetostr(date);
end;

procedure TfrmPrincipal.sBitBtn7Click(Sender: TObject);
var
  sobre:TfrmSobre;
begin
  sobre:=TfrmSobre.create(self);
  sobre.ShowModal;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
        Close;
end;

procedure TfrmPrincipal.Sair2Click(Sender: TObject);
begin
        Close;
end;

procedure TfrmPrincipal.Cidades1Click(Sender: TObject);
var
  cidades:TfrmCadCidades;
begin
  cidades:=TfrmCadCidades.create(self);
  cidades.ShowModal;
end;

end.
