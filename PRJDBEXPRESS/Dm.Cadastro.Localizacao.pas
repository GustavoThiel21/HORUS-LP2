unit Dm.Cadastro.Localizacao;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr;

type
  TDmCadastroLocalizacao = class(TDataModule)
    SdsPais: TSQLDataSet;
    DspPais: TDataSetProvider;
    CdsPais: TClientDataSet;
    SdsPaisCODIGO: TLargeintField;
    SdsPaisNOME: TStringField;
    SdsPaisSIGLA: TStringField;
    SdsPaisBACEN: TIntegerField;
    CdsPaisCODIGO: TLargeintField;
    CdsPaisNOME: TStringField;
    CdsPaisSIGLA: TStringField;
    CdsPaisBACEN: TIntegerField;
    SdsEstado: TSQLDataSet;
    DspEstado: TDataSetProvider;
    CdsEstado: TClientDataSet;
    SdsEstadoCODIGO: TLargeintField;
    SdsEstadoNOME: TStringField;
    SdsEstadoSIGLA: TStringField;
    SdsEstadoCODIGO_PAIS: TLargeintField;
    CdsEstadoCODIGO: TLargeintField;
    CdsEstadoNOME: TStringField;
    CdsEstadoSIGLA: TStringField;
    CdsEstadoCODIGO_PAIS: TLargeintField;
    SdsCidade: TSQLDataSet;
    DspCidade: TDataSetProvider;
    CdsCidade: TClientDataSet;
    SdsCidadeCODIGO: TLargeintField;
    SdsCidadeNOME: TStringField;
    SdsCidadeIBGE: TIntegerField;
    SdsCidadeCODIGO_ESTADO: TLargeintField;
    CdsCidadeCODIGO: TLargeintField;
    CdsCidadeNOME: TStringField;
    CdsCidadeIBGE: TIntegerField;
    CdsEstadoPAIS_NOME: TStringField;
    CdsCidadeCODIGO_ESTADO: TLargeintField;
    CdsCidadeNOME_ESTADO: TStringField;
    procedure CdsPaisAfterDelete(DataSet: TDataSet);
    procedure CdsPaisAfterPost(DataSet: TDataSet);
    procedure CdsEstadoAfterPost(DataSet: TDataSet);
    procedure CdsEstadoAfterDelete(DataSet: TDataSet);
    procedure CdsCidadeAfterDelete(DataSet: TDataSet);
    procedure CdsCidadeAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmCadastroLocalizacao: TDmCadastroLocalizacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  Dm.Database;

{$R *.dfm}

procedure TDmCadastroLocalizacao.CdsCidadeAfterDelete(DataSet: TDataSet);
begin
  CdsCidade.ApplyUpdates(0);

end;

procedure TDmCadastroLocalizacao.CdsCidadeAfterPost(DataSet: TDataSet);
begin
  CdsCidade.ApplyUpdates(0);

end;

procedure TDmCadastroLocalizacao.CdsEstadoAfterDelete(DataSet: TDataSet);
begin
  CdsEstado.ApplyUpdates(0);

end;

procedure TDmCadastroLocalizacao.CdsEstadoAfterPost(DataSet: TDataSet);
begin
  CdsEstado.ApplyUpdates(0);

end;

procedure TDmCadastroLocalizacao.CdsPaisAfterDelete(DataSet: TDataSet);
begin
  CdsPais.ApplyUpdates(0);

end;

procedure TDmCadastroLocalizacao.CdsPaisAfterPost(DataSet: TDataSet);
begin
  CdsPais.ApplyUpdates(0);

end;

end.

