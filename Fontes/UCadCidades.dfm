inherited FrmCadCidades: TFrmCadCidades
  Left = 197
  Top = 108
  Caption = 'Cadastro de Cidades'
  ClientHeight = 356
  ClientWidth = 676
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 676
    Caption = 'CIDADES'
  end
  inherited PnlStatus: TPanel
    Top = 324
    Width = 676
  end
  inherited PnlBotoes: TPanel
    Left = 551
    Height = 235
  end
  inherited PnlDados: TPanel
    Width = 551
    Height = 235
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    object Label1: TLabel
      Left = 21
      Top = 11
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
    object Label3: TLabel
      Left = 21
      Top = 116
      Width = 17
      Height = 21
      Caption = 'UF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 21
      Top = 64
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
    object DBCUF: TDBComboBox
      Left = 21
      Top = 136
      Width = 145
      Height = 29
      DataField = 'UF_CID'
      DataSource = DsCidades
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ItemHeight = 21
      Items.Strings = (
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
      ParentFont = False
      TabOrder = 0
    end
    object DBEnome: TDBEdit
      Left = 21
      Top = 88
      Width = 516
      Height = 29
      DataField = 'NOME_CID'
      DataSource = DsCidades
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  inherited MedBusca: TMaskEdit
    Left = 20
    Top = 125
    Width = 93
    Height = 29
    Font.Name = 'Segoe UI Light'
    Font.Style = []
  end
  object DsCidades: TDataSource
    DataSet = CdsCidades
    Left = 152
    Top = 8
  end
  object SQLCidades: TSQLDataSet
    CommandText = 'select * from CIDADES'#13#10#13#10'WHERE CIDADES.IDCIDADE = :PARIDCIDADE '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PARIDCIDADE'
        ParamType = ptInput
      end>
    SQLConnection = DM.conexao
    Left = 56
    Top = 8
    object SQLCidadesIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Required = True
    end
    object SQLCidadesNOME_CID: TStringField
      FieldName = 'NOME_CID'
      Required = True
      Size = 30
    end
    object SQLCidadesUF_CID: TStringField
      FieldName = 'UF_CID'
      Required = True
      FixedChar = True
      Size = 2
    end
    object SQLCidadesSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Provider: TDataSetProvider
    DataSet = SQLCidades
    Left = 88
    Top = 8
  end
  object CdsCidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 120
    Top = 8
    object CdsCidadesIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Required = True
    end
    object CdsCidadesNOME_CID: TStringField
      FieldName = 'NOME_CID'
      Required = True
      Size = 30
    end
    object CdsCidadesUF_CID: TStringField
      FieldName = 'UF_CID'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CdsCidadesSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
