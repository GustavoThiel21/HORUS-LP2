object FrmProduto: TFrmProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro produto'
  ClientHeight = 356
  ClientWidth = 646
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
    Width = 646
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 447
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 400
      Height = 31
      DataSource = DataSource1
      Align = alLeft
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 646
    Height = 251
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 691
    ExplicitHeight = 635
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 644
      Height = 249
      Align = alClient
      DataSource = DataSource1
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 413
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Caption = 'Pre'#231'o'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 33
    Width = 646
    Height = 72
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 635
    object Label1: TLabel
      Left = 24
      Top = 13
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 151
      Top = 13
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 495
      Top = 13
      Width = 43
      Height = 13
      Caption = 'R$ Pre'#231'o'
    end
    object DBEdtCodigo: TDBEdit
      Left = 24
      Top = 32
      Width = 121
      Height = 21
      DataField = 'CODIGO'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdtDescricao: TDBEdit
      Left = 151
      Top = 32
      Width = 338
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdtPreco: TDBEdit
      Left = 495
      Top = 32
      Width = 121
      Height = 21
      DataField = 'PRECO'
      DataSource = DataSource1
      TabOrder = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = DmCadastroGeral.CdsProduto
    Left = 576
  end
end
