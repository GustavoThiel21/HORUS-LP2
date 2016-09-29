unit Dm.Principal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI;

type
  TDmPrincipal = class(TDataModule)
    FDConnection: TFDConnection;
    QryProprietario: TFDQuery;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    QryProprietarioPRP_CODIGO: TIntegerField;
    QryProprietarioPRP_NOME: TStringField;
    QryProprietarioPRP_ENDERECO: TStringField;
    QryVeiculo: TFDQuery;
    DsMestreVeiculo: TDataSource;
    QryMultas: TFDQuery;
    QryVeiculoVEI_CODIGO: TIntegerField;
    QryVeiculoVEI_PLACA: TStringField;
    QryVeiculoVEI_MARCA: TStringField;
    QryVeiculoVEI_MODELO: TStringField;
    QryVeiculoVEI_ANO: TIntegerField;
    QryVeiculoPRP_CODIGO: TIntegerField;
    QryMultasVEI_CODIGO: TIntegerField;
    QryMultasMLT_ITEM: TIntegerField;
    QryMultasMLT_DATA: TDateField;
    QryMultasMLT_HORA: TTimeField;
    QryMultasMLT_VALOR: TBCDField;
    QryMultasMLT_LOCAL: TStringField;
    QryVeiculoNOME_PROPRIETARIO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure QryMultasAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmPrincipal: TDmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmPrincipal.DataModuleCreate(Sender: TObject);
begin
  FDConnection.Connected := true;
end;

procedure TDmPrincipal.QryMultasAfterInsert(DataSet: TDataSet);
begin
  QryMultasVEI_CODIGO.AsInteger := QryVeiculoVEI_CODIGO.AsInteger;
end;

end.

