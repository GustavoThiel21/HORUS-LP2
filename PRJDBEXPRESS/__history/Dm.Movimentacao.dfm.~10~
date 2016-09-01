object DmMovimentacao: TDmMovimentacao
  OldCreateOrder = False
  Height = 332
  Width = 489
  object SdsVenda: TSQLDataSet
    CommandText = 
      'SELECT VENDA.CODIGO ,'#13#10'       VENDA.DATA,'#13#10'       VENDA.OBS,'#13#10'  ' +
      '     VENDA.CODIGO_CLIENTE'#13#10'  FROM VENDA'#13#10' INNER JOIN CLIENTE'#13#10'  ' +
      '  ON (VENDA.CODIGO_CLIENTE = CLIENTE.CODIGO)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabse.Conexao
    Left = 88
    Top = 56
    object SdsVendaCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Required = True
    end
    object SdsVendaDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object SdsVendaOBS: TStringField
      FieldName = 'OBS'
      Size = 500
    end
    object SdsVendaCODIGO_CLIENTE: TLargeintField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
  end
  object DspVenda: TDataSetProvider
    DataSet = SdsVenda
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 112
  end
  object CdsVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspVenda'
    AfterPost = CdsVendaAfterPost
    AfterDelete = CdsVendaAfterDelete
    Left = 88
    Top = 160
    object CdsVendaCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Required = True
    end
    object CdsVendaDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object CdsVendaOBS: TStringField
      FieldName = 'OBS'
      Size = 500
    end
    object CdsVendaCODIGO_CLIENTE: TLargeintField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object CdsVendaNOME_CLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_CLIENTE'
      LookupDataSet = DmCadastroGeral.CdsCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO_CLIENTE'
      Size = 60
      Lookup = True
    end
    object CdsVendaSdsItem: TDataSetField
      FieldName = 'SdsItem'
    end
  end
  object DsMestre: TDataSource
    DataSet = SdsVenda
    Left = 152
    Top = 112
  end
  object SdsItem: TSQLDataSet
    CommandText = 
      'SELECT CODIGO AS CODIGO_VENDA_ITEM,'#13#10'       QUANTIDADE,'#13#10'       ' +
      'UNITARIO,'#13#10'       TOTAL,'#13#10'       CODIGO_VENDA,'#13#10'       CODIGO_PR' +
      'ODUTO'#13#10'    FROM VENDA_ITEM'#13#10' WHERE VENDA_ITEM.CODIGO_VENDA = :CO' +
      'DIGO'
    DataSource = DsMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQLConnection = DmDatabse.Conexao
    Left = 200
    Top = 56
    object SdsItemCODIGO_VENDA_ITEM: TLargeintField
      FieldName = 'CODIGO_VENDA_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsItemQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 4
    end
    object SdsItemUNITARIO: TFMTBCDField
      FieldName = 'UNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object SdsItemTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object SdsItemCODIGO_VENDA: TLargeintField
      FieldName = 'CODIGO_VENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SdsItemCODIGO_PRODUTO: TLargeintField
      FieldName = 'CODIGO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object CdsItem: TClientDataSet
    Aggregates = <>
    DataSetField = CdsVendaSdsItem
    Params = <>
    AfterInsert = CdsItemAfterInsert
    Left = 200
    Top = 160
    object CdsItemCODIGO_VENDA_ITEM: TLargeintField
      FieldName = 'CODIGO_VENDA_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsItemQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 4
    end
    object CdsItemUNITARIO: TFMTBCDField
      FieldName = 'UNITARIO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object CdsItemTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object CdsItemCODIGO_VENDA: TLargeintField
      FieldName = 'CODIGO_VENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsItemCODIGO_PRODUTO: TLargeintField
      FieldName = 'CODIGO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsItemPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = DmCadastroGeral.CdsProduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODIGO_PRODUTO'
      Size = 60
      Lookup = True
    end
  end
end
