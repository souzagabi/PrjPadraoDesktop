unit uGerenciador.Form;

interface
uses
  System.Generics.Collections,
  System.Classes,
  System.Rtti,
  System.SysUtils,
  System.UITypes,
  FMX.Layouts,
  FMX.Forms,
  FMX.TabControl,
  FMX.Objects,
  FMX.Types;

Type
  iGerenciadorForm = interface
    ['{148993BE-07DA-48DA-9525-4757017B89E5}']
    function AddForm(Key: String; Value : TComponentClass; const Parent : TLayout; Index : Boolean = false) : iGerenciadorForm;
    function GetForm(Value: String): TForm;
    function GetFormIndex : TForm;
    function RemoveForm(Value: String ) : iGerenciadorForm;

  end;

  TGerenciadorForm = class(TinterfacedObject, iGerenciadorForm)
    private
      FormIndex : TForm;
      ListaForm : TObjectDictionary<String, TForm>;

    public
      constructor Create;
      destructor Destroy; override;
      class function New : iGerenciadorForm;

      function AddForm(Key: String; Value : TComponentClass; const Parent : TLayout; Index : Boolean = false) : iGerenciadorForm;
      function GetForm(Value: String): TForm;
      function GetFormIndex : TForm;
      function RemoveForm(Value: String ) : iGerenciadorForm;

  end;

var
  _Gerenciador : iGerenciadorForm;
implementation
  { TMinhaClasse }

//====================================================================================\\
//                                                                                    \\
//                      Função para adicionar o formuária em uma lista                \\
//                                                                                    \\
//====================================================================================\\

  function TGerenciadorForm.AddForm(Key: String; Value: TComponentClass;
    const Parent: TLayout; Index: Boolean): iGerenciadorForm;
  var
    aForm : TForm;
  begin
    Result := Self;

    if Not ListaForm.TryGetValue(Key, aForm) then
    begin
      Application.CreateForm(Value, aForm);
      aForm.Caption := Key;
      ListaForm.Add(Key, aForm);
    end
    else
    begin
      GetForm(Key);
    end;

    Parent.AddObject(TLayout(aForm.FindComponent('LytMain')));

    if Index then
      FormIndex := aForm;

  end;

//====================================================================================\\
//                                                                                    \\
//                        No Método Constructor é criado a lista                      \\
//                                                                                    \\
//====================================================================================\\
  constructor TGerenciadorForm.Create;
  begin
     ListaForm := TObjectDictionary<String, TForm>.Create;
  end;

//====================================================================================\\
//                                                                                    \\
//                        No Método Destructor é elimidado a lista                    \\
//                                                                                    \\
//====================================================================================\\
  destructor TGerenciadorForm.Destroy;
  begin
    FreeAndNil(ListaForm);
    inherited;
  end;

//====================================================================================\\
//                                                                                    \\
//               Função para pegar o formulário dentro da lista                       \\
//                                                                                    \\
//====================================================================================\\
  function TGerenciadorForm.GetForm(Value: String): TForm;
  begin
    ListaForm.TryGetValue(Value, Result);
  end;

  function TGerenciadorForm.GetFormIndex: TForm;
  begin
    Result := FormIndex;
  end;

  class function TGerenciadorForm.New: iGerenciadorForm;
  begin
    Result := Self.Create;
  end;

  function TGerenciadorForm.RemoveForm(Value: String): iGerenciadorForm;
  var
    aForm : TForm;
  begin

    if ListaForm.TryGetValue(Value, aForm) then
    begin
      ListaForm.Remove(Value);
      aForm.Destroy;
    end;

  end;

  initialization
    _Gerenciador := TGerenciadorForm.New;

end.
