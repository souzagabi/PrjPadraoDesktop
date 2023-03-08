unit ufrmConteudoMovimento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Ani, FMX.Effects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmConteudoMovimento = class(TForm)
    lytMain: TLayout;
    rctContent: TRectangle;
    lyt06ConteudoMovimentos: TLayout;
    rctConteudoMovimentos: TRectangle;
    lyt1CadMovimentos: TLayout;
    rctCadMovimentos: TRectangle;
    lblCadMovimentos: TLabel;
    sdwCadMovimentos: TShadowEffect;
    fltCadMovimentos1: TFloatAnimation;
    fltCadMovimentos2: TFloatAnimation;
    PathCadMovimentos: TPath;
    lyt2ConMovimentos: TLayout;
    rctConMovimentos: TRectangle;
    lblConMovimentos: TLabel;
    sdwConMovimentos: TShadowEffect;
    fltConMovimentos1: TFloatAnimation;
    fltConMovimentos4: TFloatAnimation;
    PathConMovimentos: TPath;

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
  frmConteudoMovimento: TfrmConteudoMovimento;
  componente : TRectangle;

implementation

{$R *.fmx}

uses uCorFormulario, uMenuPrincipal;

procedure TfrmConteudoMovimento.FormCreate(Sender: TObject);
begin
  corForm.RetanguloMouseMove(rctContent, frmMenuPrincipal);
end;

{$Region 'In�cio enventos Move e Leave dos bot�es'}
//****************************************************************************\\
//                     Inicio Eventos Move e Leave do Bot�es                  \\
//****************************************************************************\\
procedure TfrmConteudoMovimento.ChangeMouseLeave(Sender: TObject);
var nome : string;
  layout, layoutPai: TLayout;
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseLeave(componente);
end;

procedure TfrmConteudoMovimento.ChangeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Single);
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseMove(componente, frmMenuPrincipal);
end;

{$EndRegion}

end.
