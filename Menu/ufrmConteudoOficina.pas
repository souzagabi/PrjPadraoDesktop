unit ufrmConteudoOficina;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Ani, FMX.Effects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmConteudoOficina = class(TForm)
    lytMain: TLayout;
    rctContent: TRectangle;
    lyt10ConteudoOficina: TLayout;
    rctConteudoOficina: TRectangle;
    lyt01CadVeiculo: TLayout;
    rctCadVeiculo: TRectangle;
    lblCadVeiculo: TLabel;
    sdwCadVeiculo: TShadowEffect;
    fltCadVeiculo1: TFloatAnimation;
    fltCadVeiculo2: TFloatAnimation;
    PathCadVeiculo: TPath;
    lyt02ConVeiculo: TLayout;
    rctConVeiculo: TRectangle;
    lblConVeiculo: TLabel;
    sdwConVeiculo: TShadowEffect;
    fltConVeiculo1: TFloatAnimation;
    fltConVeiculo2: TFloatAnimation;
    PathConVeiculo: TPath;
    lyt03CadOrdemServico: TLayout;
    rctCadOrdemServico: TRectangle;
    lblCadOrdemServico: TLabel;
    sdwCadOrdemServico: TShadowEffect;
    fltCadOrdemServico1: TFloatAnimation;
    fltCadOrdemServico2: TFloatAnimation;
    PathCadOrdemServico: TPath;
    lyt04ConOrdemServico: TLayout;
    rctConOrdemServico: TRectangle;
    lblConOrdemServico: TLabel;
    sdwConOrdemServico: TShadowEffect;
    fltConOrdemServico1: TFloatAnimation;
    fltConOrdemServico2: TFloatAnimation;
    PathConOrdemServico: TPath;

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
  frmConteudoOficina: TfrmConteudoOficina;
  componente : TRectangle;

implementation

{$R *.fmx}

uses uCorFormulario, uMenuPrincipal;

procedure TfrmConteudoOficina.FormCreate(Sender: TObject);
begin
  corForm.RetanguloMouseMove(rctContent, frmMenuPrincipal);
end;

{$Region 'Início enventos Move e Leave dos botões'}
//****************************************************************************\\
//                     Inicio Eventos Move e Leave do Botões                  \\
//****************************************************************************\\
procedure TfrmConteudoOficina.ChangeMouseLeave(Sender: TObject);
var nome : string;
  layout, layoutPai: TLayout;
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseLeave(componente);
end;

procedure TfrmConteudoOficina.ChangeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Single);
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseMove(componente, frmMenuPrincipal);
end;

{$EndRegion}

end.
