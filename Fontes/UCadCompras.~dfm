inherited FrmCadCompras: TFrmCadCompras
  Left = 586
  Top = 79
  Caption = 'CADASTRO DE COMPRAS'
  ClientHeight = 363
  ClientWidth = 678
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 678
    Caption = 'COMPRAS'
  end
  inherited PnlStatus: TPanel
    Top = 331
    Width = 678
  end
  inherited PnlBotoes: TPanel
    Left = 553
    Height = 242
  end
  inherited PnlDados: TPanel
    Width = 553
    Height = 242
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 65
      Height = 17
      Caption = 'IDCOMPRA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 95
      Height = 17
      Caption = 'IDFORNECEDOR'
      FocusControl = DBEdit2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 112
      Width = 113
      Height = 17
      Caption = 'NUM_NOTA_COMP'
      FocusControl = DBEdit3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 232
      Top = 112
      Width = 74
      Height = 17
      Caption = 'DATA_COMP'
      FocusControl = DBEdit4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 24
      Top = 168
      Width = 120
      Height = 17
      Caption = 'VALORTOTAL_COMP'
      FocusControl = DBEdit5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 232
      Top = 168
      Width = 110
      Height = 17
      Caption = 'DESCONTO_COMP'
      FocusControl = DBEdit6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 152
      Top = 64
      Width = 140
      Height = 17
      Caption = 'NOME_FANTASIA_FORN'
      FocusControl = DBEdit7
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 80
      Width = 121
      Height = 25
      DataField = 'IDFORNECEDOR'
      DataSource = DSCOMPRA
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 24
      Top = 128
      Width = 200
      Height = 25
      DataField = 'NUM_NOTA_COMP'
      DataSource = DSCOMPRA
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 232
      Top = 128
      Width = 177
      Height = 25
      DataField = 'DATA_COMP'
      DataSource = DSCOMPRA
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 24
      Top = 184
      Width = 200
      Height = 25
      DataField = 'VALORTOTAL_COMP'
      DataSource = DSCOMPRA
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 232
      Top = 184
      Width = 177
      Height = 25
      DataField = 'DESCONTO_COMP'
      DataSource = DSCOMPRA
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 152
      Top = 80
      Width = 393
      Height = 25
      Color = clSilver
      DataField = 'NOME_FANTASIA_FORN'
      DataSource = DSCOMPRA
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  inherited MedBusca: TMaskEdit
    Left = 23
    Top = 124
    Width = 122
  end
  object SQLCOMPRA: TSQLDataSet
    CommandText = 
      'select '#13#10'COMPRAS.*,'#13#10'FORNECEDORES.NOME_FANTASIA_FORN'#13#10' '#13#10'from CO' +
      'MPRAS,FORNECEDORES'#13#10#13#10'WHERE IDCOMPRA = :PARIDCOMPRA'
    DataSource = DSCOMPRA
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARIDCOMPRA'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.conexao
    Left = 48
    Top = 8
    object SQLCOMPRAIDCOMPRA: TIntegerField
      FieldName = 'IDCOMPRA'
      Required = True
    end
    object SQLCOMPRAIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
    end
    object SQLCOMPRANUM_NOTA_COMP: TStringField
      FieldName = 'NUM_NOTA_COMP'
      Required = True
      FixedChar = True
      Size = 15
    end
    object SQLCOMPRADATA_COMP: TDateField
      FieldName = 'DATA_COMP'
      Required = True
    end
    object SQLCOMPRAVALORTOTAL_COMP: TFMTBCDField
      FieldName = 'VALORTOTAL_COMP'
      Required = True
      Precision = 15
      Size = 2
    end
    object SQLCOMPRADESCONTO_COMP: TFMTBCDField
      FieldName = 'DESCONTO_COMP'
      Precision = 15
      Size = 2
    end
    object SQLCOMPRASTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SQLCOMPRANOME_FANTASIA_FORN: TStringField
      FieldName = 'NOME_FANTASIA_FORN'
      Required = True
      Size = 100
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLCOMPRA
    Left = 80
    Top = 8
  end
  object CDSCOMPRA: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 112
    Top = 8
    object CDSCOMPRAIDCOMPRA: TIntegerField
      FieldName = 'IDCOMPRA'
      Required = True
    end
    object CDSCOMPRAIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
    end
    object CDSCOMPRANUM_NOTA_COMP: TStringField
      FieldName = 'NUM_NOTA_COMP'
      Required = True
      FixedChar = True
      Size = 15
    end
    object CDSCOMPRADATA_COMP: TDateField
      FieldName = 'DATA_COMP'
      Required = True
    end
    object CDSCOMPRAVALORTOTAL_COMP: TFMTBCDField
      FieldName = 'VALORTOTAL_COMP'
      Required = True
      Precision = 15
      Size = 2
    end
    object CDSCOMPRADESCONTO_COMP: TFMTBCDField
      FieldName = 'DESCONTO_COMP'
      Precision = 15
      Size = 2
    end
    object CDSCOMPRASTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCOMPRANOME_FANTASIA_FORN: TStringField
      FieldName = 'NOME_FANTASIA_FORN'
      Required = True
      Size = 100
    end
  end
  object DSCOMPRA: TDataSource
    DataSet = CDSCOMPRA
    Left = 144
    Top = 8
  end
end
