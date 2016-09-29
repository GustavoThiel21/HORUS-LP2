unit Frm.Proprietarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dm.Principal, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.ExtCtrls;

type
  TFrmProprietario = class(TForm)
    DBNavigator1: TDBNavigator;
    DsProprietario: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProprietario: TFrmProprietario;

implementation

{$R *.dfm}

procedure TFrmProprietario.FormCreate(Sender: TObject);
begin
  DmPrincipal.QryProprietario.Open;
end;

procedure TFrmProprietario.FormDestroy(Sender: TObject);
begin
  DmPrincipal.QryProprietario.Close;
end;

end.

