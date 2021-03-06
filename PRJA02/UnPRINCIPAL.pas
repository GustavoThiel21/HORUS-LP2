unit UnPRINCIPAL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    pnl1: TPanel;
    dscds1: TClientDataSet;
    ds2: TDataSource;
    grpFiltro: TGroupBox;
    grp2: TGroupBox;
    grp3: TGroupBox;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    btnAdicionar: TButton;
    btnRemover: TButton;
    dscds1Id: TIntegerField;
    dscds1Nome: TStringField;
    dscds1Valor: TCurrencyField;
    dscds1Quantidade: TFloatField;
    dscds1Total: TCurrencyField;
    dscds1ProdutosTotal: TAggregateField;
    btnLimpar: TButton;
    btnIndexarid: TButton;
    btnIndexarnome: TButton;
    grp1: TGroupBox;
    grp4: TGroupBox;
    grp5: TGroupBox;
    edtPercorrer: TEdit;
    edtLocate: TEdit;
    edtFindkey: TEdit;
    btnPercorrer: TButton;
    btnLocate: TButton;
    btnFindkey: TButton;
    dbedtTotal: TDBEdit;
    edtValorFiltro: TEdit;
    dbnvgr1: TDBNavigator;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    procedure dscds1CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnIndexaridClick(Sender: TObject);
    procedure btnIndexarnomeClick(Sender: TObject);
    procedure btnPercorrerClick(Sender: TObject);
    procedure btnLocateClick(Sender: TObject);
    procedure btnFindkeyClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnAdicionarClick(Sender: TObject);
begin
  dscds1.Filtered := False;
  dscds1.Filter := edtValorFiltro.Text;
  dscds1.Filtered := True;
end;

procedure TForm2.btnFindkeyClick(Sender: TObject);
begin
  dscds1.IndexFieldNames := 'Id;Id';
  if dscds1.FindKey([2, edtFindkey.Text]) then

  begin
    ShowMessage('Encontrado e registro posicionado!');
  end
  else
    ShowMessage('Valor n�o encontrado!');
end;

procedure TForm2.btnIndexaridClick(Sender: TObject);
begin
  dscds1.IndexFieldNames := 'Id';
end;

procedure TForm2.btnIndexarnomeClick(Sender: TObject);
begin
  dscds1.IndexFieldNames := 'Nome';
end;

procedure TForm2.btnLimparClick(Sender: TObject);
begin
  dscds1.EmptyDataSet;
end;

procedure TForm2.btnLocateClick(Sender: TObject);
begin
  if dscds1.Locate('Nome', edtLocate.Text, [loCaseInsensitive, loPartialKey]) then
  begin
    ShowMessage('Encontrado e registro posicionado!');
  end
  else
    ShowMessage('Valor n�o encontrado!');
end;

procedure TForm2.btnPercorrerClick(Sender: TObject);
var
  vEncontrou: Boolean;
begin
  vEncontrou := False;
  dscds1.DisableControls;
  try
    dscds1.First;
    while not dscds1.eof do
    begin
      if (dscds1.FieldByName('Id').asstring = edtPercorrer.Text) then
      begin
        vEncontrou := True;
        ShowMessage('Valor Encontrado');
        Break;
      end;
      dscds1.Next;
    end;
  finally
    dscds1.EnableControls;
  end;

end;

procedure TForm2.dscds1CalcFields(DataSet: TDataSet);
begin
  if (not dscds1.FieldByName('Valor').IsNull) and (not dscds1.FieldByName('Quantidade').IsNull) then
  begin
    dscds1.FieldByName('Total').Value := dscds1.FieldByName('Valor').Value * dscds1.FieldByName('Quantidade').Value;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
const
  cDatafile = 'Dados.xml';
begin
  dscds1.FileName := ExtractFilePath(application.ExeName) + cDatafile;
  if FileExists(dscds1.FileName) then
    dscds1.Open
  else
    dscds1.CreateDataSet;

end;

end.

