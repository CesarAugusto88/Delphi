object frmCadCidades: TfrmCadCidades
  Left = 272
  Top = 144
  Width = 877
  Height = 546
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
    Left = 48
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
    Left = 64
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
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 32
    Width = 400
    Height = 41
    DataSource = DataModule1.dsSqlConCidade
    TabOrder = 0
    OnClick = DBNavigator1Click
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
    TabOrder = 1
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
    TabOrder = 2
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
  object DBGrid1: TDBGrid
    Left = 120
    Top = 304
    Width = 320
    Height = 120
    DataSource = DataModule1.dsSqlConCidade
    TabOrder = 3
    TitleFont.Charset = GREEK_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object IBTable1: TIBTable
    BufferChunks = 1000
    CachedUpdates = False
    Left = 528
    Top = 248
  end
end
