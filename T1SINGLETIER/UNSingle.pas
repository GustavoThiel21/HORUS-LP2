unit UNSingle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1Codigo: TIntegerField;
    ClientDataSet1Descricao: TStringField;
    ClientDataSet1Unidade: TStringField;
    ClientDataSet1Fornecedor: TStringField;
    ClientDataSet1Data: TDateField;
    ClientDataSet1Quantidade: TFloatField;
    ClientDataSet1Unitario: TCurrencyField;
    ClientDataSet1Total: TCurrencyField;
    ClientDataSet1EstoqueQtd: TAggregateField;
    ClientDataSet1EstoqueVlr: TAggregateField;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dbedtEstoqueQtd: TDBEdit;
    dbedtEstoqueVlr: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    DBNavigator1: TDBNavigator;
    dbedtCodigo: TDBEdit;
    dbedtData: TDBEdit;
    dbedtDescricao: TDBEdit;
    dbedtFornecedor: TDBEdit;
    dbedtUnitario: TDBEdit;
    dbedtUnidade: TDBEdit;
    dbedtTotal: TDBEdit;
    dbedtQuantidade: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    edtValor: TEdit;
    BtnExecutar: TButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBGrid1: TDBGrid;
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ClientDataSet1BeforePost(DataSet: TDataSet);
    procedure ComboBox2Change(Sender: TObject);
    procedure BtnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BtnExecutarClick(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
     //caso for 0 ele ira indexar pelos campos abaixo
    0:
      case ComboBox1.ItemIndex of
        0:
          begin
            ClientDataSet1.IndexFieldNames := 'Codigo';
          end;

        1:
          begin
            ClientDataSet1.IndexFieldNames := 'Descricao';
          end;
        2:
          begin
            ClientDataSet1.IndexFieldNames := 'Unidade';
          end;
        3:
          begin
            ClientDataSet1.IndexFieldNames := 'Fornecedor';
          end;
        4:
          begin
            ClientDataSet1.IndexFieldNames := 'Data';
          end;
        5:
          begin
            ClientDataSet1.IndexFieldNames := 'Quantidade';
          end;
        6:
          begin
            ClientDataSet1.IndexFieldNames := 'Unitario';
          end;
        7:
          begin
            ClientDataSet1.IndexFieldNames := 'Total';
          end;
      end; //fim do case 0

      //caso for 1 ele ira usar o locate pelos campos abaixo
    1:
      case ComboBox1.ItemIndex of
        0:
          begin
            if ClientDataSet1.Locate('Codigo', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
            begin
              ShowMessage('Encontrado e registro posicionado!');
            end
            else
              ShowMessage('Valor n�o encontrado!');
          end;
        1:
          begin
            if ClientDataSet1.Locate('Descricao', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
            begin
              ShowMessage('Encontrado e registro posicionado!');
            end
            else
              ShowMessage('Valor n�o encontrado!');
          end;
        2:
          begin
            if ClientDataSet1.Locate('Unidade', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
            begin
              ShowMessage('Encontrado e registro posicionado!');
            end
            else
              ShowMessage('Valor n�o encontrado!');
          end;
        3:
          begin
            if ClientDataSet1.Locate('Fornecedor', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
            begin
              ShowMessage('Encontrado e registro posicionado!');
            end
            else
              ShowMessage('Valor n�o encontrado!');
          end;
        4:
          begin
            if ClientDataSet1.Locate('Data', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
            begin
              ShowMessage('Encontrado e registro posicionado!');
            end
            else
              ShowMessage('Valor n�o encontrado!');
          end;
        5:
          begin
            if ClientDataSet1.Locate('Quantidade', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
            begin
              ShowMessage('Encontrado e registro posicionado!');
            end
            else
              ShowMessage('Valor n�o encontrado!');
          end;
        6:
          begin
            if ClientDataSet1.Locate('Unitario', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
            begin
              ShowMessage('Encontrado e registro posicionado!');
            end
            else
              ShowMessage('Valor n�o encontrado!');
          end;
        7:
          begin
            if ClientDataSet1.Locate('Total', edtValor.Text, [loCaseInsensitive, loPartialKey]) then
            begin
              ShowMessage('Encontrado e registro posicionado!');
            end
            else
              ShowMessage('Valor n�o encontrado!');
          end;
      end; // fim do case 1
  end;

end;

procedure TForm2.ClientDataSet1BeforePost(DataSet: TDataSet);
begin
  if ((ClientDataSet1.FieldByName('Codigo').IsNull) or (ClientDataSet1.FieldByName('Descricao').IsNull) or (ClientDataSet1.FieldByName('Unidade').IsNull) or (ClientDataSet1.FieldByName('Fornecedor').IsNull) or (ClientDataSet1.FieldByName('Data').IsNull) or (ClientDataSet1.FieldByName('Quantidade').IsNull) or (ClientDataSet1.FieldByName('Unitario').IsNull) or (ClientDataSet1.FieldByName('Total').IsNull)) then
  begin
    ShowMessage('Algum campo ficou vazio!');
    Abort;
  end;

end;

procedure TForm2.ClientDataSet1CalcFields(DataSet: TDataSet);
begin
  if (not ClientDataSet1.FieldByName('Quantidade').IsNull) and (not ClientDataSet1.FieldByName('Unitario').IsNull) then
  begin
    ClientDataSet1.FieldByName('Total').Value := ClientDataSet1.FieldByName('Quantidade').Value * ClientDataSet1.FieldByName('Unitario').Value;
  end;
end;

procedure TForm2.ComboBox2Change(Sender: TObject);
begin
  edtValor.Enabled := False;
  if (ComboBox2.ItemIndex = 0) or (ComboBox2.ItemIndex = 3) or (ComboBox2.ItemIndex = 6) then
    edtValor.Enabled := False
  else
    edtValor.Enabled := True;

end;

procedure TForm2.FormCreate(Sender: TObject);
const
  cDatafile = 'Dados.xml';
begin
  ClientDataSet1.FileName := ExtractFilePath(application.ExeName) + cDatafile;
  if FileExists(ClientDataSet1.FileName) then
    ClientDataSet1.Open
  else
    ClientDataSet1.CreateDataSet;
end;

end.
