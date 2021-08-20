object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 334
  Top = 171
  Height = 358
  Width = 532
  object sqlConCidade: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 216
    Top = 48
  end
  object IBTransaction1: TIBTransaction
    Active = False
    AutoStopAction = saNone
    Left = 112
    Top = 40
  end
  object IBQuery2: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 104
    Top = 104
  end
  object baseDadosEstoque: TIBDatabase
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 16
    Top = 40
  end
end
