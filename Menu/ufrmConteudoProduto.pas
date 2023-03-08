unit ufrmConteudoProduto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Ani, FMX.Effects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmConteudoProduto = class(TForm)
    lytMain: TLayout;
    rctContent: TRectangle;
    lyt04ConteudoProdutos: TLayout;
    rctConteudoProdutos: TRectangle;
    lyt1rctCadProdutos: TLayout;
    rctCadProdutos: TRectangle;
    lblCadProdutos: TLabel;
    sdwCadProdutos: TShadowEffect;
    flrCadProdutos1: TFloatAnimation;
    fltCadProdutos2: TFloatAnimation;
    PathCadProdutos: TPath;
    lyt2ConProdutos: TLayout;
    rctConProdutos: TRectangle;
    lbConProdutos: TLabel;
    sdwConProdutos: TShadowEffect;
    fltConProdutos1: TFloatAnimation;
    fltConProdutos2: TFloatAnimation;
    PathConProdutos: TPath;

    procedure FormCreate(Sender: TObject);

    procedure ChangeMouseLeave(Sender: TObject);
    procedure ChangeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConteudoProduto: TfrmConteudoProduto;
  componente: TRectangle;

implementation

{$R *.fmx}

uses uMenuPrincipal, uCorFormulario;

procedure TfrmConteudoProduto.FormCreate(Sender: TObject);
begin
  corForm.RetanguloMouseMove(rctContent, frmMenuPrincipal);
end;



{$Region 'In�cio enventos Move e Leave dos bot�es'}
//****************************************************************************\\
//                     Inicio Eventos Move e Leave do Bot�es                  \\
//****************************************************************************\\
procedure TfrmConteudoProduto.ChangeMouseLeave(Sender: TObject);
var nome : string;
  layout, layoutPai: TLayout;
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseLeave(componente);
end;

procedure TfrmConteudoProduto.ChangeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Single);
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseMove(componente, frmMenuPrincipal);
end;

{$EndRegion}

end.
