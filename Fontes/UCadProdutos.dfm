inherited FrmCadProdutos: TFrmCadProdutos
  Left = 455
  Top = 47
  Caption = 'CADASTRO DE PRODUTOS'
  ClientHeight = 598
  ClientWidth = 790
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 790
    Caption = 'PRODUTOS'
  end
  inherited PnlStatus: TPanel
    Top = 566
    Width = 790
  end
  inherited PnlBotoes: TPanel
    Left = 665
    Height = 493
  end
  inherited PnlDados: TPanel
    Width = 665
    Height = 493
    object Label1: TLabel
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
    object Label2: TLabel
      Left = 120
      Top = 24
      Width = 126
      Height = 17
      Caption = 'C'#243'digo do Percentual'
      FocusControl = DBEpec
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 288
      Top = 24
      Width = 117
      Height = 17
      Caption = 'C'#243'digo do Tamanho'
      FocusControl = DBEtam
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 456
      Top = 24
      Width = 107
      Height = 17
      Caption = 'C'#243'digo do Modelo'
      FocusControl = DBEmodelo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 32
      Top = 88
      Width = 60
      Height = 17
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdescri
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 32
      Top = 136
      Width = 140
      Height = 17
      Caption = 'Quantidade em Estoque'
      FocusControl = DBEquantesto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 216
      Top = 136
      Width = 115
      Height = 17
      Caption = 'Quantidade Min'#237'ma'
      FocusControl = DBEquantmin
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 376
      Top = 136
      Width = 119
      Height = 17
      Caption = 'Quantidade M'#225'xima'
      FocusControl = DBEquantmax
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 32
      Top = 192
      Width = 100
      Height = 17
      Caption = 'Valor de Compra'
      FocusControl = DBEvalco
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 160
      Top = 192
      Width = 90
      Height = 17
      Caption = 'Valor de Venda'
      FocusControl = DBEvalve
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object DBEpec: TDBEdit
      Left = 120
      Top = 40
      Width = 102
      Height = 25
      DataField = 'IDPERCENTUAL'
      DataSource = Prod
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEtam: TDBEdit
      Left = 288
      Top = 40
      Width = 113
      Height = 25
      DataField = 'IDTAMANHO'
      DataSource = Prod
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEmodelo: TDBEdit
      Left = 456
      Top = 40
      Width = 153
      Height = 25
      DataField = 'IDMODELO'
      DataSource = Prod
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdescri: TDBEdit
      Left = 32
      Top = 104
      Width = 497
      Height = 25
      DataField = 'DESCRICAO_PROD'
      DataSource = Prod
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEquantesto: TDBEdit
      Left = 32
      Top = 152
      Width = 80
      Height = 25
      DataField = 'QTDE_PROD'
      DataSource = Prod
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEquantmin: TDBEdit
      Left = 216
      Top = 152
      Width = 89
      Height = 25
      DataField = 'QTDE_MIN_PROD'
      DataSource = Prod
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEquantmax: TDBEdit
      Left = 376
      Top = 152
      Width = 80
      Height = 25
      DataField = 'QTDE_MAX_PROD'
      DataSource = Prod
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEvalco: TDBEdit
      Left = 32
      Top = 208
      Width = 80
      Height = 25
      DataField = 'VALOR_COMP_PROD'
      DataSource = Prod
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEvalve: TDBEdit
      Left = 160
      Top = 208
      Width = 80
      Height = 25
      DataField = 'VALOR_VEND_PROD'
      DataSource = Prod
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  inherited MedBusca: TMaskEdit
    Left = 28
    Top = 116
    Width = 70
    Height = 25
    Font.Height = -15
    Font.Style = []
    OnKeyPress = MedBuscaKeyPress
  end
  object SimpleDSProd: TSimpleDataSet
    Aggregates = <>
    Connection = DM.conexao
    DataSet.CommandText = 'SELECT* FROM PRODUTOS '#13#10'WHERE PRODUTOS.IDPRODUTO = :PARIDPROD'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'PARIDPROD'
        ParamType = ptInput
        Value = 0
      end>
    Params = <>
    Left = 80
    Top = 16
    object SimpleDSProdIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Required = True
    end
    object SimpleDSProdIDPERCENTUAL: TIntegerField
      FieldName = 'IDPERCENTUAL'
    end
    object SimpleDSProdIDTAMANHO: TIntegerField
      FieldName = 'IDTAMANHO'
    end
    object SimpleDSProdIDMODELO: TIntegerField
      FieldName = 'IDMODELO'
    end
    object SimpleDSProdDESCRICAO_PROD: TStringField
      FieldName = 'DESCRICAO_PROD'
      Required = True
      Size = 100
    end
    object SimpleDSProdQTDE_PROD: TIntegerField
      FieldName = 'QTDE_PROD'
      Required = True
    end
    object SimpleDSProdQTDE_MIN_PROD: TIntegerField
      FieldName = 'QTDE_MIN_PROD'
      Required = True
    end
    object SimpleDSProdQTDE_MAX_PROD: TIntegerField
      FieldName = 'QTDE_MAX_PROD'
      Required = True
    end
    object SimpleDSProdVALOR_COMP_PROD: TFMTBCDField
      FieldName = 'VALOR_COMP_PROD'
      Required = True
      Precision = 15
      Size = 2
    end
    object SimpleDSProdVALOR_VEND_PROD: TFMTBCDField
      FieldName = 'VALOR_VEND_PROD'
      Required = True
      Precision = 15
      Size = 2
    end
    object SimpleDSProdSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Prod: TDataSource
    DataSet = SimpleDSProd
    Left = 136
    Top = 8
  end
end
