object FrmPais: TFrmPais
  Left = 0
  Top = 0
  Caption = 'FrmPais'
  ClientHeight = 350
  ClientWidth = 669
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
    Width = 669
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 570
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 392
      Height = 31
      DataSource = DsPais
      Align = alLeft
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 669
    Height = 107
    Align = alTop
    TabOrder = 1
    ExplicitTop = 57
    ExplicitWidth = 578
    object Label1: TLabel
      Left = 64
      Top = 6
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 232
      Top = 6
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 64
      Top = 53
      Width = 22
      Height = 13
      Caption = 'Sigla'
    end
    object Label4: TLabel
      Left = 232
      Top = 53
      Width = 33
      Height = 13
      Caption = 'BACEN'
    end
    object DBEditCodigo: TDBEdit
      Left = 64
      Top = 20
      Width = 121
      Height = 21
      DataField = 'CODIGO'
      DataSource = DsPais
      TabOrder = 0
    end
    object DBEditSigla: TDBEdit
      Left = 64
      Top = 68
      Width = 121
      Height = 21
      DataField = 'SIGLA'
      DataSource = DsPais
      TabOrder = 1
    end
    object DBEditNome: TDBEdit
      Left = 232
      Top = 20
      Width = 313
      Height = 21
      DataField = 'NOME'
      DataSource = DsPais
      TabOrder = 2
    end
    object DBEditBACEN: TDBEdit
      Left = 232
      Top = 68
      Width = 121
      Height = 21
      DataField = 'BACEN'
      DataSource = DsPais
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 140
    Width = 669
    Height = 210
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    ExplicitTop = 164
    ExplicitWidth = 578
    ExplicitHeight = 126
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 667
      Height = 208
      Align = alClient
      DataSource = DsPais
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
          Width = 328
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIGLA'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BACEN'
          Width = 64
          Visible = True
        end>
    end
  end
  object DsPais: TDataSource
    DataSet = DmCadastroLocalizacao.CdsPais
    Left = 504
    Top = 32
  end
end
