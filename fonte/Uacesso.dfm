object frmAcesso: TfrmAcesso
  Left = 408
  Top = 183
  Width = 396
  Height = 257
  Caption = 'Acesso'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 88
    Width = 39
    Height = 13
    Caption = 'Usu'#225'rio:'
  end
  object Label2: TLabel
    Left = 96
    Top = 120
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object editUsuario: TEdit
    Left = 136
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object editSenha: TEdit
    Left = 136
    Top = 112
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btAcesso: TButton
    Left = 176
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Acesso'
    ModalResult = 1
    TabOrder = 2
    OnClick = btAcessoClick
  end
  object BANCO_DADOS: TIBDatabase
    Connected = True
    DatabaseName = 'CESAR:C:\Delphi_Avancado\bancoDados\ESTOQUE.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 16
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = BANCO_DADOS
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 48
    Top = 16
  end
  object dsAcesso: TDataSource
    DataSet = ibqueryLogin
    Left = 128
    Top = 16
  end
  object ibqueryLogin: TIBQuery
    Database = BANCO_DADOS
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from USUARIO'
      'where USU_LOGIN = :nome and USU_SENHA = :senha'
      '')
    Left = 88
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'senha'
        ParamType = ptUnknown
      end>
    object ibqueryLoginUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'USUARIO.USU_CODIGO'
      Required = True
    end
    object ibqueryLoginUSU_NOME: TIBStringField
      FieldName = 'USU_NOME'
      Origin = 'USUARIO.USU_NOME'
      Required = True
      Size = 30
    end
    object ibqueryLoginUSU_LOGIN: TIBStringField
      FieldName = 'USU_LOGIN'
      Origin = 'USUARIO.USU_LOGIN'
      Required = True
      Size = 10
    end
    object ibqueryLoginUSU_SENHA: TIBStringField
      FieldName = 'USU_SENHA'
      Origin = 'USUARIO.USU_SENHA'
      Required = True
      Size = 10
    end
    object ibqueryLoginUSU_NIVEL: TIntegerField
      FieldName = 'USU_NIVEL'
      Origin = 'USUARIO.USU_NIVEL'
      Required = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 24
    object Novobancodedados1: TMenuItem
      Caption = 'Novo Banco de Dados'
      OnClick = Novobancodedados1Click
    end
  end
  object OpenDialog1: TOpenDialog
    FileName = 'C:\Delphi_Avancado\bancoDados\ESTOQUE.GDB'
    Filter = 'Bancos Interbase|*.gdb|Bancos Firebase|*.fdb'
    FilterIndex = 0
    InitialDir = 'CESAR:C:\Delphi_Avancado\bancoDados'
    Left = 272
    Top = 16
  end
end
