inherited FrmCadFornecedores: TFrmCadFornecedores
  Left = 216
  Top = 119
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 597
  ClientWidth = 1029
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 1029
    Height = 81
    Caption = 'FORNECEDORES'
  end
  inherited PnlStatus: TPanel
    Top = 565
    Width = 1029
    inherited StbStatus: TStatusBar
      Width = 1032
    end
  end
  inherited PnlBotoes: TPanel
    Left = 904
    Top = 100
    Height = 465
  end
  inherited PnlDados: TPanel
    Top = 100
    Width = 904
    Height = 465
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    object Label1: TLabel
      Left = 32
      Top = 10
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
    object Label2: TLabel
      Left = 32
      Top = 64
      Width = 98
      Height = 21
      Caption = 'Nome Fantasia'
      FocusControl = DBEfant
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 112
      Width = 83
      Height = 21
      Caption = 'Raz'#227'o Social'
      FocusControl = DBERazao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 512
      Top = 280
      Width = 73
      Height = 21
      Caption = 'Residencial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 720
      Top = 336
      Width = 46
      Height = 21
      Caption = 'Celular'
      FocusControl = DBEcel
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 32
      Top = 171
      Width = 97
      Height = 21
      Caption = 'Representante'
      FocusControl = DBErepres
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 512
      Top = 224
      Width = 33
      Height = 21
      Caption = 'CNPJ'
      FocusControl = DBEcnpj
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 32
      Top = 280
      Width = 35
      Height = 21
      Caption = 'Email'
      FocusControl = DBEmail
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 32
      Top = 336
      Width = 28
      Height = 21
      Caption = 'SITE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 488
      Top = 248
      Width = 4
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 32
      Top = 392
      Width = 86
      Height = 21
      Caption = 'Observa'#231#245'es'
      FocusControl = DBEobds
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 720
      Top = 224
      Width = 118
      Height = 21
      Caption = 'Inscri'#231#227'o Estadual'
      FocusControl = DBEinscEst
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 32
      Top = 224
      Width = 63
      Height = 21
      Caption = 'Endere'#231'o'
      FocusControl = DBEender
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 720
      Top = 280
      Width = 144
      Height = 21
      Caption = 'N'#250'mero do Endere'#231'o'
      FocusControl = DBENumend
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 512
      Top = 392
      Width = 96
      Height = 21
      Caption = 'Complemento'
      FocusControl = DBEcompl
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object DBEfant: TDBEdit
      Left = 32
      Top = 85
      Width = 681
      Height = 27
      DataField = 'NOME_FANTASIA_FORN'
      DataSource = DsFor
      TabOrder = 0
    end
    object DBERazao: TDBEdit
      Left = 32
      Top = 136
      Width = 681
      Height = 27
      DataField = 'RAZAO_SOCIAL_FORN'
      DataSource = DsFor
      TabOrder = 1
    end
    object DBEresidencial: TDBEdit
      Left = 512
      Top = 304
      Width = 201
      Height = 27
      DataField = 'FONE1_FORN'
      DataSource = DsFor
      TabOrder = 2
    end
    object DBEcel: TDBEdit
      Left = 720
      Top = 360
      Width = 161
      Height = 27
      DataField = 'FONE2_FORN'
      DataSource = DsFor
      TabOrder = 3
    end
    object DBErepres: TDBEdit
      Left = 32
      Top = 192
      Width = 849
      Height = 27
      DataField = 'CONTATO_FORN'
      DataSource = DsFor
      TabOrder = 4
    end
    object DBEcnpj: TDBEdit
      Left = 512
      Top = 248
      Width = 201
      Height = 27
      DataField = 'CNPJ_FORN'
      DataSource = DsFor
      TabOrder = 5
    end
    object DBEmail: TDBEdit
      Left = 32
      Top = 304
      Width = 473
      Height = 27
      DataField = 'EMAIL_FORN'
      DataSource = DsFor
      TabOrder = 6
    end
    object DBEobds: TDBEdit
      Left = 32
      Top = 416
      Width = 473
      Height = 27
      DataField = 'OBS_FORN'
      DataSource = DsFor
      TabOrder = 7
    end
    object DBEinscEst: TDBEdit
      Left = 720
      Top = 248
      Width = 161
      Height = 27
      DataField = 'INSCRICAO_EST_FORN'
      DataSource = DsFor
      TabOrder = 8
    end
    object DBEsite: TDBEdit
      Left = 32
      Top = 360
      Width = 681
      Height = 27
      DataField = 'SITE'
      DataSource = DsFor
      TabOrder = 9
    end
    object DBEender: TDBEdit
      Left = 32
      Top = 248
      Width = 473
      Height = 27
      DataField = 'IDENDERECO'
      DataSource = DsFor
      TabOrder = 10
    end
    object DBENumend: TDBEdit
      Left = 720
      Top = 304
      Width = 160
      Height = 27
      DataField = 'NUM_END_FORN'
      DataSource = DsFor
      TabOrder = 11
    end
    object DBEcompl: TDBEdit
      Left = 512
      Top = 416
      Width = 384
      Height = 27
      DataField = 'COMPLEMENTO_FORN'
      DataSource = DsFor
      TabOrder = 12
    end
    object dbFoto: TDBImage
      Left = 720
      Top = 8
      Width = 161
      Height = 177
      DataSource = DsFor
      TabOrder = 13
      OnDblClick = dbFotoDblClick
    end
  end
  inherited MedBusca: TMaskEdit
    Left = 31
    Font.Style = []
  end
  inherited Panel1: TPanel
    Top = 81
    Width = 1029
  end
  object SqlFor: TSQLDataSet
    CommandText = 
      'select '#13#10'FORNECEDORES.*,'#13#10'ENDERECOS.CEP '#13#10'from FORNECEDORES, END' +
      'ERECOS'#13#10#13#10#13#10'WHERE FORNECEDORES.IDFORNECEDOR = :PARIDFORNECEDOR'
    DataSource = DsFor
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARIDFORNECEDOR'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.conexao
    Left = 48
    Top = 8
    object SqlForIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Required = True
    end
    object SqlForIDENDERECO: TIntegerField
      FieldName = 'IDENDERECO'
    end
    object SqlForNOME_FANTASIA_FORN: TStringField
      FieldName = 'NOME_FANTASIA_FORN'
      Required = True
      Size = 100
    end
    object SqlForRAZAO_SOCIAL_FORN: TStringField
      FieldName = 'RAZAO_SOCIAL_FORN'
      Required = True
      Size = 100
    end
    object SqlForFONE1_FORN: TStringField
      FieldName = 'FONE1_FORN'
      Required = True
      FixedChar = True
      Size = 11
    end
    object SqlForFONE2_FORN: TStringField
      FieldName = 'FONE2_FORN'
      FixedChar = True
      Size = 11
    end
    object SqlForCONTATO_FORN: TStringField
      FieldName = 'CONTATO_FORN'
      Size = 100
    end
    object SqlForCNPJ_FORN: TFMTBCDField
      FieldName = 'CNPJ_FORN'
      Required = True
      Precision = 15
      Size = 0
    end
    object SqlForEMAIL_FORN: TStringField
      FieldName = 'EMAIL_FORN'
      Size = 100
    end
    object SqlForSITE: TStringField
      FieldName = 'SITE'
      Size = 100
    end
    object SqlForNUM_END_FORN: TStringField
      FieldName = 'NUM_END_FORN'
      Required = True
      FixedChar = True
      Size = 4
    end
    object SqlForCOMPLEMENTO_FORN: TStringField
      FieldName = 'COMPLEMENTO_FORN'
      Size = 150
    end
    object SqlForDATA_CAD_FORN: TDateField
      FieldName = 'DATA_CAD_FORN'
      Required = True
    end
    object SqlForOBS_FORN: TStringField
      FieldName = 'OBS_FORN'
      Size = 500
    end
    object SqlForINSCRICAO_EST_FORN: TStringField
      FieldName = 'INSCRICAO_EST_FORN'
      Required = True
      Size = 15
    end
    object SqlForSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SqlForCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
  end
  object Provider: TDataSetProvider
    DataSet = SqlFor
    Left = 80
    Top = 8
  end
  object CdsFor: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 112
    Top = 8
    object CdsForIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Required = True
    end
    object CdsForIDENDERECO: TIntegerField
      FieldName = 'IDENDERECO'
    end
    object CdsForNOME_FANTASIA_FORN: TStringField
      FieldName = 'NOME_FANTASIA_FORN'
      Required = True
      Size = 100
    end
    object CdsForRAZAO_SOCIAL_FORN: TStringField
      FieldName = 'RAZAO_SOCIAL_FORN'
      Required = True
      Size = 100
    end
    object CdsForFONE1_FORN: TStringField
      FieldName = 'FONE1_FORN'
      Required = True
      FixedChar = True
      Size = 11
    end
    object CdsForFONE2_FORN: TStringField
      FieldName = 'FONE2_FORN'
      FixedChar = True
      Size = 11
    end
    object CdsForCONTATO_FORN: TStringField
      FieldName = 'CONTATO_FORN'
      Size = 100
    end
    object CdsForCNPJ_FORN: TFMTBCDField
      FieldName = 'CNPJ_FORN'
      Required = True
      Precision = 15
      Size = 0
    end
    object CdsForEMAIL_FORN: TStringField
      FieldName = 'EMAIL_FORN'
      Size = 100
    end
    object CdsForSITE: TStringField
      FieldName = 'SITE'
      Size = 100
    end
    object CdsForNUM_END_FORN: TStringField
      FieldName = 'NUM_END_FORN'
      Required = True
      FixedChar = True
      Size = 4
    end
    object CdsForCOMPLEMENTO_FORN: TStringField
      FieldName = 'COMPLEMENTO_FORN'
      Size = 150
    end
    object CdsForDATA_CAD_FORN: TDateField
      FieldName = 'DATA_CAD_FORN'
      Required = True
    end
    object CdsForOBS_FORN: TStringField
      FieldName = 'OBS_FORN'
      Size = 500
    end
    object CdsForINSCRICAO_EST_FORN: TStringField
      FieldName = 'INSCRICAO_EST_FORN'
      Required = True
      Size = 15
    end
    object CdsForSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsForCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
  end
  object DsFor: TDataSource
    DataSet = CdsFor
    Left = 144
    Top = 8
  end
  object OpenImagem: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Left = 744
    Top = 144
  end
end