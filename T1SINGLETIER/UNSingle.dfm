object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 501
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 501
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 425
      Width = 769
      Height = 72
      Align = alTop
      Caption = 'Totais'
      TabOrder = 0
      object Label3: TLabel
        Left = 473
        Top = 36
        Width = 81
        Height = 13
        Caption = 'Valor do Estoque'
      end
      object Label4: TLabel
        Left = 191
        Top = 34
        Width = 115
        Height = 13
        Caption = 'Quantidade em Estoque'
      end
      object dbedtEstoqueQtd: TDBEdit
        Left = 312
        Top = 32
        Width = 121
        Height = 21
        DataField = 'EstoqueQtd'
        DataSource = DataSource1
        TabOrder = 0
      end
      object dbedtEstoqueVlr: TDBEdit
        Left = 560
        Top = 32
        Width = 121
        Height = 21
        DataField = 'EstoqueVlr'
        DataSource = DataSource1
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 273
      Width = 769
      Height = 152
      Align = alTop
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 765
        Height = 135
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
            FieldName = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Width = 232
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Unidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fornecedor'
            Width = 244
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Unitario'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Visible = True
          end>
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 177
      Width = 769
      Height = 96
      Align = alTop
      TabOrder = 2
      ExplicitLeft = 2
      ExplicitTop = 171
      object Label11: TLabel
        Left = 17
        Top = 37
        Width = 33
        Height = 13
        Caption = 'Campo'
      end
      object Label12: TLabel
        Left = 184
        Top = 37
        Width = 24
        Height = 13
        Caption = 'A'#231#227'o'
      end
      object Label13: TLabel
        Left = 352
        Top = 37
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object Label14: TLabel
        Left = 17
        Top = 18
        Width = 158
        Height = 13
        Caption = 'Pesquisa, Ordena'#231#227'o e Filtragem'
      end
      object ComboBox1: TComboBox
        Left = 17
        Top = 56
        Width = 145
        Height = 21
        ItemIndex = 0
        TabOrder = 0
        Text = 'C'#243'digo'
        Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o'
          'Unidade'
          'Fornecedor'
          'Data'
          'Quantidade'
          'Unitario'
          'Total')
      end
      object ComboBox2: TComboBox
        Left = 184
        Top = 56
        Width = 145
        Height = 21
        ItemIndex = 0
        TabOrder = 1
        Text = 'Indexar'
        OnChange = ComboBox2Change
        Items.Strings = (
          'Indexar'
          'Locate'
          'Findkey'
          'Limpar'
          'Percorrer'
          'Filtrar'
          'Limpar Filtro')
      end
      object edtValor: TEdit
        Left = 352
        Top = 56
        Width = 281
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object BtnExecutar: TButton
        Left = 654
        Top = 56
        Width = 99
        Height = 25
        Caption = 'Executar'
        TabOrder = 3
        OnClick = BtnExecutarClick
      end
    end
    object GroupBox4: TGroupBox
      Left = 1
      Top = 49
      Width = 769
      Height = 128
      Align = alTop
      TabOrder = 3
      object Label1: TLabel
        Left = 16
        Top = 21
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 16
        Top = 69
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label5: TLabel
        Left = 153
        Top = 21
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label6: TLabel
        Left = 153
        Top = 69
        Width = 55
        Height = 13
        Caption = 'Fornecedor'
      end
      object Label7: TLabel
        Left = 360
        Top = 69
        Width = 97
        Height = 13
        Caption = 'Quantidade (+ ou -)'
      end
      object Label8: TLabel
        Left = 496
        Top = 69
        Width = 37
        Height = 13
        Caption = 'Unitario'
      end
      object Label9: TLabel
        Left = 632
        Top = 69
        Width = 24
        Height = 13
        Caption = 'Total'
      end
      object Label10: TLabel
        Left = 632
        Top = 21
        Width = 39
        Height = 13
        Caption = 'Unidade'
      end
      object dbedtCodigo: TDBEdit
        Left = 16
        Top = 40
        Width = 121
        Height = 21
        DataField = 'Codigo'
        DataSource = DataSource1
        TabOrder = 0
      end
      object dbedtData: TDBEdit
        Left = 17
        Top = 88
        Width = 121
        Height = 21
        DataField = 'Data'
        DataSource = DataSource1
        TabOrder = 1
      end
      object dbedtDescricao: TDBEdit
        Left = 153
        Top = 42
        Width = 464
        Height = 21
        DataField = 'Descricao'
        DataSource = DataSource1
        TabOrder = 2
      end
      object dbedtFornecedor: TDBEdit
        Left = 153
        Top = 88
        Width = 192
        Height = 21
        DataField = 'Fornecedor'
        DataSource = DataSource1
        TabOrder = 3
      end
      object dbedtUnitario: TDBEdit
        Left = 496
        Top = 88
        Width = 121
        Height = 21
        DataField = 'Unitario'
        DataSource = DataSource1
        TabOrder = 4
      end
      object dbedtUnidade: TDBEdit
        Left = 632
        Top = 40
        Width = 121
        Height = 21
        DataField = 'Unidade'
        DataSource = DataSource1
        TabOrder = 5
      end
      object dbedtTotal: TDBEdit
        Left = 632
        Top = 88
        Width = 121
        Height = 21
        DataField = 'Total'
        DataSource = DataSource1
        TabOrder = 6
      end
      object dbedtQuantidade: TDBEdit
        Left = 360
        Top = 88
        Width = 121
        Height = 21
        DataField = 'Quantidade'
        DataSource = DataSource1
        TabOrder = 7
      end
    end
    object GroupBox5: TGroupBox
      Left = 1
      Top = 1
      Width = 769
      Height = 48
      Align = alTop
      TabOrder = 4
      object DBNavigator1: TDBNavigator
        Left = 360
        Top = 15
        Width = 407
        Height = 31
        DataSource = DataSource1
        Align = alRight
        TabOrder = 0
      end
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    BeforePost = ClientDataSet1BeforePost
    OnCalcFields = ClientDataSet1CalcFields
    Left = 264
    Top = 340
    object ClientDataSet1Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ClientDataSet1Descricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object ClientDataSet1Unidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object ClientDataSet1Fornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 50
    end
    object ClientDataSet1Data: TDateField
      FieldName = 'Data'
    end
    object ClientDataSet1Quantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object ClientDataSet1Unitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object ClientDataSet1Total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object ClientDataSet1EstoqueQtd: TAggregateField
      FieldName = 'EstoqueQtd'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'sum(Quantidade)'
    end
    object ClientDataSet1EstoqueVlr: TAggregateField
      FieldName = 'EstoqueVlr'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'sum(quantidade*unitario)'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 368
    Top = 348
  end
end
