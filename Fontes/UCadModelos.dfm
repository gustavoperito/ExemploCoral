inherited FrmCadModelos: TFrmCadModelos
  Left = 271
  Top = 176
  Caption = 'CADASTRO DE MODELOS'
  ClientHeight = 418
  ClientWidth = 1001
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 1001
    Caption = 'MODELOS'
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
      Left = 120
      Top = 24
      Width = 103
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
    object Label3: TLabel
      Left = 32
      Top = 96
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
      Left = 112
      Top = 48
      Width = 89
      Height = 25
      DataField = 'IDMARCA'
      DataSource = modelos
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
      Top = 120
      Width = 705
      Height = 25
      DataField = 'DESCRICAO_MOD'
      DataSource = modelos
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
    Top = 122
    Width = 49
    Height = 25
    Font.Height = -15
    Font.Style = []
    OnKeyPress = MedBuscaKeyPress
  end
  object SimpleDSModelos: TSimpleDataSet
    Aggregates = <>
    Connection = DM.conexao
    DataSet.CommandText = 'SELECT* FROM MODELOS'#13#10'WHERE MODELOS.IDMODELO = :PARIDMODELO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'PARIDMODELO'
        ParamType = ptInput
        Value = 0
      end>
    Params = <>
    AfterPost = SimpleDSModelosAfterPost
    AfterDelete = SimpleDSModelosAfterDelete
    Left = 80
    Top = 8
    object SimpleDSModelosIDMODELO: TIntegerField
      FieldName = 'IDMODELO'
      Required = True
    end
    object SimpleDSModelosIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
    end
    object SimpleDSModelosDESCRICAO_MOD: TStringField
      FieldName = 'DESCRICAO_MOD'
      Required = True
      Size = 50
    end
    object SimpleDSModelosSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object modelos: TDataSource
    DataSet = SimpleDSModelos
    Left = 128
    Top = 8
  end
end
