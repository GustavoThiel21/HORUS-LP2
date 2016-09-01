program Cadastros;

uses
  Vcl.Forms,
  Frm.Principal in 'Frm.Principal.pas' {FrmPrincipal},
  Dm.Database in 'Dm.Database.pas' {DmDatabse: TDataModule},
  Dm.Cadastro.Localizacao in 'Dm.Cadastro.Localizacao.pas' {DmCadastroLocalizacao: TDataModule},
  Frm.Pais in 'Frm.Pais.pas' {FrmPais},
  Frm.Estado in 'Frm.Estado.pas' {FrmEstado},
  Frm.Cidade in 'Frm.Cidade.pas' {FrmCidade},
  Dm.Cadastro.Geral in 'Dm.Cadastro.Geral.pas' {DmCadastroGeral: TDataModule},
  Frm.Produto in 'Frm.Produto.pas' {FrmProduto},
  Frm.Cliente in 'Frm.Cliente.pas' {FrmCliente},
  Dm.Movimentacao in 'Dm.Movimentacao.pas' {DmMovimentacao: TDataModule},
  Frm.Venda in 'Frm.Venda.pas' {FrmVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDmDatabse, DmDatabse);
  Application.CreateForm(TDmCadastroLocalizacao, DmCadastroLocalizacao);
  Application.CreateForm(TDmCadastroGeral, DmCadastroGeral);
  Application.CreateForm(TDmMovimentacao, DmMovimentacao);
  Application.CreateForm(TFrmVenda, FrmVenda);
  Application.Run;
end.
