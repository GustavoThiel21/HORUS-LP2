unit Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Frm.Proprietarios,
  Frm.VeiculosMultas;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Proprietarios1: TMenuItem;
    VeiculoseMultas1: TMenuItem;
    procedure Proprietarios1Click(Sender: TObject);
    procedure VeiculoseMultas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Proprietarios1Click(Sender: TObject);
var
  vFrmProprietarios: TFrmProprietario;
begin
  vFrmProprietarios := TFrmProprietario.Create(nil);
  try
    vFrmProprietarios.ShowModal;
  finally
    FreeAndNil(vFrmProprietarios);
  end;
end;

procedure TFrmPrincipal.VeiculoseMultas1Click(Sender: TObject);
var
  vFrmveiculosemultas: TFrmVeiculosMultas;
begin
  vFrmveiculosemultas := TFrmVeiculosMultas.Create(nil);
  try
    vFrmveiculosemultas.ShowModal;
  finally
    FreeAndNil(vFrmveiculosemultas);
  end;
end;

end.

