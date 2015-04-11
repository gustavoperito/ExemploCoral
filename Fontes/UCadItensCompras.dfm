inherited FrmCadItensCompras: TFrmCadItensCompras
  Left = 217
  Top = 122
  Caption = 'CADASTRO DE ITENS DA COMPRA'
  ClientHeight = 357
  ClientWidth = 1026
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 1026
    Caption = 'ITENS COMPRAS'
  end
  inherited PnlStatus: TPanel
    Top = 325
    Width = 1026
    inherited StbStatus: TStatusBar
      Width = 1024
    end
  end
  inherited PnlBotoes: TPanel
    Left = 901
    Height = 217
  end
  inherited PnlDados: TPanel
    Width = 901
    Height = 217
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 84
      Height = 16
      Caption = 'IDITENSCOMPRA'
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 61
      Height = 16
      Caption = 'IDPRODUTO'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 160
      Top = 64
      Width = 54
      Height = 16
      Caption = 'IDCOMPRA'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 24
      Top = 112
      Width = 154
      Height = 16
      Caption = 'VALORUNITARIO_ITENS_COMP'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 24
      Top = 160
      Width = 103
      Height = 16
      Caption = 'QTDE__INTES_COMP'
      FocusControl = DBEdit5
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 80
      Width = 121
      Height = 24
      DataField = 'IDPRODUTO'
      DataSource = DSITEMCOMPRA
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 160
      Top = 80
      Width = 121
      Height = 24
      DataField = 'IDCOMPRA'
      DataSource = DSITEMCOMPRA
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 24
      Top = 128
      Width = 161
      Height = 24
      DataField = 'VALORUNITARIO_ITENS_COMP'
      DataSource = DSITEMCOMPRA
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 24
      Top = 176
      Width = 169
      Height = 24
      DataField = 'QTDE__INTES_COMP'
      DataSource = DSITEMCOMPRA
      TabOrder = 3
    end
  end
  inherited MedBusca: TMaskEdit
    Left = 25
    Top = 140
  end
  inherited Panel1: TPanel
    Width = 1026
  end
  object SQLITEMCOMPRA: TSQLDataSet
    CommandText = 
      'select * from ITENS_COMPRA'#13#10#13#10'WHERE IDITENSCOMPRA = :PARIDITEMCO' +
      'MPRA'
    DataSource = DSITEMCOMPRA
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARIDITEMCOMPRA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.conexao
    Left = 48
    Top = 8
    object SQLITEMCOMPRAIDITENSCOMPRA: TIntegerField
      FieldName = 'IDITENSCOMPRA'
      Required = True
    end
    object SQLITEMCOMPRAIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
    end
    object SQLITEMCOMPRAIDCOMPRA: TIntegerField
      FieldName = 'IDCOMPRA'
    end
    object SQLITEMCOMPRAVALORUNITARIO_ITENS_COMP: TFMTBCDField
      FieldName = 'VALORUNITARIO_ITENS_COMP'
      Required = True
      Precision = 15
      Size = 2
    end
    object SQLITEMCOMPRAQTDE__INTES_COMP: TIntegerField
      FieldName = 'QTDE__INTES_COMP'
      Required = True
    end
    object SQLITEMCOMPRASTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLITEMCOMPRA
    Left = 80
    Top = 8
  end
  object CDSITEMCOMPRA: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 112
    Top = 8
    object CDSITEMCOMPRAIDITENSCOMPRA: TIntegerField
      FieldName = 'IDITENSCOMPRA'
      Required = True
    end
    object CDSITEMCOMPRAIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
    end
    object CDSITEMCOMPRAIDCOMPRA: TIntegerField
      FieldName = 'IDCOMPRA'
    end
    object CDSITEMCOMPRAVALORUNITARIO_ITENS_COMP: TFMTBCDField
      FieldName = 'VALORUNITARIO_ITENS_COMP'
      Required = True
      Precision = 15
      Size = 2
    end
    object CDSITEMCOMPRAQTDE__INTES_COMP: TIntegerField
      FieldName = 'QTDE__INTES_COMP'
      Required = True
    end
    object CDSITEMCOMPRASTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSITEMCOMPRA: TDataSource
    DataSet = CDSITEMCOMPRA
    Left = 144
    Top = 8
  end
end
