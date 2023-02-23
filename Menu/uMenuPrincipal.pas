unit uMenuPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Effects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TfrmMenuPrincipal = class(TForm)
    lytMain: TLayout;
    rctMain: TRectangle;
    lyt1Top: TLayout;
    lyt2SideLeft: TLayout;
    lyt3Client: TLayout;
    rctClient: TRectangle;
    rctshdMain: TShadowEffect;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;
  onLogin: string;

implementation

{$R *.fmx}

uses uCorFormulario, uGerenciador.Form, ufrmBarraTop, ufrmLogin, ufrmMultiView,
  ufrmLeft;

procedure TfrmMenuPrincipal.FormCreate(Sender: TObject);
begin
  if onLogin = '' then
  begin
    frmLogin := TfrmLogin.Create(Self);
    frmLogin.ShowModal;
    if frmLogin.ModalResult <> mrok then
    begin
      Application.Terminate;
    end;

  end;

  FreeAndNil(frmLogin);
  onLogin := '';
  //chama m�todo para pegar a cor do frmMenuPrincipal e colocar no retangulo rctClent
  corForm.RetanguloMouseMove(rctClient, frmMenuPrincipal);
end;

procedure TfrmMenuPrincipal.FormShow(Sender: TObject);
begin
  corForm.RetanguloMouseMove(rctMain, frmMenuPrincipal);

  // M�todos para inserir as duas telas na lista de formul�rios
  // e inserir dentro da tela principal
  _Gerenciador.AddForm('Barra do Topo', TfrmBarraMenu, lyt1Top, True);
  _Gerenciador.AddForm('Menu Lado Esquerdo', TfrmLeft, lyt2SideLeft, True);
end;

end.
