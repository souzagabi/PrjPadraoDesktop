program PrjPadrao;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMenuPrincipal in '..\PrjOficina\Menu\uMenuPrincipal.pas' {frmMenuPrincipal},
  uCorFormulario in '..\PrjOficina\Common\uCorFormulario.pas',
  uGerenciador.Form in '..\PrjOficina\Common\uGerenciador.Form.pas',
  ufrmBarraTop in '..\PrjOficina\Menu\ufrmBarraTop.pas' {frmBarraTop},
  ufrmLeft in '..\PrjOficina\Menu\ufrmLeft.pas' {frmLeft},
  ufrmLogin in '..\PrjOficina\Forms\ufrmLogin.pas' {frmLogin},
  ufrmMultiView in '..\PrjOficina\Menu\ufrmMultiView.pas' {frmBarraMenu},
  ufrmConteudoPessoa in '..\PrjOficina\Menu\ufrmConteudoPessoa.pas' {frmConteudoPessoa},
  ufrmConteudoProduto in '..\PrjOficina\Menu\ufrmConteudoProduto.pas' {frmConteudoProduto},
  ufrmConteudoMovimento in '..\PrjOficina\Menu\ufrmConteudoMovimento.pas' {frmConteudoMovimento},
  ufrmConteudoFinanceiro in '..\PrjOficina\Menu\ufrmConteudoFinanceiro.pas' {frmConteudoFinanceiro},
  ufrmConteudoOficina in '..\PrjOficina\Menu\ufrmConteudoOficina.pas' {frmConteudoOficina},
  ufrmConsultaPessoa in '..\PrjOficina\Forms\ufrmConsultaPessoa.pas' {frmConsultaPessoa},
  uFormularioPadrao in 'Modelo\uFormularioPadrao.pas' {formularioPadrao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenuPrincipal, frmMenuPrincipal);
  Application.CreateForm(TfrmConteudoPessoa, frmConteudoPessoa);
  Application.CreateForm(TfrmConteudoProduto, frmConteudoProduto);
  Application.CreateForm(TfrmConteudoMovimento, frmConteudoMovimento);
  Application.CreateForm(TfrmConteudoFinanceiro, frmConteudoFinanceiro);
  Application.CreateForm(TfrmConteudoOficina, frmConteudoOficina);
  Application.CreateForm(TfrmConsultaPessoa, frmConsultaPessoa);
  Application.CreateForm(TformularioPadrao, formularioPadrao);
  Application.Run;
end.
