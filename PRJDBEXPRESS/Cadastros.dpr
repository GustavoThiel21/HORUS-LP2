program Cadastros;

uses
  Vcl.Forms,
  Frm.Principal in 'Frm.Principal.pas' {FrmPrincipal},
  Dm.Database in 'Dm.Database.pas' {DmDatabse: TDataModule},
  Dm.Cadastro.Localizacao in 'Dm.Cadastro.Localizacao.pas' {DmCadastroLocalizacao: TDataModule},
  Frm.Pais in 'Frm.Pais.pas' {FrmPais};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDmDatabse, DmDatabse);
  Application.CreateForm(TDmCadastroLocalizacao, DmCadastroLocalizacao);
  Application.CreateForm(TFrmPais, FrmPais);
  Application.Run;
end.
