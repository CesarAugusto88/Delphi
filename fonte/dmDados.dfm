object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 192
  Top = 117
  Height = 589
  Width = 656
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = baseDadosEstoque
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 144
    Top = 32
  end
  object sqlConCidade: TIBQuery
    Database = baseDadosEstoque
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TBL_CIDADE')
    Left = 40
    Top = 120
    object sqlConCidadeCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      Origin = 'TBL_CIDADE.CID_CODIGO'
      Required = True
    end
    object sqlConCidadeCID_NOME: TIBStringField
      FieldName = 'CID_NOME'
      Origin = 'TBL_CIDADE.CID_NOME'
      Required = True
      Size = 30
    end
    object sqlConCidadeCID_UF: TIBStringField
      FieldName = 'CID_UF'
      Origin = 'TBL_CIDADE.CID_UF'
      Required = True
      Size = 2
    end
  end
  object baseDadosEstoque: TIBDatabase
    Connected = True
    DatabaseName = 'CESAR:C:\Delphi_Avancado\bancoDados\ESTOQUE.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 48
    Top = 32
  end
  object dsSqlConCidade: TDataSource
    DataSet = sqlConCidade
    Left = 128
    Top = 120
  end
end
