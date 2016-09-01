object FrmEstado: TFrmEstado
  Left = 0
  Top = 0
  Caption = 'Cadastro estado'
  ClientHeight = 353
  ClientWidth = 665
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 665
    Height = 35
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 392
      Height = 33
      DataSource = DsEstado
      Align = alLeft
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 35
    Width = 665
    Height = 120
    Align = alTop
    TabOrder = 1
    object LblCodigo: TLabel
      Left = 24
      Top = 6
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object LblNome: TLabel
      Left = 151
      Top = 6
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object LblSigla: TLabel
      Left = 493
      Top = 6
      Width = 22
      Height = 13
      Caption = 'Sigla'
    end
    object LblPais: TLabel
      Left = 24
      Top = 61
      Width = 19
      Height = 13
      Caption = 'Pa'#237's'
    end
    object DBEdtCodigo: TDBEdit
      Left = 24
      Top = 24
      Width = 121
      Height = 21
      DataField = 'CODIGO'
      DataSource = DsEstado
      TabOrder = 0
    end
    object DBEdtNome: TDBEdit
      Left = 151
      Top = 24
      Width = 336
      Height = 21
      DataField = 'NOME'
      DataSource = DsEstado
      TabOrder = 1
    end
    object DBEdtSigla: TDBEdit
      Left = 493
      Top = 24
      Width = 44
      Height = 21
      DataField = 'SIGLA'
      DataSource = DsEstado
      TabOrder = 2
    end
    object DBLkpCbPais: TDBLookupComboBox
      Left = 24
      Top = 80
      Width = 513
      Height = 21
      DataField = 'CODIGO_PAIS'
      DataSource = DsEstado
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = DsPais
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 155
    Width = 665
    Height = 198
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 663
      Height = 196
      Align = alClient
      DataSource = DsEstado
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIGLA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_PAIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAIS_NOME'
          Visible = True
        end>
    end
  end
  object DsEstado: TDataSource
    DataSet = DmCadastroLocalizacao.CdsEstado
    Left = 456
  end
  object DsPais: TDataSource
    DataSet = DmCadastroLocalizacao.CdsPais
    Left = 520
    Top = 8
  end
end
