unit Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Frm.Pais, Frm.Estado,
  Frm.Cidade;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Localizao1: TMenuItem;
    Pas1: TMenuItem;
    Estado1: TMenuItem;
    Cidade1: TMenuItem;
    procedure Pas1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Cidade1Click(Sender: TObject);
var
  vFrmCidade: TFrmCidade; //variavel do tipo form cidade
begin
  vFrmCidade := TFrmCidade.Create(nil); //cria o formulario cidade
  try
    vFrmCidade.ShowModal; //chama o formulario cidade
  finally
    FreeAndNil(vFrmCidade); //destroi o formulario cidade
  end;

end;

procedure TFrmPrincipal.Estado1Click(Sender: TObject);
var
  vFrmEstado: TFrmEstado; //variavel do tipo form estado
begin
  vFrmEstado := TFrmEstado.Create(nil); //cria o formulario estado
  try
    vFrmEstado.ShowModal; //chama o formulario estado
  finally
    FreeAndNil(vFrmEstado); //destroi o formulario estado
  end;
end;

procedure TFrmPrincipal.Pas1Click(Sender: TObject);
var
  vFrmPais: TFrmPais; //variavel do tipo form pais
begin
  vFrmPais := TFrmPais.Create(nil); //cria o formulario pais
  try
    vFrmPais.ShowModal; //chama o formulario pais
  finally
    FreeAndNil(vFrmPais); //destroi o formulario pais
  end;
end;

end.

