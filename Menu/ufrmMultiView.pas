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
    imgLogOff: TImage;
    sdLogOff: TShadowEffect;
    fltLogOff1: TFloatAnimation;
    fltLogOff2: TFloatAnimation;
    Label1: TLabel;
    lytTopSair: TLayout;
    rctTopSair: TRectangle;
    imgTopSair: TImage;
    sdwTopSair: TShadowEffect;
    TopSairAnime1: TFloatAnimation;
    TopSairAnime2: TFloatAnimation;
    lbTopSair: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure rctTopSairClick(Sender: TObject);
    procedure rctLogOffClick(Sender: TObject);
    procedure rctLogOffMouseLeave(Sender: TObject);
    procedure rctLogOffMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single);
    procedure rctTopSairMouseLeave(Sender: TObject);
    procedure rctTopSairMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Single);
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

procedure TfrmBarraMenu.rctLogOffMouseLeave(Sender: TObject);
begin
  corForm.RetanguloMouseLeave(rctLogOff);
end;

procedure TfrmBarraMenu.rctLogOffMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Single);
begin
  corForm.RetanguloMouseMove(rctLogOff, frmMenuPrincipal);
end;

procedure TfrmBarraMenu.rctTopSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmBarraMenu.rctTopSairMouseLeave(Sender: TObject);
begin
  corForm.RetanguloMouseLeave(rctTopSair);
end;

procedure TfrmBarraMenu.rctTopSairMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Single);
begin
  corForm.RetanguloMouseMove(rctTopSair, frmMenuPrincipal);
end;

end.
