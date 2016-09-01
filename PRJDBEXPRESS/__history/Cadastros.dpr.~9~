program Cadastros;

uses
  Vcl.Forms,
  Frm.Principal in 'Frm.Principal.pas' {FrmPrincipal},
  Dm.Database in 'Dm.Database.pas' {DmDatabse: TDataModule},
  Dm.Cadastro.Localizacao in 'Dm.Cadastro.Localizacao.pas' {DmCadastroLocalizacao: TDataModule},
  Frm.Pais in 'Frm.Pais.pas' {FrmPais},
  Frm.Estado in 'Frm.Estado.pas' {FrmEstado},
  Frm.Cidade in 'Frm.Cidade.pas' {FrmCidade};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDmDatabse, DmDatabse);
  Application.CreateForm(TDmCadastroLocalizacao, DmCadastroLocalizacao);
  Application.Run;
end.
