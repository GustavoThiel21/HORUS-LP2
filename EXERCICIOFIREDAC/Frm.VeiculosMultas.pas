unit Frm.VeiculosMultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Dm.Principal, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFrmVeiculosMultas = class(TForm)
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Item: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DsVeiculo: TDataSource;
    DsMultas: TDataSource;
    DsProprietario: TDataSource;
    DBGrid2: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVeiculosMultas: TFrmVeiculosMultas;

implementation

{$R *.dfm}

procedure TFrmVeiculosMultas.FormCreate(Sender: TObject);
begin
  DmPrincipal.QryProprietario.Open;
  DmPrincipal.QryVeiculo.Open;
  DmPrincipal.QryMultas.Open;
end;

procedure TFrmVeiculosMultas.FormDestroy(Sender: TObject);
begin
  DmPrincipal.QryProprietario.Close;
  DmPrincipal.QryVeiculo.Close;
  DmPrincipal.QryMultas.Close;
end;

end.

