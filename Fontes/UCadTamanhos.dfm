inherited FrmCadTamanhos: TFrmCadTamanhos
  Left = 255
  Top = 180
  Caption = 'CADASTRO DE TAMANHOS'
  ClientHeight = 418
  ClientWidth = 1001
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 1001
    Caption = 'TAMANHOS'
  end
  inherited PnlStatus: TPanel
    Top = 386
    Width = 1001
  end
  inherited PnlBotoes: TPanel
    Left = 876
    Height = 313
  end
  inherited PnlDados: TPanel
    Width = 876
    Height = 313
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 42
      Height = 17
      Caption = 'C'#243'digo'
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
      Width = 60
      Height = 17
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdesc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object DBEdesc: TDBEdit
      Left = 112
      Top = 32
      Width = 150
      Height = 25
      DataField = 'DESCRICAO_TAM'
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
    Left = 30
    Top = 109
    Width = 54
    Height = 25
    Font.Height = -15
    Font.Style = []
    OnKeyPress = MedBuscaKeyPress
  end
  object SimpleDSTam: TSimpleDataSet
    Aggregates = <>
    Connection = DM.conexao
    DataSet.CommandText = 'SELECT* FROM TAMANHOS'#13#10'WHERE TAMANHOS.IDTAMANHO = :PARIDTAM'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'PARIDTAM'
        ParamType = ptInput
        Value = 0
      end>
    Params = <>
    AfterPost = SimpleDSTamAfterPost
    AfterDelete = SimpleDSTamAfterDelete
    Left = 128
    Top = 32
    object SimpleDSTamIDTAMANHO: TIntegerField
      FieldName = 'IDTAMANHO'
      Required = True
    end
    object SimpleDSTamDESCRICAO_TAM: TStringField
      FieldName = 'DESCRICAO_TAM'
      Required = True
      Size = 30
    end
    object SimpleDSTamSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    Left = 80
    Top = 40
  end
end
