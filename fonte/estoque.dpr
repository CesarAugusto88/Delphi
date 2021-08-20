program estoque;

uses
  Forms,
  uMenuPrincipal in 'uMenuPrincipal.pas' {frmPrincipal},
  USobre in 'USobre.pas' {frmSobre},
  UCad_Cidades in 'UCad_Cidades.pas' {frmCadCidades},
  dmDados in 'dmDados.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadCidades, frmCadCidades);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
