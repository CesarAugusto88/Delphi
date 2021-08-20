program Cursos;

uses
  Forms, sysutils,
  UCursos in 'UCursos.pas' {frmPrincipal},
  Uacesso in 'Uacesso.pas' {frmAcesso};

{$R *.res}

begin
  Application.Initialize;
  frmAcesso:=TfrmAcesso.Create(nil);
  if (frmAcesso.ShowModal = 1) then
  begin
    Application.CreateForm(TfrmPrincipal, frmPrincipal);
    FreeAndNil(frmAcesso);
    Application.Run;
  end;
end.
