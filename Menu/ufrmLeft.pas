unit ufrmLeft;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani, FMX.Effects;

type
  TfrmLeft = class(TForm)
    lytMain: TLayout;
    rctLeft: TRectangle;
    lyt20BtnSair: TLayout;
    rctSair: TRectangle;
    sdwSair: TShadowEffect;
    fltAnimeSair1: TFloatAnimation;
    fltAnimeSair2: TFloatAnimation;
    lbSair: TLabel;
    lyt01Pessoa: TLayout;
    Pessoa: TRectangle;
    sdwPessoa: TShadowEffect;
    fltAnimePessoa1: TFloatAnimation;
    fltAnimePessoa2: TFloatAnimation;
    lbPessoa: TLabel;
    lyt03Produto: TLayout;
    rctProdutos: TRectangle;
    sdwProdutos: TShadowEffect;
    fltProdutos1: TFloatAnimation;
    fltProdutos2: TFloatAnimation;
    sdwLeft: TShadowEffect;
    PathPessoa: TPath;
    PathProdutos: TPath;
    lbProdutos: TLabel;
    lyt04Movimento: TLayout;
    rctMovimento: TRectangle;
    sdwMovimento: TShadowEffect;
    fltMovimento1: TFloatAnimation;
    fltMovimento2: TFloatAnimation;
    PathMovimento: TPath;
    lblMovimento: TLabel;
    lyt05Financeiro: TLayout;
    rctFinanceiro: TRectangle;
    sdwFinanceiro: TShadowEffect;
    fltFinanceiro1: TFloatAnimation;
    fltFinanceiro2: TFloatAnimation;
    PathFinanceiro: TPath;
    lblFinanceiro: TLabel;
    PathSair: TPath;
    lyt06Oficina: TLayout;
    rctOficina: TRectangle;
    sdwOficina: TShadowEffect;
    fltOficina1: TFloatAnimation;
    fltOficina2: TFloatAnimation;
    PathOficina: TPath;
    lblOficina: TLabel;
    lyt07Content: TLayout;

    procedure rctSairClick(Sender: TObject);

    procedure FormCreate(Sender: TObject);

    procedure PessoaClick(Sender: TObject);
    procedure rctBtnCadPessoaClick(Sender: TObject);
    procedure rctBtnConPessoaClick(Sender: TObject);

    procedure rctProdutosClick(Sender: TObject);
    procedure rctCadProdutosClick(Sender: TObject);
    procedure rctConProdutosClick(Sender: TObject);

    procedure rctMovimentoClick(Sender: TObject);
    procedure rctCadMovimentosClick(Sender: TObject);
    procedure rctConMovimentosClick(Sender: TObject);

    procedure rctFinanceiroClick(Sender: TObject);
    procedure rctCadFinanceiroClick(Sender: TObject);
    procedure rctConFinanceiroClick(Sender: TObject);

    procedure rctOficinaClick(Sender: TObject);

    procedure rctConVeiculoClick(Sender: TObject);
    procedure rctCadVeiculoClick(Sender: TObject);

    procedure rctCadOrdemServicoClick(Sender: TObject);
    procedure rctConOrdemServicoClick(Sender: TObject);

    procedure ChangeMouseLeave(Sender: TObject);
    procedure ChangeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single);

    {procedure PessoaMouseEnter(Sender: TObject);
    procedure ProdutoMouseEnter(Sender: TObject);
    procedure MovimentoMouseEnter(Sender: TObject);
    procedure FinanceiroMouseEnter(Sender: TObject);
    procedure OficinaMouseEnter(Sender: TObject);}

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmLeft: TfrmLeft;
  componente : TRectangle;

implementation

{$R *.fmx}

uses uCorFormulario, uMenuPrincipal, uFormularioPadrao, uGerenciador.Form,
  ufrmConteudoPessoa, ufrmConteudoProduto, ufrmConteudoMovimento,
  ufrmConteudoOficina, ufrmConteudoFinanceiro;

procedure TfrmLeft.FormCreate(Sender: TObject);
begin
  corForm.RetanguloMouseMove(rctLeft, frmMenuPrincipal);
end;


{$Region 'In�cio eventos click dos bot�es'}
//============================================================================\\
//                       In�cio Eventos Click do Bot�es                       \\
//============================================================================\\

//****************************************************************************\\
//                       In�cio Eventos Pessoa                                \\
procedure TfrmLeft.PessoaClick(Sender: TObject);
begin
  _Gerenciador.RemoveForm('Left Conteudo');
  _Gerenciador.AddForm('Left Conteudo', TfrmConteudoPessoa, lyt07Content, True);
end;

procedure TfrmLeft.rctBtnCadPessoaClick(Sender: TObject);
begin
  //
end;

procedure TfrmLeft.rctBtnConPessoaClick(Sender: TObject);
begin
  //
end;

//****************************************************************************\\
//                       In�cio Eventos Produtos                              \\
procedure TfrmLeft.rctProdutosClick(Sender: TObject);
begin
  _Gerenciador.RemoveForm('Left Conteudo');
  _Gerenciador.AddForm('Left Conteudo', TfrmConteudoProduto, lyt07Content, True);
end;

procedure TfrmLeft.rctCadProdutosClick(Sender: TObject);
begin
  //
end;

procedure TfrmLeft.rctConProdutosClick(Sender: TObject);
begin
  //
end;

//****************************************************************************\\
//                       In�cio Eventos Movimentos                            \\

procedure TfrmLeft.rctMovimentoClick(Sender: TObject);
begin
  _Gerenciador.RemoveForm('Left Conteudo');
  _Gerenciador.AddForm('Left Conteudo', TfrmConteudoMovimento, lyt07Content, True);
end;

procedure TfrmLeft.rctCadMovimentosClick(Sender: TObject);
begin
  //
end;

procedure TfrmLeft.rctConMovimentosClick(Sender: TObject);
begin
  //
end;

//****************************************************************************\\
//                       In�cio Eventos Financeiro                            \\

procedure TfrmLeft.rctFinanceiroClick(Sender: TObject);
begin
  _Gerenciador.RemoveForm('Left Conteudo');
  _Gerenciador.AddForm('Left Conteudo', TfrmConteudoFinanceiro, lyt07Content, True);
end;

procedure TfrmLeft.rctCadFinanceiroClick(Sender: TObject);
begin
  //
end;

procedure TfrmLeft.rctConFinanceiroClick(Sender: TObject);
begin
  //
end;

//****************************************************************************\\
//                       In�cio Eventos Oficina                               \\

procedure TfrmLeft.rctOficinaClick(Sender: TObject);
begin
  _Gerenciador.RemoveForm('Left Conteudo');
  _Gerenciador.AddForm('Left Conteudo', TfrmConteudoOficina, lyt07Content, True);
end;

//----------------------------------------------------------------------------\\
//                       In�cio Eventos Ve�culo                               \\
procedure TfrmLeft.rctCadVeiculoClick(Sender: TObject);
begin
  //
end;
procedure TfrmLeft.rctConVeiculoClick(Sender: TObject);
begin
  //
end;

//----------------------------------------------------------------------------\\
//                       In�cio Eventos Ordem de Servo�p                      \\
procedure TfrmLeft.rctCadOrdemServicoClick(Sender: TObject);
begin
  //
end;

procedure TfrmLeft.rctConOrdemServicoClick(Sender: TObject);
begin
  //
end;

procedure TfrmLeft.rctSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

{$EndRegion}

{$Region 'In�cio enventos mouse Enter e Leave'}
{procedure TfrmLeft.PessoaMouseEnter(Sender: TObject);
begin
  corForm.ShowHiddenForm(lyt02ConteudoPessoa);
end;

procedure TfrmLeft.ProdutoMouseEnter(Sender: TObject);
begin
  corForm.ShowHiddenForm(lyt04ConteudoProdutos);
end;

procedure TfrmLeft.MovimentoMouseEnter(Sender: TObject);
begin
  corForm.ShowHiddenForm(lyt06ConteudoMovimentos);
end;

procedure TfrmLeft.FinanceiroMouseEnter(Sender: TObject);
begin
  corForm.ShowHiddenForm(lyt08ConteudoFinanceiro);
end;

procedure TfrmLeft.OficinaMouseEnter(Sender: TObject);
begin
  corForm.ShowHiddenForm(lyt10ConteudoOficina);
end;}
{$EndRegion}

{$Region 'In�cio enventos Move e Leave dos bot�es'}
//****************************************************************************\\
//                     Inicio Eventos Move e Leave do Bot�es                  \\
//****************************************************************************\\
procedure TfrmLeft.ChangeMouseLeave(Sender: TObject);
var nome : string;
  layout, layoutPai: TLayout;
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseLeave(componente);
  {nome := componente.Parent.Parent.Parent.Name;
  if (nome = 'lyt02ConteudoPessoa') or (nome = 'lyt04ConteudoProdutos')
     or (nome = 'lyt06ConteudoMovimentos') or (nome = 'lyt08ConteudoFinanceiro') or (nome = 'lyt10ConteudoOficina') then
  begin
    layout := TLayout(componente.Parent.Parent.Parent);
    corForm.ShowHiddenForm(layout);
    layoutPai := TLayout(componente.Parent.Parent.Parent.Parent);
    layoutPai.Height := 45;
  end;}


end;

procedure TfrmLeft.ChangeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Single);
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseMove(componente, frmMenuPrincipal);
end;

{$EndRegion}

end.
