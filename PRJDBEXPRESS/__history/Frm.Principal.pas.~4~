unit Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Frm.Pais;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Localizao1: TMenuItem;
    Pas1: TMenuItem;
    Estado1: TMenuItem;
    Cidade1: TMenuItem;
    procedure Pas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

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

