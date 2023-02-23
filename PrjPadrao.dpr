program PrjPadrao;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMenuPrincipal in 'Menu\uMenuPrincipal.pas' {frmMenuPrincipal},
  uCorFormulario in 'Common\uCorFormulario.pas',
  uFormularioPadrao in 'Modelo\uFormularioPadrao.pas' {formularioPadrao},
  uGerenciador.Form in 'Common\uGerenciador.Form.pas',
  ufrmBarraTop in 'Menu\ufrmBarraTop.pas' {frmBarraTop},
  ufrmLeft in 'Menu\ufrmLeft.pas' {frmLeft},
  ufrmLogin in 'Forms\ufrmLogin.pas' {frmLogin},
  ufrmMultiView in 'Menu\ufrmMultiView.pas' {frmBarraMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.Run;
end.
