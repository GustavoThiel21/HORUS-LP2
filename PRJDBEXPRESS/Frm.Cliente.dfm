object FrmCliente: TFrmCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro cliente'
  ClientHeight = 507
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 702
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 384
      Height = 31
      DataSource = DsCliente
      Align = alLeft
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 765
    Height = 202
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 702
    object Label1: TLabel
      Left = 32
      Top = 13
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 159
      Top = 13
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 32
      Top = 59
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
    end
    object Label4: TLabel
      Left = 535
      Top = 13
      Width = 48
      Height = 13
      Caption = 'CPF/CNPJ'
    end
    object Label5: TLabel
      Left = 440
      Top = 59
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label6: TLabel
      Left = 568
      Top = 59
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object Label7: TLabel
      Left = 32
      Top = 101
      Width = 62
      Height = 13
      Caption = 'Cidade nome'
    end
    object Label8: TLabel
      Left = 32
      Top = 146
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object Label9: TLabel
      Left = 159
      Top = 146
      Width = 28
      Height = 13
      Caption = 'E-mail'
    end
    object DBEdtCodigo: TDBEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 21
      DataField = 'CODIGO'
      DataSource = DsCliente
      TabOrder = 0
    end
    object DBEdtNome: TDBEdit
      Left = 159
      Top = 32
      Width = 370
      Height = 21
      DataField = 'NOME'
      DataSource = DsCliente
      TabOrder = 1
    end
    object DBEdtCPF: TDBEdit
      Left = 535
      Top = 32
      Width = 154
      Height = 21
      DataField = 'CPF_CNPJ'
      DataSource = DsCliente
      TabOrder = 2
    end
    object DBEdtEndereco: TDBEdit
      Left = 32
      Top = 75
      Width = 402
      Height = 21
      DataField = 'ENDERECO'
      DataSource = DsCliente
      TabOrder = 3
    end
    object DBEdtBairro: TDBEdit
      Left = 440
      Top = 75
      Width = 122
      Height = 21
      DataField = 'BAIRRO'
      DataSource = DsCliente
      TabOrder = 4
    end
    object DBEdtCEP: TDBEdit
      Left = 568
      Top = 75
      Width = 121
      Height = 21
      DataField = 'CEP'
      DataSource = DsCliente
      TabOrder = 5
    end
    object DBEdtTelefone: TDBEdit
      Left = 32
      Top = 165
      Width = 121
      Height = 21
      DataField = 'TELEFONE'
      DataSource = DsCliente
      TabOrder = 7
    end
    object DBEdtEmail: TDBEdit
      Left = 159
      Top = 165
      Width = 530
      Height = 21
      DataField = 'EMAIL'
      DataSource = DsCliente
      TabOrder = 8
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 32
      Top = 120
      Width = 657
      Height = 21
      DataField = 'NOME_CIDADE'
      DataSource = DsCliente
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = DsCidade
      TabOrder = 6
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 235
    Width = 765
    Height = 272
    Align = alClient
    TabOrder = 2
    ExplicitTop = 240
    ExplicitWidth = 702
    ExplicitHeight = 222
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 763
      Height = 270
      Align = alClient
      DataSource = DsCliente
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF_CNPJ'
          Title.Caption = 'CPF/CNPJ'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Width = 273
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Title.Caption = 'Bairro'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Title.Caption = 'Telefone'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Title.Caption = 'E-mail'
          Width = 183
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_CIDADE'
          Title.Caption = 'C'#243'digo cidade'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CIDADE'
          Title.Caption = 'Nome cidade'
          Width = 132
          Visible = True
        end>
    end
  end
  object DsCliente: TDataSource
    DataSet = DmCadastroGeral.CdsCliente
    Left = 448
  end
  object DsCidade: TDataSource
    DataSet = DmCadastroLocalizacao.CdsCidade
    Left = 528
  end
end
