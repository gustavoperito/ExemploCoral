inherited FrmCadMarcas: TFrmCadMarcas
  Left = 247
  Top = 145
  Caption = 'CADASTRO DE MARCAS'
  ClientHeight = 422
  ClientWidth = 911
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 911
    Caption = 'MARCAS'
  end
  inherited PnlStatus: TPanel
    Top = 390
    Width = 911
  end
  inherited PnlBotoes: TPanel
    Left = 786
    Height = 317
  end
  inherited PnlDados: TPanel
    Width = 786
    Height = 317
    object Label1: TLabel
      Left = 16
      Top = 56
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
    object Label2: TLabel
      Left = 16
      Top = 8
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
    object DBEnome: TDBEdit
      Left = 16
      Top = 80
      Width = 700
      Height = 25
      DataField = 'NOME_MARCA'
      DataSource = marcas
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
    Left = 19
    Top = 100
    Width = 57
    Height = 23
    OnKeyPress = MedBuscaKeyPress
  end
  object SimpleDSMarcas: TSimpleDataSet
    Aggregates = <>
    Connection = DM.conexao
    DataSet.CommandText = 'SELECT* FROM MARCAS'#13#10'WHERE MARCAS.IDMARCA = :PARIDMARCA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'PARIDMARCA'
        ParamType = ptInput
        Value = 0
      end>
    Params = <>
    AfterPost = SimpleDSMarcasAfterPost
    AfterDelete = SimpleDSMarcasAfterDelete
    Left = 56
    Top = 24
    object SimpleDSMarcasIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
      Required = True
    end
    object SimpleDSMarcasNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Required = True
      Size = 30
    end
    object SimpleDSMarcasSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object marcas: TDataSource
    DataSet = SimpleDSMarcas
    Left = 104
    Top = 16
  end
end
