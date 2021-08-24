object frmCadCidades: TfrmCadCidades
  Left = 272
  Top = 144
  Width = 870
  Height = 500
  Caption = 'Formul'#225'rio para cadastro e manuten'#231#227'o de Clientes'
  Color = clBtnFace
  Font.Charset = GREEK_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object sLabel1: TsLabel
    Left = 40
    Top = 88
    Width = 61
    Height = 23
    Caption = 'C'#243'digo'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
  end
  object sLabel2: TsLabel
    Left = 40
    Top = 132
    Width = 51
    Height = 23
    Caption = 'Nome'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
  end
  object sLabel3: TsLabel
    Left = 40
    Top = 200
    Width = 24
    Height = 23
    Caption = 'UF'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 304
    Width = 521
    Height = 120
    DataSource = DataModule1.dsSqlConCidade
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = GREEK_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CID_CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_NOME'
        Title.Caption = 'Nome'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 342
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CID_UF'
        Title.Caption = 'UF'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 163
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 32
    Width = 400
    Height = 41
    DataSource = DataModule1.dsSqlConCidade
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object ComboBox1: TComboBox
    Left = 120
    Top = 200
    Width = 145
    Height = 22
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
  end
  object edCod: TsEdit
    Left = 120
    Top = 88
    Width = 121
    Height = 22
    Color = clWhite
    Font.Charset = GREEK_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
  end
  object edNom: TsEdit
    Left = 120
    Top = 133
    Width = 121
    Height = 22
    Color = clWhite
    Font.Charset = GREEK_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
  end
  object tblAuxCidade: TIBTable
    Database = DataModule1.baseDadosEstoque
    Transaction = DataModule1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CID_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CID_NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CID_UF'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'CIDADE_PK'
        Fields = 'CID_CODIGO'
        Options = [ixUnique]
      end
      item
        Name = 'IND_COD_CIDADE'
        Fields = 'CID_CODIGO'
      end
      item
        Name = 'IND_NOME_CID'
        Fields = 'CID_NOME'
      end>
    StoreDefs = True
    TableName = 'TBL_CIDADE'
    Left = 496
    Top = 224
    object tblAuxCidadeCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
  end
end
