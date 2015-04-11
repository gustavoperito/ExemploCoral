inherited FrmCadPercentual: TFrmCadPercentual
  Left = 251
  Top = 163
  Caption = 'CADASTRO DE PERCENTUAL'
  ClientHeight = 439
  ClientWidth = 1002
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 1002
    Caption = 'PERCENTUAL'
  end
  inherited PnlStatus: TPanel
    Top = 407
    Width = 1002
  end
  inherited PnlBotoes: TPanel
    Left = 877
    Height = 334
  end
  inherited PnlDados: TPanel
    Width = 877
    Height = 334
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 47
      Height = 17
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 152
      Top = 24
      Width = 66
      Height = 17
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdescr
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 88
      Width = 128
      Height = 17
      Caption = 'Valor do Percentual'
      FocusControl = DBEperc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdescr: TDBEdit
      Left = 152
      Top = 40
      Width = 416
      Height = 25
      DataField = 'DESCRICAO_PERC'
      DataSource = Percent
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEperc: TDBEdit
      Left = 32
      Top = 112
      Width = 372
      Height = 25
      DataField = 'VALOR_PERC'
      DataSource = Percent
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  inherited MedBusca: TMaskEdit
    Left = 28
    Top = 117
    Height = 25
    Font.Height = -15
    OnKeyPress = MedBuscaKeyPress
  end
  object SimpleDSPerc: TSimpleDataSet
    Aggregates = <>
    Connection = DM.conexao
    DataSet.CommandText = 
      'SELECT* FROM PERCENTUAL'#13#10'WHERE PERCENTUAL.IDPERCENTUAL = :PARIDP' +
      'ER'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'PARIDPER'
        ParamType = ptInput
        Value = 0
      end>
    Params = <>
    AfterPost = SimpleDSPercAfterPost
    AfterDelete = SimpleDSPercAfterDelete
    Left = 72
    Top = 16
    object SimpleDSPercIDPERCENTUAL: TIntegerField
      FieldName = 'IDPERCENTUAL'
      Required = True
    end
    object SimpleDSPercDESCRICAO_PERC: TStringField
      FieldName = 'DESCRICAO_PERC'
      Required = True
      Size = 30
    end
    object SimpleDSPercVALOR_PERC: TFMTBCDField
      FieldName = 'VALOR_PERC'
      Required = True
      Precision = 15
      Size = 2
    end
    object SimpleDSPercSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Percent: TDataSource
    DataSet = SimpleDSPerc
    Left = 128
    Top = 16
  end
end
