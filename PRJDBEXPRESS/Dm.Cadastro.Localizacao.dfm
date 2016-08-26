object DmCadastroLocalizacao: TDmCadastroLocalizacao
  OldCreateOrder = False
  Height = 297
  Width = 429
  object SdsPais: TSQLDataSet
    CommandText = 'SELECT PAIS.CODIGO, PAIS.NOME, PAIS.SIGLA, PAIS.BACEN FROM PAIS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabse.Conexao
    Left = 88
    Top = 56
    object SdsPaisCODIGO: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsPaisNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object SdsPaisSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object SdsPaisBACEN: TIntegerField
      DisplayLabel = 'C'#243'digo banco central'
      FieldName = 'BACEN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspPais: TDataSetProvider
    DataSet = SdsPais
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 112
  end
  object CdsPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPais'
    AfterPost = CdsPaisAfterPost
    AfterDelete = CdsPaisAfterDelete
    Left = 88
    Top = 160
    object CdsPaisCODIGO: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsPaisNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object CdsPaisSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object CdsPaisBACEN: TIntegerField
      DisplayLabel = 'C'#243'digo banco central'
      FieldName = 'BACEN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object SdsEstado: TSQLDataSet
    CommandText = 
      'SELECT ESTADO.CODIGO, ESTADO.NOME, ESTADO.SIGLA, ESTADO.CODIGO_P' +
      'AIS FROM ESTADO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabse.Conexao
    Left = 144
    Top = 56
    object SdsEstadoCODIGO: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsEstadoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object SdsEstadoSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object SdsEstadoCODIGO_PAIS: TLargeintField
      DisplayLabel = 'C'#243'digo Pa'#237's'
      FieldName = 'CODIGO_PAIS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspEstado: TDataSetProvider
    DataSet = SdsEstado
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 112
  end
  object CdsEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEstado'
    AfterPost = CdsPaisAfterPost
    AfterDelete = CdsPaisAfterDelete
    Left = 144
    Top = 160
    object CdsEstadoCODIGO: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsEstadoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object CdsEstadoSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object CdsEstadoCODIGO_PAIS: TLargeintField
      DisplayLabel = 'C'#243'digo Pa'#237's'
      FieldName = 'CODIGO_PAIS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object CdsEstadoPAIS_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'PAIS_NOME'
      LookupDataSet = CdsPais
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODIGO_PAIS'
      ProviderFlags = []
      Size = 60
      Lookup = True
    end
  end
  object SdsCidade: TSQLDataSet
    CommandText = 
      'SELECT CIDADE.CODIGO, CIDADE.NOME, CIDADE.IBGE, CIDADE.CODIGO_ES' +
      'TADO FROM CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmDatabse.Conexao
    Left = 200
    Top = 56
    object SdsCidadeCODIGO: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SdsCidadeNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object SdsCidadeIBGE: TIntegerField
      DisplayLabel = 'Ibge'
      FieldName = 'IBGE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SdsCidadeCODIGO_ESTADO: TLargeintField
      DisplayLabel = 'C'#243'digo estado'
      FieldName = 'CODIGO_ESTADO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object DspCidade: TDataSetProvider
    DataSet = SdsCidade
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 112
  end
  object CdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCidade'
    AfterPost = CdsPaisAfterPost
    AfterDelete = CdsPaisAfterDelete
    Left = 200
    Top = 160
    object CdsCidadeCODIGO: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CdsCidadeNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object CdsCidadeIBGE: TIntegerField
      DisplayLabel = 'Ibge'
      FieldName = 'IBGE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
end
