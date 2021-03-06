unit Dm.Cadastro.Geral;

interface

uses
  System.SysUtils, System.Classes, Dm.Database, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Dm.Cadastro.Localizacao;

type
  TDmCadastroGeral = class(TDataModule)
    SdsProduto: TSQLDataSet;
    DspProduto: TDataSetProvider;
    CdsProduto: TClientDataSet;
    SdsProdutoCODIGO: TLargeintField;
    SdsProdutoDESCRICAO: TStringField;
    SdsProdutoPRECO: TFMTBCDField;
    CdsProdutoCODIGO: TLargeintField;
    CdsProdutoDESCRICAO: TStringField;
    CdsProdutoPRECO: TFMTBCDField;
    SdsCliente: TSQLDataSet;
    DspCliente: TDataSetProvider;
    CdsCliente: TClientDataSet;
    SdsClienteCODIGO: TLargeintField;
    SdsClienteNOME: TStringField;
    SdsClienteCPF_CNPJ: TStringField;
    SdsClienteENDERECO: TStringField;
    SdsClienteBAIRRO: TStringField;
    SdsClienteCEP: TStringField;
    SdsClienteTELEFONE: TStringField;
    SdsClienteEMAIL: TStringField;
    SdsClienteCODIGO_CIDADE: TLargeintField;
    CdsClienteCODIGO: TLargeintField;
    CdsClienteNOME: TStringField;
    CdsClienteCPF_CNPJ: TStringField;
    CdsClienteENDERECO: TStringField;
    CdsClienteBAIRRO: TStringField;
    CdsClienteCEP: TStringField;
    CdsClienteTELEFONE: TStringField;
    CdsClienteEMAIL: TStringField;
    CdsClienteCODIGO_CIDADE: TLargeintField;
    CdsClienteNOME_CIDADE: TStringField;
    procedure CdsProdutoAfterPost(DataSet: TDataSet);
    procedure CdsProdutoAfterDelete(DataSet: TDataSet);
    procedure CdsClienteAfterDelete(DataSet: TDataSet);
    procedure CdsClienteAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCadastroGeral: TDmCadastroGeral;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmCadastroGeral.CdsClienteAfterDelete(DataSet: TDataSet);
begin
  CdsCliente.ApplyUpdates(0);
end;

procedure TDmCadastroGeral.CdsClienteAfterPost(DataSet: TDataSet);
begin
  CdsCliente.ApplyUpdates(0);
end;

procedure TDmCadastroGeral.CdsProdutoAfterDelete(DataSet: TDataSet);
begin
  CdsProduto.ApplyUpdates(0);
end;

procedure TDmCadastroGeral.CdsProdutoAfterPost(DataSet: TDataSet);
begin
  CdsProduto.ApplyUpdates(0);
end;

end.

