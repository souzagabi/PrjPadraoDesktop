unit ufrmConteudoFinanceiro;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Ani, FMX.Effects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmConteudoFinanceiro = class(TForm)
    lytMain: TLayout;
    rctContent: TRectangle;
    lyt08ConteudoFinanceiro: TLayout;
    rctConteudoFinanceiro: TRectangle;
    lyt1CadFinanceiro: TLayout;
    rctCadFinanceiro: TRectangle;
    lblCadFinanceiro: TLabel;
    sdwCadFinanceiro: TShadowEffect;
    fltCadFinanceiro1: TFloatAnimation;
    fltCadFinanceiro2: TFloatAnimation;
    PathCadFinanceiro: TPath;
    lyt2ConFinanceiro: TLayout;
    rctConFinanceiro: TRectangle;
    lblConFinanceiro: TLabel;
    sdwConFinanceiro: TShadowEffect;
    fltConFinanceiro1: TFloatAnimation;
    fltConFinanceiro2: TFloatAnimation;
    PathConFinanceiro: TPath;

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
  frmConteudoFinanceiro: TfrmConteudoFinanceiro;
  componente: TRectangle;

implementation

{$R *.fmx}

uses uMenuPrincipal, uCorFormulario;

procedure TfrmConteudoFinanceiro.FormCreate(Sender: TObject);
begin
  corForm.RetanguloMouseMove(rctContent, frmMenuPrincipal);
end;

{$Region 'Início enventos Move e Leave dos botões'}
//****************************************************************************\\
//                     Inicio Eventos Move e Leave do Botões                  \\
//****************************************************************************\\
procedure TfrmConteudoFinanceiro.ChangeMouseLeave(Sender: TObject);
var nome : string;
  layout, layoutPai: TLayout;
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseLeave(componente);
end;

procedure TfrmConteudoFinanceiro.ChangeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Single);
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseMove(componente, frmMenuPrincipal);
end;

{$EndRegion}
end.
