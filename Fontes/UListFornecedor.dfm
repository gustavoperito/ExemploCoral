inherited frmListaFornecedor: TfrmListaFornecedor
  Left = 193
  Top = 173
  Width = 1110
  Height = 517
  Caption = 'Lista de Fornecedores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1094
    Caption = 'Lista de fornecedores'
  end
  inherited Panel2: TPanel
    Width = 1094
    Height = 405
    inherited DBGrid1: TDBGrid
      Top = 152
      Width = 1081
      Height = 241
      DataSource = DSLIST
    end
    object RadioGroup2: TRadioGroup
      Left = 184
      Top = 8
      Width = 185
      Height = 129
      Caption = 'Ordenar por:'
      TabOrder = 1
    end
    object RadioGroup3: TRadioGroup
      Left = 376
      Top = 8
      Width = 177
      Height = 129
      Caption = 'Status SIS:'
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 664
      Top = 16
      Width = 97
      Height = 21
      TabOrder = 3
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 768
      Top = 16
      Width = 97
      Height = 21
      TabOrder = 4
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 664
      Top = 40
      Width = 201
      Height = 21
      TabOrder = 5
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 664
      Top = 64
      Width = 201
      Height = 21
      TabOrder = 6
      Text = 'Edit4'
    end
    object Edit5: TEdit
      Left = 664
      Top = 88
      Width = 201
      Height = 21
      TabOrder = 7
      Text = 'Edit5'
    end
    object Edit6: TEdit
      Left = 664
      Top = 112
      Width = 201
      Height = 21
      TabOrder = 8
      Text = 'Edit6'
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 169
      Height = 129
      Caption = 'Pesquisar por:'
      TabOrder = 9
      object CheckBox1: TCheckBox
        Left = 8
        Top = 24
        Width = 97
        Height = 17
        Caption = 'ID'
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 8
        Top = 40
        Width = 97
        Height = 17
        Caption = 'Nome'
        TabOrder = 1
      end
      object CheckBox3: TCheckBox
        Left = 8
        Top = 56
        Width = 121
        Height = 17
        Caption = 'Data de Cadastro'
        TabOrder = 2
      end
    end
  end
  inherited SQLLIST: TSQLDataSet
    CommandText = 'select *'#13#10'from FORNECEDORES'
    object SQLLISTIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Required = True
    end
    object SQLLISTIDENDERECO: TIntegerField
      FieldName = 'IDENDERECO'
    end
    object SQLLISTNOME_FANTASIA_FORN: TStringField
      FieldName = 'NOME_FANTASIA_FORN'
      Required = True
      Size = 100
    end
    object SQLLISTRAZAO_SOCIAL_FORN: TStringField
      FieldName = 'RAZAO_SOCIAL_FORN'
      Required = True
      Size = 100
    end
    object SQLLISTFONE1_FORN: TStringField
      FieldName = 'FONE1_FORN'
      Required = True
      FixedChar = True
      Size = 11
    end
    object SQLLISTFONE2_FORN: TStringField
      FieldName = 'FONE2_FORN'
      FixedChar = True
      Size = 11
    end
    object SQLLISTCONTATO_FORN: TStringField
      FieldName = 'CONTATO_FORN'
      Size = 100
    end
    object SQLLISTCNPJ_FORN: TFMTBCDField
      FieldName = 'CNPJ_FORN'
      Required = True
      Precision = 15
      Size = 0
    end
    object SQLLISTEMAIL_FORN: TStringField
      FieldName = 'EMAIL_FORN'
      Size = 100
    end
    object SQLLISTSITE: TStringField
      FieldName = 'SITE'
      Size = 100
    end
    object SQLLISTNUM_END_FORN: TStringField
      FieldName = 'NUM_END_FORN'
      Required = True
      FixedChar = True
      Size = 4
    end
    object SQLLISTCOMPLEMENTO_FORN: TStringField
      FieldName = 'COMPLEMENTO_FORN'
      Size = 150
    end
    object SQLLISTDATA_CAD_FORN: TDateField
      FieldName = 'DATA_CAD_FORN'
      Required = True
    end
    object SQLLISTOBS_FORN: TStringField
      FieldName = 'OBS_FORN'
      Size = 500
    end
    object SQLLISTINSCRICAO_EST_FORN: TStringField
      FieldName = 'INSCRICAO_EST_FORN'
      Required = True
      Size = 15
    end
    object SQLLISTSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  inherited CDSLIST: TClientDataSet
    Active = True
    object CDSLISTIDFORNECEDOR: TIntegerField
      DisplayWidth = 9
      FieldName = 'IDFORNECEDOR'
      Required = True
    end
    object CDSLISTIDENDERECO: TIntegerField
      DisplayWidth = 9
      FieldName = 'IDENDERECO'
    end
    object CDSLISTNOME_FANTASIA_FORN: TStringField
      DisplayWidth = 45
      FieldName = 'NOME_FANTASIA_FORN'
      Required = True
      Size = 100
    end
    object CDSLISTRAZAO_SOCIAL_FORN: TStringField
      DisplayWidth = 63
      FieldName = 'RAZAO_SOCIAL_FORN'
      Required = True
      Size = 100
    end
    object CDSLISTFONE1_FORN: TStringField
      DisplayWidth = 14
      FieldName = 'FONE1_FORN'
      Required = True
      FixedChar = True
      Size = 11
    end
    object CDSLISTFONE2_FORN: TStringField
      DisplayWidth = 14
      FieldName = 'FONE2_FORN'
      FixedChar = True
      Size = 11
    end
    object CDSLISTCONTATO_FORN: TStringField
      DisplayWidth = 120
      FieldName = 'CONTATO_FORN'
      Size = 100
    end
    object CDSLISTCNPJ_FORN: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'CNPJ_FORN'
      Required = True
      Precision = 15
      Size = 0
    end
    object CDSLISTEMAIL_FORN: TStringField
      DisplayWidth = 120
      FieldName = 'EMAIL_FORN'
      Size = 100
    end
    object CDSLISTSITE: TStringField
      DisplayWidth = 120
      FieldName = 'SITE'
      Size = 100
    end
    object CDSLISTNUM_END_FORN: TStringField
      DisplayWidth = 18
      FieldName = 'NUM_END_FORN'
      Required = True
      FixedChar = True
      Size = 4
    end
    object CDSLISTCOMPLEMENTO_FORN: TStringField
      DisplayWidth = 180
      FieldName = 'COMPLEMENTO_FORN'
      Size = 150
    end
    object CDSLISTDATA_CAD_FORN: TDateField
      DisplayWidth = 19
      FieldName = 'DATA_CAD_FORN'
      Required = True
    end
    object CDSLISTOBS_FORN: TStringField
      DisplayWidth = 600
      FieldName = 'OBS_FORN'
      Size = 500
    end
    object CDSLISTINSCRICAO_EST_FORN: TStringField
      DisplayWidth = 24
      FieldName = 'INSCRICAO_EST_FORN'
      Required = True
      Size = 15
    end
    object CDSLISTSTATUS_SIS: TStringField
      DisplayWidth = 13
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
