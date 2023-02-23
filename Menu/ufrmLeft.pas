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
    lyt5BtnSair: TLayout;
    rctSair: TRectangle;
    imgSair: TImage;
    sdwSair: TShadowEffect;
    fltAnimeSair1: TFloatAnimation;
    fltAnimeSair2: TFloatAnimation;
    lbSair: TLabel;
    lyt1Pessoa: TLayout;
    rctPessoa: TRectangle;
    sdwPessoa: TShadowEffect;
    fltAnimePessoa1: TFloatAnimation;
    fltAnimePessoa2: TFloatAnimation;
    lbPessoa: TLabel;
    lyt3Produto: TLayout;
    rctProdutos: TRectangle;
    sdwProdutos: TShadowEffect;
    fltProdutos1: TFloatAnimation;
    fltProdutos2: TFloatAnimation;
    sdwLeft: TShadowEffect;
    lyt2ConteudoPessoa: TLayout;
    rctConteudoPessoa: TRectangle;
    lyt1BtnCadPessoa: TLayout;
    rctBtnCadPessoa: TRectangle;
    lbBtnCadPessoa: TLabel;
    sdwBtnCadPessoa: TShadowEffect;
    fltBtnCadPessoa1: TFloatAnimation;
    fltBtnCadPessoa2: TFloatAnimation;
    lyt2BtnConPessoa: TLayout;
    rctBtnConPessoa: TRectangle;
    lblBtnConPessoa: TLabel;
    sdwBtnConPessoa: TShadowEffect;
    fltBtnConPessoa1: TFloatAnimation;
    fltBtnConPessoa2: TFloatAnimation;
    PathPessoa: TPath;
    PathCadPessoa: TPath;
    PathConPessoa: TPath;
    PathProdutos: TPath;
    lbProdutos: TLabel;
    lyt4ConteudoProdutos: TLayout;
    rctConteudoProdutos: TRectangle;
    lyt1rctCadProdutos: TLayout;
    lyt2ConProdutos: TLayout;
    rctCadProdutos: TRectangle;
    lblCadProdutos: TLabel;
    sdwCadProdutos: TShadowEffect;
    flrCadProdutos1: TFloatAnimation;
    fltCadProdutos2: TFloatAnimation;
    PathCadProdutos: TPath;
    rctConProdutos: TRectangle;
    lbConProdutos: TLabel;
    sdwConProdutos: TShadowEffect;
    fltConProdutos1: TFloatAnimation;
    ConProdutos2: TFloatAnimation;
    PathConProdutos: TPath;


    procedure rctProdutosClick(Sender: TObject);
    procedure rctSairClick(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure rctPessoaClick(Sender: TObject);
    procedure rctBtnCadPessoaClick(Sender: TObject);

    procedure rctBtnConPessoaClick(Sender: TObject);

    procedure ChangeMouseLeave(Sender: TObject);
    procedure ChangeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single);
    procedure rctCadProdutosClick(Sender: TObject);
    procedure rctConProdutosClick(Sender: TObject);

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

uses uCorFormulario, uMenuPrincipal, uFormularioPadrao, uGerenciador.Form;

procedure TfrmLeft.FormCreate(Sender: TObject);
begin
  corForm.ShowHiddenForm(lyt2ConteudoPessoa);
  corForm.ShowHiddenForm(lyt4ConteudoProdutos);
  corForm.RetanguloMouseMove(rctLeft, frmMenuPrincipal);
end;

{$Region 'Início eventos click dos botões'}
//****************************************************************************\\
//                       Início Eventos Click do Botões                       \\
//****************************************************************************\\

procedure TfrmLeft.rctPessoaClick(Sender: TObject);
begin
  corForm.ShowHiddenForm(lyt2ConteudoPessoa);
end;

procedure TfrmLeft.rctBtnCadPessoaClick(Sender: TObject);
begin
  corForm.ShowHiddenForm(lyt2ConteudoPessoa);
end;

procedure TfrmLeft.rctBtnConPessoaClick(Sender: TObject);
begin
  corForm.ShowHiddenForm(lyt2ConteudoPessoa);
end;

procedure TfrmLeft.rctProdutosClick(Sender: TObject);
begin
  corForm.ShowHiddenForm(lyt4ConteudoProdutos);
end;

procedure TfrmLeft.rctCadProdutosClick(Sender: TObject);
begin
  corForm.ShowHiddenForm(lyt4ConteudoProdutos);
end;

procedure TfrmLeft.rctConProdutosClick(Sender: TObject);
begin
  corForm.ShowHiddenForm(lyt4ConteudoProdutos);
end;

procedure TfrmLeft.rctSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

{$EndRegion}

{$Region 'Início enventos Move e Leave dos botões'}
//****************************************************************************\\
//                     Inicio Eventos Move e Leave do Botões                  \\
//****************************************************************************\\
procedure TfrmLeft.ChangeMouseLeave(Sender: TObject);
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseLeave(componente);
end;

procedure TfrmLeft.ChangeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Single);
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseMove(componente, frmMenuPrincipal);
end;

{$EndRegion}


end.
