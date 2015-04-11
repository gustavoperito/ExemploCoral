inherited FrmCadLogradouro: TFrmCadLogradouro
  Left = 268
  Top = 199
  Caption = 'Cadastro de Logradouro'
  ClientHeight = 441
  ClientWidth = 1068
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 1068
    Caption = 'LOGRADOURO'
  end
  inherited PnlStatus: TPanel
    Top = 409
    Width = 1068
  end
  inherited PnlBotoes: TPanel
    Left = 943
    Height = 336
  end
  inherited PnlDados: TPanel
    Width = 943
    Height = 336
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 58
      Height = 17
      Caption = 'C'#211'DIGO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 112
      Top = 16
      Width = 36
      Height = 17
      Caption = 'Nome'
      FocusControl = DBEnome
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object DBEnome: TDBEdit
      Left = 112
      Top = 40
      Width = 700
      Height = 25
      DataField = 'NOME_LOG'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited MedBusca: TMaskEdit
    Top = 108
    Width = 51
    Height = 25
    EditMask = '999999;0; '
    Font.Height = -15
    Font.Style = []
    MaxLength = 6
    OnKeyPress = MedBuscaKeyPress
  end
  object dslogradouro: TDataSource
    Left = 88
    Top = 8
  end
  object SimplesDSLog: TSimpleDataSet
    Aggregates = <>
    Connection = DM.conexao
    DataSet.CommandText = 
      'SELECT * FROM TIPO_LOGRADOURO'#13#10'WHERE TIPO_LOGRADOURO.IDLOG = :PA' +
      'RTIPLOG'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'PARTIPLOG'
        ParamType = ptInput
        Value = 0
      end>
    Params = <>
    Left = 48
    Top = 8
    object SimplesDSLogIDLOG: TIntegerField
      FieldName = 'IDLOG'
      Required = True
    end
    object SimplesDSLogNOME_LOG: TStringField
      FieldName = 'NOME_LOG'
      Required = True
      Size = 30
    end
    object SimplesDSLogSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = SimplesDSLog
    Left = 528
    Top = 224
  end
end
