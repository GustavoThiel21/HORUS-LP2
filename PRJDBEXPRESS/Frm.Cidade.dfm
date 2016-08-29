object FrmCidade: TFrmCidade
  Left = 0
  Top = 0
  Caption = 'FrmCidade'
  ClientHeight = 353
  ClientWidth = 670
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
    Width = 670
    Height = 35
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 725
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 392
      Height = 33
      DataSource = DsCidade
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 39
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 35
    Width = 670
    Height = 122
    Align = alTop
    TabOrder = 1
    ExplicitTop = 41
    ExplicitWidth = 598
    object LblCodigo: TLabel
      Left = 40
      Top = 13
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object LblNome: TLabel
      Left = 128
      Top = 13
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object LblIbge: TLabel
      Left = 472
      Top = 13
      Width = 22
      Height = 13
      Caption = 'Ibge'
    end
    object LblEstado: TLabel
      Left = 40
      Top = 59
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object DBEdtCodigo: TDBEdit
      Left = 40
      Top = 32
      Width = 73
      Height = 21
      DataField = 'CODIGO'
      DataSource = DsCidade
      TabOrder = 0
    end
    object DBEdtNome: TDBEdit
      Left = 128
      Top = 32
      Width = 338
      Height = 21
      DataField = 'NOME'
      DataSource = DsCidade
      TabOrder = 1
    end
    object DBEdtIbge: TDBEdit
      Left = 472
      Top = 32
      Width = 65
      Height = 21
      DataField = 'IBGE'
      DataSource = DsCidade
      TabOrder = 2
    end
    object DBLkpCbEstado: TDBLookupComboBox
      Left = 40
      Top = 78
      Width = 497
      Height = 21
      DataField = 'CODIGO_ESTADO'
      DataSource = DsCidade
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = DsEstado
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 157
    Width = 670
    Height = 196
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 413
    ExplicitTop = 370
    ExplicitWidth = 119
    ExplicitHeight = 185
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 668
      Height = 194
      Align = alClient
      DataSource = DsCidade
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
          FieldName = 'IBGE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_ESTADO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_ESTADO'
          Visible = True
        end>
    end
  end
  object DsCidade: TDataSource
    DataSet = DmCadastroLocalizacao.CdsCidade
    Left = 400
    Top = 8
  end
  object DsEstado: TDataSource
    DataSet = DmCadastroLocalizacao.CdsEstado
    Left = 488
    Top = 8
  end
end
