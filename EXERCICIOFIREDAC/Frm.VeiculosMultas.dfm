object FrmVeiculosMultas: TFrmVeiculosMultas
  Left = 0
  Top = 0
  Caption = 'FrmVeiculosMultas'
  ClientHeight = 505
  ClientWidth = 737
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
  object Label1: TLabel
    Left = 24
    Top = 31
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 24
    Top = 77
    Width = 25
    Height = 13
    Caption = 'Placa'
  end
  object Label3: TLabel
    Left = 24
    Top = 125
    Width = 56
    Height = 13
    Caption = 'Proprietario'
  end
  object Label4: TLabel
    Left = 168
    Top = 77
    Width = 29
    Height = 13
    Caption = 'Marca'
  end
  object Label5: TLabel
    Left = 368
    Top = 77
    Width = 34
    Height = 13
    Caption = 'Modelo'
  end
  object Label6: TLabel
    Left = 599
    Top = 77
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object Item: TLabel
    Left = 24
    Top = 328
    Width = 22
    Height = 13
    Caption = 'Item'
  end
  object Label8: TLabel
    Left = 151
    Top = 328
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label9: TLabel
    Left = 278
    Top = 328
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label10: TLabel
    Left = 405
    Top = 328
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label11: TLabel
    Left = 24
    Top = 376
    Width = 24
    Height = 13
    Caption = 'Local'
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 730
    Height = 25
    DataSource = DsVeiculo
    TabOrder = 0
  end
  object DBNavigator2: TDBNavigator
    Left = 24
    Top = 297
    Width = 240
    Height = 25
    DataSource = DsMultas
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 48
    Width = 138
    Height = 21
    DataField = 'VEI_CODIGO'
    DataSource = DsVeiculo
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 96
    Width = 138
    Height = 21
    DataField = 'VEI_PLACA'
    DataSource = DsVeiculo
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 168
    Top = 96
    Width = 194
    Height = 21
    DataField = 'VEI_MARCA'
    DataSource = DsVeiculo
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 368
    Top = 96
    Width = 225
    Height = 21
    DataField = 'VEI_MODELO'
    DataSource = DsVeiculo
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 599
    Top = 96
    Width = 130
    Height = 21
    DataField = 'VEI_ANO'
    DataSource = DsVeiculo
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 23
    Top = 171
    Width = 706
    Height = 120
    DataSource = DsVeiculo
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_PLACA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MARCA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_MODELO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_ANO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRP_CODIGO'
        Width = 64
        Visible = True
      end>
  end
  object DBEdit7: TDBEdit
    Left = 24
    Top = 349
    Width = 121
    Height = 21
    DataField = 'MLT_ITEM'
    DataSource = DsMultas
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 151
    Top = 347
    Width = 121
    Height = 21
    DataField = 'MLT_DATA'
    DataSource = DsMultas
    TabOrder = 9
  end
  object DBEdit9: TDBEdit
    Left = 278
    Top = 347
    Width = 121
    Height = 21
    DataField = 'MLT_HORA'
    DataSource = DsMultas
    TabOrder = 10
  end
  object DBEdit10: TDBEdit
    Left = 405
    Top = 347
    Width = 324
    Height = 21
    DataField = 'MLT_VALOR'
    DataSource = DsMultas
    TabOrder = 11
  end
  object DBEdit11: TDBEdit
    Left = 23
    Top = 395
    Width = 706
    Height = 21
    DataField = 'MLT_LOCAL'
    DataSource = DsMultas
    TabOrder = 12
  end
  object DBGrid2: TDBGrid
    Left = 23
    Top = 422
    Width = 706
    Height = 80
    DataSource = DsMultas
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_ITEM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MLT_LOCAL'
        Width = 64
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 23
    Top = 144
    Width = 706
    Height = 21
    DataField = 'NOME_PROPRIETARIO'
    DataSource = DsVeiculo
    TabOrder = 14
  end
  object DsVeiculo: TDataSource
    DataSet = DmPrincipal.QryVeiculo
    Left = 256
    Top = 24
  end
  object DsMultas: TDataSource
    DataSet = DmPrincipal.QryMultas
    Left = 320
    Top = 24
  end
  object DsProprietario: TDataSource
    DataSet = DmPrincipal.QryProprietario
    Left = 384
    Top = 24
  end
end
