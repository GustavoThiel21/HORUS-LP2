object DmCadastroGeral: TDmCadastroGeral
  OldCreateOrder = False
  Height = 248
  Width = 413
  object SdsProduto: TSQLDataSet
    CommandText = 
      'SELECT PRODUTO.CODIGO,'#13#10'       PRODUTO.DESCRICAO,'#13#10'       PRODUT' +
      'O.PRECO'#13#10'  FROM PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabse.Conexao
    Left = 88
    Top = 56
    object SdsProdutoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object SdsProdutoPRECO: TFMTBCDField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object DspProduto: TDataSetProvider
    DataSet = SdsProduto
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 112
  end
  object CdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspProduto'
    AfterPost = CdsProdutoAfterPost
    AfterDelete = CdsProdutoAfterDelete
    Left = 88
    Top = 160
    object CdsProdutoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object CdsProdutoPRECO: TFMTBCDField
      FieldName = 'PRECO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object SdsCliente: TSQLDataSet
    CommandText = 
      'SELECT CLIENTE.CODIGO,'#13#10'       CLIENTE.NOME,'#13#10'       CLIENTE.CPF' +
      '_CNPJ,'#13#10'       CLIENTE.ENDERECO,'#13#10'       CLIENTE.BAIRRO,'#13#10'      ' +
      ' CLIENTE.CEP,'#13#10'       CLIENTE.TELEFONE,'#13#10'       CLIENTE.EMAIL,'#13#10 +
      '       CLIENTE.CODIGO_CIDADE,'#13#10'       CIDADE.CODIGO,'#13#10'       CID' +
      'ADE.NOME'#13#10'  FROM CLIENTE'#13#10' INNER JOIN CIDADE'#13#10'    ON (CLIENTE.CO' +
      'DIGO_CIDADE = CIDADE.CODIGO)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabse.Conexao
    Left = 160
    Top = 56
    object SdsClienteCODIGO: TLargeintField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsClienteNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object SdsClienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object SdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object SdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object SdsClienteCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SdsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object SdsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object SdsClienteCODIGO_CIDADE: TLargeintField
      FieldName = 'CODIGO_CIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspCliente: TDataSetProvider
    DataSet = SdsCliente
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 112
  end
  object CdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCliente'
    AfterPost = CdsClienteAfterPost
    AfterDelete = CdsClienteAfterDelete
    Left = 160
    Top = 160
    object CdsClienteCODIGO: TLargeintField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsClienteNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object CdsClienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object CdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object CdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object CdsClienteCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object CdsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object CdsClienteCODIGO_CIDADE: TLargeintField
      FieldName = 'CODIGO_CIDADE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsClienteNOME_CIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_CIDADE'
      LookupDataSet = DmCadastroLocalizacao.CdsCidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO_CIDADE'
      ProviderFlags = []
      Size = 60
      Lookup = True
    end
  end
end
