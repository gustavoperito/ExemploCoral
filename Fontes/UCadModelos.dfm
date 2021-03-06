inherited F_CadModelos: TF_CadModelos
  Left = 292
  Top = 247
  Caption = 'CADASTRO DE MODELOS'
  ClientHeight = 418
  ClientWidth = 816
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 816
    Caption = 'MODELOS'
  end
  inherited PnlStatus: TPanel
    Top = 386
    Width = 816
  end
  inherited PnlBotoes: TPanel
    Left = 691
    Height = 297
    inherited BtnGravar: TBitBtn
      OnClick = BtnGravarClick
    end
  end
  inherited PnlDados: TPanel
    Width = 691
    Height = 297
    object Label1: TLabel
      Left = 32
      Top = 72
      Width = 102
      Height = 17
      Caption = 'C'#243'digo da Marca'
      FocusControl = DBEcodmarca
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 24
      Width = 41
      Height = 17
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 128
      Width = 60
      Height = 17
      Caption = 'Descri'#231#227'o'
      FocusControl = DBdescrimod
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object DBEcodmarca: TDBEdit
      Left = 32
      Top = 96
      Width = 89
      Height = 25
      DataField = 'IDMARCA'
      DataSource = DSMODELO
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBdescrimod: TDBEdit
      Left = 32
      Top = 144
      Width = 641
      Height = 25
      DataField = 'DESCRICAO_MOD'
      DataSource = DSMODELO
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  inherited MedBusca: TMaskEdit
    Left = 32
    Top = 130
    Width = 49
    Height = 25
    Font.Height = -15
    Font.Style = []
  end
  object SQLMODELO: TSQLDataSet
    CommandText = 'select *'#13#10'from MODELOS'#13#10#13#10'WHERE IDMODELO = :PARIDMODELO'
    DataSource = DSMODELO
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARIDMODELO'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.conexao
    Left = 48
    Top = 8
    object SQLMODELOIDMODELO: TIntegerField
      FieldName = 'IDMODELO'
      Required = True
    end
    object SQLMODELOIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
    end
    object SQLMODELODESCRICAO_MOD: TStringField
      FieldName = 'DESCRICAO_MOD'
      Required = True
      Size = 50
    end
    object SQLMODELOSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLMODELO
    Left = 80
    Top = 8
  end
  object CDSMODELO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 112
    Top = 8
    object CDSMODELOIDMODELO: TIntegerField
      FieldName = 'IDMODELO'
      Required = True
    end
    object CDSMODELOIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
    end
    object CDSMODELODESCRICAO_MOD: TStringField
      FieldName = 'DESCRICAO_MOD'
      Required = True
      Size = 50
    end
    object CDSMODELOSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSMODELO: TDataSource
    DataSet = CDSMODELO
    Left = 144
    Top = 8
  end
end
