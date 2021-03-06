inherited F_CadMarcas: TF_CadMarcas
  Left = 472
  Top = 145
  Caption = 'CADASTRO DE MARCAS'
  ClientHeight = 351
  ClientWidth = 685
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 685
    Caption = 'MARCAS'
  end
  inherited PnlStatus: TPanel
    Top = 319
    Width = 685
  end
  inherited PnlBotoes: TPanel
    Left = 560
    Height = 230
  end
  inherited PnlDados: TPanel
    Width = 560
    Height = 230
    object Label1: TLabel
      Left = 16
      Top = 63
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
    object Label2: TLabel
      Left = 18
      Top = 8
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
    object DBEnome: TDBEdit
      Left = 16
      Top = 87
      Width = 521
      Height = 29
      DataField = 'NOME_MARCA'
      DataSource = DSMARCA
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
    Left = 16
    Top = 121
    Width = 57
    Height = 29
    Font.Name = 'Segoe UI Light'
    Font.Style = []
  end
  object SQLMARCA: TSQLDataSet
    CommandText = 'select *'#13#10'from MARCAS'#13#10#13#10'WHERE MARCAS.IDMARCA = :PARIDMARCA'
    DataSource = DSMARCA
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARIDMARCA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.conexao
    Left = 56
    Top = 8
    object SQLMARCAIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
      Required = True
    end
    object SQLMARCANOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Required = True
      Size = 30
    end
    object SQLMARCASTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLMARCA
    Left = 88
    Top = 8
  end
  object CDSMARCA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 120
    Top = 8
    object CDSMARCAIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
      Required = True
    end
    object CDSMARCANOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Required = True
      Size = 30
    end
    object CDSMARCASTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSMARCA: TDataSource
    DataSet = CDSMARCA
    Left = 152
    Top = 8
  end
end
