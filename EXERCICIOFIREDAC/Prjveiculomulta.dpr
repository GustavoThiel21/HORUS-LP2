program Prjveiculomulta;

uses
  Vcl.Forms,
  Frm.Principal in 'Frm.Principal.pas' {FrmPrincipal},
  Dm.Principal in 'Dm.Principal.pas' {DmPrincipal: TDataModule},
  Frm.Proprietarios in 'Frm.Proprietarios.pas' {FrmProprietario},
  Frm.VeiculosMultas in 'Frm.VeiculosMultas.pas' {FrmVeiculosMultas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDmPrincipal, DmPrincipal);
  Application.Run;
end.
