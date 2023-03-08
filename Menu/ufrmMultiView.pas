unit ufrmMultiView;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani, FMX.Effects, FMX.Layouts,
  FMX.MultiView;

type
  TfrmBarraMenu = class(TForm)
    lytMain: TLayout;
    rctBarraTop: TRectangle;
    sdwBarraTop: TShadowEffect;
    crImagem: TCircle;
    lytLogOff: TLayout;
    rctLogOff: TRectangle;
    sdLogOff: TShadowEffect;
    fltLogOff1: TFloatAnimation;
    fltLogOff2: TFloatAnimation;
    Label1: TLabel;
    lytTopSair: TLayout;
    rctTopSair: TRectangle;
    sdwTopSair: TShadowEffect;
    TopSairAnime1: TFloatAnimation;
    TopSairAnime2: TFloatAnimation;
    lbTopSair: TLabel;
    PathSair: TPath;
    PathLogOff: TPath;
    procedure FormCreate(Sender: TObject);
    procedure rctTopSairClick(Sender: TObject);
    procedure rctLogOffClick(Sender: TObject);

    procedure ChangeMouseLeave(Sender: TObject);
    procedure ChangeMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Single);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBarraMenu: TfrmBarraMenu;

implementation

{$R *.fmx}

uses uCorFormulario, uMenuPrincipal, ufrmLogin;

procedure TfrmBarraMenu.FormCreate(Sender: TObject);
begin
  corForm.RetanguloMouseMove(rctBarraTop, frmMenuPrincipal);
end;

procedure TfrmBarraMenu.rctLogOffClick(Sender: TObject);
begin
  frmMenuPrincipal.Visible := false;
  frmLogin := TfrmLogin.Create(Self);
  frmLogin.ShowModal;
  if frmLogin.ModalResult <> mrok then
  begin
    Application.Terminate;
  end;
  onLogin := '1';
  frmMenuPrincipal.Visible := true;
end;

procedure TfrmBarraMenu.rctTopSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

{$Region 'In�cio enventos Move e Leave dos bot�es'}
//****************************************************************************\\
//                     Inicio Eventos Move e Leave do Bot�es                  \\
//****************************************************************************\\
procedure TfrmBarraMenu.ChangeMouseLeave(Sender: TObject);
var componente : TRectangle;
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseLeave(componente);
end;

procedure TfrmBarraMenu.ChangeMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Single);
var componente : TRectangle;
begin
  componente := TRectangle(Sender);
  corForm.RetanguloMouseMove(componente, frmMenuPrincipal);
end;

{$EndRegion}

end.
