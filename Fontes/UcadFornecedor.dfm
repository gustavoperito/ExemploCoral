inherited F_CadFornecedores: TF_CadFornecedores
  Left = 252
  Top = 141
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 524
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
    Top = 492
    Width = 1029
    inherited StbStatus: TStatusBar
      Width = 1032
    end
  end
  inherited PnlBotoes: TPanel
    Left = 904
    Top = 81
    Height = 411
    inherited BtnGravar: TBitBtn
      OnClick = BtnGravarClick
    end
  end
  inherited PnlDados: TPanel
    Top = 81
    Width = 904
    Height = 411
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    object Label1: TLabel
      Left = 35
      Top = 15
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
      Left = 136
      Top = 16
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
      Top = 64
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
    object Label5: TLabel
      Left = 720
      Top = 288
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
      Top = 123
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
      Left = 32
      Top = 232
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
      Left = 392
      Top = 232
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
      Top = 288
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
      Top = 200
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
      Top = 344
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
      Left = 224
      Top = 232
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
      Top = 176
      Width = 31
      Height = 21
      Caption = 'CEP:'
      FocusControl = DBEender
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 512
      Top = 344
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
    object Label16: TLabel
      Left = 752
      Top = 8
      Width = 34
      Height = 21
      Caption = 'Foto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 224
      Top = 176
      Width = 117
      Height = 21
      Caption = 'Nome da Cidade:'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 392
      Top = 176
      Width = 110
      Height = 21
      Caption = 'Nome do Bairro:'
      FocusControl = DBEdit2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 584
      Top = 176
      Width = 134
      Height = 21
      Caption = 'Nome do Endere'#231'o:'
      FocusControl = DBEdit3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object DBEfant: TDBEdit
      Left = 136
      Top = 37
      Width = 609
      Height = 27
      DataField = 'NOME_FANTASIA_FORN'
      DataSource = DsFor
      TabOrder = 0
    end
    object DBERazao: TDBEdit
      Left = 32
      Top = 88
      Width = 713
      Height = 27
      DataField = 'RAZAO_SOCIAL_FORN'
      DataSource = DsFor
      TabOrder = 1
    end
    object DBEcel: TDBEdit
      Left = 720
      Top = 312
      Width = 166
      Height = 27
      DataField = 'FONE2_FORN'
      DataSource = DsFor
      TabOrder = 2
    end
    object DBErepres: TDBEdit
      Left = 32
      Top = 144
      Width = 713
      Height = 27
      DataField = 'CONTATO_FORN'
      DataSource = DsFor
      TabOrder = 3
    end
    object DBEcnpj: TDBEdit
      Left = 32
      Top = 256
      Width = 185
      Height = 27
      DataField = 'CNPJ_FORN'
      DataSource = DsFor
      TabOrder = 4
    end
    object DBEmail: TDBEdit
      Left = 392
      Top = 256
      Width = 497
      Height = 27
      DataField = 'EMAIL_FORN'
      DataSource = DsFor
      TabOrder = 5
    end
    object DBEobds: TDBEdit
      Left = 32
      Top = 368
      Width = 473
      Height = 27
      DataField = 'OBS_FORN'
      DataSource = DsFor
      TabOrder = 6
    end
    object DBEinscEst: TDBEdit
      Left = 224
      Top = 256
      Width = 161
      Height = 27
      DataField = 'INSCRICAO_EST_FORN'
      DataSource = DsFor
      TabOrder = 7
    end
    object DBEsite: TDBEdit
      Left = 32
      Top = 312
      Width = 681
      Height = 27
      DataField = 'SITE'
      DataSource = DsFor
      TabOrder = 8
    end
    object DBEender: TDBEdit
      Left = 32
      Top = 200
      Width = 185
      Height = 29
      DataField = 'CEP'
      DataSource = DsFor
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 9
    end
    object DBEcompl: TDBEdit
      Left = 512
      Top = 368
      Width = 374
      Height = 27
      DataField = 'COMPLEMENTO_FORN'
      DataSource = DsFor
      TabOrder = 10
    end
    object dbFoto: TDBImage
      Left = 752
      Top = 32
      Width = 129
      Height = 137
      DataField = 'FOTO_FORN'
      DataSource = DsFor
      Stretch = True
      TabOrder = 11
      OnDblClick = dbFotoDblClick
    end
    object DBEdit1: TDBEdit
      Left = 224
      Top = 200
      Width = 161
      Height = 29
      Color = clSilver
      DataField = 'NOME_CID'
      DataSource = DsFor
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object DBEdit2: TDBEdit
      Left = 392
      Top = 200
      Width = 185
      Height = 29
      Color = clSilver
      DataField = 'NOME_BAI'
      DataSource = DsFor
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object DBEdit3: TDBEdit
      Left = 584
      Top = 200
      Width = 305
      Height = 29
      Color = clSilver
      DataField = 'NOME_END'
      DataSource = DsFor
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
  end
  inherited MedBusca: TMaskEdit
    Left = 34
    Top = 118
    Width = 95
    Font.Style = []
  end
  object SqlFor: TSQLDataSet
    CommandText = 
      'SELECT '#13#10'FORNECEDORES.*,'#13#10'ENDERECOS.CEP,'#13#10'CIDADES.NOME_CID,'#13#10'BAI' +
      'RROS.NOME_BAI,'#13#10'ENDERECOS.NOME_END'#13#10#13#10'FROM FORNECEDORES'#13#10#13#10'LEFT ' +
      'OUTER JOIN ENDERECOS ON (ENDERECOS.IDENDERECO = FORNECEDORES.IDE' +
      'NDERECO)'#13#10'LEFT OUTER JOIN CIDADES ON (CIDADES.IDCIDADE = ENDEREC' +
      'OS.IDCIDADE)'#13#10'LEFT OUTER JOIN BAIRROS ON (BAIRROS.IDBAIRRO = END' +
      'ERECOS.IDBAIRRO)'#13#10#13#10'WHERE FORNECEDORES.IDFORNECEDOR = :PARIDFORN' +
      'ECEDOR'
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
    object SqlForFOTO_FORN: TMemoField
      FieldName = 'FOTO_FORN'
      BlobType = ftMemo
      Size = 1
    end
    object SqlForNOME_CID: TStringField
      FieldName = 'NOME_CID'
      Required = True
      Size = 30
    end
    object SqlForNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      Required = True
      Size = 30
    end
    object SqlForNOME_END: TStringField
      FieldName = 'NOME_END'
      Required = True
      Size = 50
    end
  end
  object Provider: TDataSetProvider
    DataSet = SqlFor
    Left = 80
    Top = 8
  end
  object CdsFor: TClientDataSet
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
      ProviderFlags = []
      OnValidate = CdsForCEPValidate
      EditMask = '99\.999\-999;0;_'
      FixedChar = True
      Size = 8
    end
    object CdsForFOTO_FORN: TMemoField
      FieldName = 'FOTO_FORN'
      BlobType = ftMemo
      Size = 1
    end
    object CdsForNOME_CID: TStringField
      FieldName = 'NOME_CID'
      Required = True
      Size = 30
    end
    object CdsForNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      Required = True
      Size = 30
    end
    object CdsForNOME_END: TStringField
      FieldName = 'NOME_END'
      Required = True
      Size = 50
    end
  end
  object DsFor: TDataSource
    DataSet = CdsFor
    Left = 144
    Top = 8
  end
  object OpenImagem: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Left = 760
    Top = 176
  end
end
