unit uCorFormulario;

interface
uses
  FMX.Objects, FMX.Forms, FMX.Graphics, System.UITypes, FMX.Layouts;

type
  TCorFormulario = class

  private
    { Private declarations }

  public
    { Public declarations }
    procedure ShowHiddenForm(layout: TLayout);
    procedure RetanguloMouseMove(obj: TRectangle; frm: TForm);
    procedure RetanguloMouseLeave(obj: TRectangle);
  end;

var
  corForm : TCorFormulario;

//====================================================================================\\
//                                                                                    \\
//                    V�riais definindo as cores padr�es do sistema                   \\
//                                                                                    \\
//====================================================================================\\

const
  COLOR_DANGER_MSG    = $ff721c24;
  COLOR_DANGER_BACK   = $fff8d7da;
  COLOR_DANGER_BORDER = $fff5c6cb;

  COLOR_SUCCESS_MSG    = $ff2d721c;
  COLOR_SUCCESS_BACK   = $ffd4edda;
  COLOR_SUCCESS_BORDER = $ffc3e6cb;

  COLOR_WARNING_MSG    = $ff856404;
  COLOR_WARNING_BACK   = $fffff3cd;
  COLOR_WARNING_BORDER = $ffffeeba;

implementation


{$region 'M�dotos que mostra e esconde layout'}

procedure TCorFormulario.ShowHiddenForm(layout: TLayout);
var
  layoutPai : TLayout;
begin
  layout.Visible := not layout.Visible;
  layoutPai := TLayout(layout.Parent);

  if (layout.Visible = False) then
  begin
    if (layout.Parent.Name = 'l01Pessoa') OR (layout.Parent.Name = 'l02Produto')  OR (layout.Parent.Name = 'l03Movimento')
         OR (layout.Parent.Name = 'l04Financeiro') OR (layout.Parent.Name = 'l05Oficina') then
    begin
      layoutPai.Height := 45;
    end;
  end
  else
  begin
    if (layout.Parent.Name = 'l01Pessoa') OR (layout.Parent.Name = 'l02Produto')  OR (layout.Parent.Name = 'l03Movimento')
         OR (layout.Parent.Name = 'l04Financeiro')then
    begin
      layoutPai.Height := 222;
    end;
    if (layout.Parent.Name = 'l05Oficina')  then
    begin
      layoutPai.Height := 285;
    end;
  end;

end;
{$EndRegion}

//====================================================================================\\
//                                                                                    \\
//    M�todo para definir a cor no bot�o quando o ponteiro do mouse estiver em cima   \\
//                                                                                    \\
//====================================================================================\\

procedure TCorFormulario.RetanguloMouseMove(obj: TRectangle; frm: TForm);
begin
  obj.Fill.Kind     := TBrushKind.Gradient;
  obj.Fill.Gradient := frm.Fill.Gradient;
  obj.XRadius       := 10;
  obj.YRadius       := 10;
end;

//====================================================================================\\
//                                                                                    \\
//    M�todo para retirar a cor no bot�o quando o ponteiro do mouse sair de cima      \\
//                                                                                    \\
//====================================================================================\\

procedure TCorFormulario.RetanguloMouseLeave(obj: TRectangle);
begin
  obj.Fill.Gradient.Color := TAlphacolors.Null;
  obj.Fill.Gradient.Color1 := TAlphacolors.Null;
end;


end.
