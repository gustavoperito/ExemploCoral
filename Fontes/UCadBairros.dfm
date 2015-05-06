inherited F_CadBairros: TF_CadBairros
  Left = 506
  Top = 341
  Caption = 'CADASTRO DE BAIRROS'
  ClientHeight = 355
  ClientWidth = 719
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 719
    Caption = 'BAIRROS'
  end
  inherited PnlStatus: TPanel
    Top = 323
    Width = 719
    inherited StbStatus: TStatusBar
      Width = 992
    end
  end
  inherited PnlBotoes: TPanel
    Left = 594
    Height = 234
  end
  inherited PnlDados: TPanel
    Width = 594
    Height = 234
    object Label1: TLabel
      Left = 20
      Top = 24
      Width = 49
      Height = 21
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 80
      Width = 41
      Height = 21
      Caption = 'Nome'
      FocusControl = DBEnome
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object DBEnome: TDBEdit
      Left = 21
      Top = 100
      Width = 556
      Height = 29
      DataField = 'NOME_BAI'
      DataSource = DSBAI
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited MedBusca: TMaskEdit
    Left = 20
    Top = 141
    Width = 93
    Height = 29
    Font.Name = 'Segoe UI Light'
    Font.Style = []
  end
  object SQLBAI: TSQLDataSet
    CommandText = 'select * '#13#10'from BAIRROS'#13#10#13#10'where BAIRROS.IDBAIRRO = :PARIDBAIRRO'
    DataSource = DSBAI
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARIDBAIRRO'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.conexao
    Left = 48
    Top = 8
    object SQLBAIIDBAIRRO: TIntegerField
      FieldName = 'IDBAIRRO'
      Required = True
    end
    object SQLBAINOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      Required = True
      Size = 30
    end
    object SQLBAISTATTUS_SIS: TStringField
      FieldName = 'STATTUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLBAI
    Left = 80
    Top = 8
  end
  object CDSBAI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 112
    Top = 8
    object CDSBAIIDBAIRRO: TIntegerField
      FieldName = 'IDBAIRRO'
      Required = True
    end
    object CDSBAINOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      Required = True
      Size = 30
    end
    object CDSBAISTATTUS_SIS: TStringField
      FieldName = 'STATTUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSBAI: TDataSource
    DataSet = CDSBAI
    Left = 144
    Top = 8
  end
end
