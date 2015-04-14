object frmListaObjeto: TfrmListaObjeto
  Left = 331
  Top = 219
  Width = 870
  Height = 500
  Caption = 'Lista Objeto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 73
    Align = alTop
    Caption = 'Listar'
    Color = 16711808
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -64
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 854
    Height = 388
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 8
      Top = 216
      Width = 841
      Height = 161
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object SQLLIST: TSQLDataSet
    DataSource = DSLIST
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.conexao
    Left = 8
    Top = 8
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLLIST
    Left = 40
    Top = 8
  end
  object CDSLIST: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 72
    Top = 8
  end
  object DSLIST: TDataSource
    DataSet = CDSLIST
    Left = 104
    Top = 8
  end
end
