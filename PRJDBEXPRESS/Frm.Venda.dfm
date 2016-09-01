object FrmVenda: TFrmVenda
  Left = 0
  Top = 0
  Caption = 'Realiza'#231#227'o de venda'
  ClientHeight = 509
  ClientWidth = 664
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
    Width = 664
    Height = 35
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 312
      Height = 33
      DataSource = DsVenda
      Align = alLeft
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 35
    Width = 664
    Height = 198
    Align = alTop
    Caption = 'Mestre - Venda'
    TabOrder = 1
    object Label1: TLabel
      Left = 25
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 152
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label3: TLabel
      Left = 279
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 63
      Width = 660
      Height = 133
      Align = alBottom
      DataSource = DsVenda
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
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_CLIENTE'
          Title.Caption = 'C'#243'digo cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CLIENTE'
          Title.Caption = 'Nome cliente'
          Width = 425
          Visible = True
        end>
    end
    object DBEdit2: TDBEdit
      Left = 152
      Top = 32
      Width = 121
      Height = 21
      DataField = 'DATA'
      DataSource = DsVenda
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 25
      Top = 32
      Width = 121
      Height = 21
      DataField = 'CODIGO'
      DataSource = DsVenda
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 279
      Top = 32
      Width = 370
      Height = 21
      DataField = 'NOME_CLIENTE'
      DataSource = DsVenda
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 233
    Width = 664
    Height = 276
    Align = alClient
    Caption = 'Detalhe - Itens'
    TabOrder = 2
    ExplicitHeight = 208
    object Label4: TLabel
      Left = 279
      Top = 90
      Width = 40
      Height = 13
      Caption = 'R$ Total'
    end
    object Label5: TLabel
      Left = 152
      Top = 91
      Width = 53
      Height = 13
      Caption = 'R$ Unitario'
    end
    object Label6: TLabel
      Left = 25
      Top = 91
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label7: TLabel
      Left = 25
      Top = 48
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label8: TLabel
      Left = 152
      Top = 48
      Width = 86
      Height = 13
      Caption = 'Produto descri'#231#227'o'
    end
    object DBNavigator2: TDBNavigator
      Left = 0
      Top = 19
      Width = 248
      Height = 23
      DataSource = DsItem
      Align = alCustom
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 25
      Top = 64
      Width = 121
      Height = 21
      DataField = 'CODIGO_VENDA_ITEM'
      DataSource = DsItem
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 25
      Top = 107
      Width = 121
      Height = 21
      DataField = 'QUANTIDADE'
      DataSource = DsItem
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 152
      Top = 107
      Width = 121
      Height = 21
      DataField = 'UNITARIO'
      DataSource = DsItem
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 279
      Top = 107
      Width = 121
      Height = 21
      DataField = 'TOTAL'
      DataSource = DsItem
      TabOrder = 4
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 137
      Width = 660
      Height = 137
      Align = alBottom
      DataSource = DsItem
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_VENDA_ITEM'
          Title.Caption = 'C'#243'digo'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_PRODUTO'
          Title.Caption = 'C'#243'digo produto'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Title.Caption = 'Descri'#231#227'o produto'
          Width = 306
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNITARIO'
          Title.Caption = 'R$ Unitario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'R$ Total'
          Visible = True
        end>
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 152
      Top = 64
      Width = 481
      Height = 21
      DataField = 'PRODUTO'
      DataSource = DsItem
      TabOrder = 6
    end
  end
  object DsItem: TDataSource
    DataSet = DmMovimentacao.CdsItem
    Left = 352
  end
  object DsVenda: TDataSource
    DataSet = DmMovimentacao.CdsVenda
    Left = 416
  end
  object DsCliente: TDataSource
    DataSet = DmCadastroGeral.CdsCliente
    Left = 480
  end
  object DsProduto: TDataSource
    DataSet = DmCadastroGeral.CdsProduto
    Left = 544
  end
end
