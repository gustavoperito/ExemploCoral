inherited F_BusCli: TF_BusCli
  Left = 266
  Top = 152
  Width = 1046
  Height = 654
  Caption = 'F_BusCli'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlTitulo: TPanel
    Width = 1038
    Height = 105
    Caption = 'Busca de Clientes'
    Font.Name = 'Segoe UI Light'
    Font.Style = []
  end
  inherited StbStatus: TStatusBar
    Top = 583
    Width = 1038
  end
  inherited PnlDados: TPanel
    Top = 217
    Width = 1038
    Height = 366
    Enabled = True
    inherited DBGrid1: TDBGrid
      Width = 1026
      Height = 354
      DataSource = DSClientes
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ReadOnly = True
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'IDCLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Color = 16711808
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CLI'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Title.Color = 16711808
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 319
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SEXO_CLI'
          Title.Alignment = taCenter
          Title.Caption = 'Sexo'
          Title.Color = 16711808
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP'
          Title.Alignment = taCenter
          Title.Caption = 'Cep'
          Title.Color = 16711808
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CID'
          Title.Alignment = taCenter
          Title.Caption = 'Cidade'
          Title.Color = 16711808
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 144
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF_CLI'
          Title.Alignment = taCenter
          Title.Caption = 'Cpf'
          Title.Color = 16711808
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CELULAR_CLI'
          Title.Alignment = taCenter
          Title.Caption = 'Cel.'
          Title.Color = 16711808
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FONE_CLI'
          Title.Alignment = taCenter
          Title.Caption = 'Fone'
          Title.Color = 16711808
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS_SIS'
          Title.Alignment = taCenter
          Title.Caption = 'Status'
          Title.Color = 16711808
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  inherited PanFiltro: TPanel
    Top = 105
    Width = 1038
    Height = 112
    object Label1: TLabel [0]
      Left = 668
      Top = 82
      Width = 16
      Height = 13
      Caption = 'Cpf'
      Enabled = False
    end
    inherited RadioOrdem: TRadioGroup
      Left = 181
      Width = 239
      Height = 95
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Cidade + Nome')
    end
    inherited RadioStatus: TRadioGroup
      Left = 422
      Height = 95
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Ativos'
        'Cancelados'
        'Todos')
    end
    inherited GroupBox1: TGroupBox
      Width = 171
      Height = 95
      object ChCodigo: TCheckBox
        Left = 8
        Top = 24
        Width = 97
        Height = 17
        Caption = 'C'#243'digo'
        TabOrder = 0
        OnClick = ChCodigoClick
      end
      object ChNome: TCheckBox
        Left = 8
        Top = 50
        Width = 97
        Height = 17
        Caption = 'Nome'
        TabOrder = 1
        OnClick = ChNomeClick
      end
      object ChCidade: TCheckBox
        Left = 86
        Top = 24
        Width = 82
        Height = 17
        Caption = 'Cidade'
        TabOrder = 2
        OnClick = ChCidadeClick
      end
      object ChCpf: TCheckBox
        Left = 86
        Top = 50
        Width = 82
        Height = 17
        Caption = 'Cpf'
        TabOrder = 3
        OnClick = ChCpfClick
      end
    end
    inherited BitBtn1: TBitBtn
      Left = 888
      Top = 10
      Width = 128
      Height = 44
      OnClick = BitBtn1Click
    end
    inherited BitBtn2: TBitBtn
      Left = 888
      Top = 56
      Width = 128
      Height = 44
    end
    object codini: TLabeledEdit
      Left = 686
      Top = 10
      Width = 73
      Height = 21
      BiDiMode = bdLeftToRight
      CharCase = ecUpperCase
      Color = clGray
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'C'#243'd. Inicial'
      EditLabel.ParentBiDiMode = False
      Enabled = False
      LabelPosition = lpLeft
      ParentBiDiMode = False
      TabOrder = 5
    end
    object codfim: TLabeledEdit
      Left = 813
      Top = 10
      Width = 73
      Height = 21
      BiDiMode = bdLeftToRight
      CharCase = ecUpperCase
      Color = clGray
      EditLabel.Width = 47
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'C'#243'd. Final'
      EditLabel.ParentBiDiMode = False
      Enabled = False
      LabelPosition = lpLeft
      ParentBiDiMode = False
      TabOrder = 6
    end
    object NOMECLI: TLabeledEdit
      Left = 686
      Top = 32
      Width = 199
      Height = 21
      BiDiMode = bdLeftToRight
      CharCase = ecUpperCase
      Color = clGray
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Nome'
      EditLabel.ParentBiDiMode = False
      Enabled = False
      LabelPosition = lpLeft
      ParentBiDiMode = False
      TabOrder = 7
    end
    object NOMECID: TLabeledEdit
      Left = 686
      Top = 54
      Width = 199
      Height = 21
      BiDiMode = bdLeftToRight
      CharCase = ecUpperCase
      Color = clGray
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Cidade'
      EditLabel.ParentBiDiMode = False
      Enabled = False
      LabelPosition = lpLeft
      ParentBiDiMode = False
      TabOrder = 8
    end
    object CPFCLI: TMaskEdit
      Left = 687
      Top = 77
      Width = 196
      Height = 21
      CharCase = ecUpperCase
      Color = clGray
      Enabled = False
      EditMask = '999\.999\.999\-99;0;_'
      MaxLength = 14
      TabOrder = 9
    end
  end
  object SqlCli: TSQLDataSet
    CommandText = 
      'SELECT '#13#10#13#10'CLIENTES.*,'#13#10'ENDERECOS.NOME_END,'#13#10'ENDERECOS.CEP,'#13#10'END' +
      'ERECOS.STATUS_SIS AS STATUSEND,'#13#10'BAIRROS.NOME_BAI,'#13#10'CIDADES.NOME' +
      '_CID'#13#10#13#10'FROM CLIENTES'#13#10#13#10'LEFT OUTER JOIN ENDERECOS ON (ENDERECOS' +
      '.IDENDERECO = CLIENTES.IDENDERECO)'#13#10'LEFT OUTER JOIN CIDADES ON (' +
      'CIDADES.IDCIDADE = ENDERECOS.IDCIDADE)'#13#10'LEFT OUTER JOIN BAIRROS ' +
      'ON (BAIRROS.IDBAIRRO = ENDERECOS.IDBAIRRO)'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.conexao
    Left = 384
    Top = 488
    object SqlCliIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object SqlCliIDENDERECO: TIntegerField
      FieldName = 'IDENDERECO'
    end
    object SqlCliNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Required = True
      Size = 75
    end
    object SqlCliCPF_CLI: TStringField
      FieldName = 'CPF_CLI'
      EditMask = '999\.999\.999\-99;0;_'
      FixedChar = True
      Size = 11
    end
    object SqlCliRG_CLI: TStringField
      FieldName = 'RG_CLI'
      FixedChar = True
      Size = 15
    end
    object SqlCliESTADO_CIVIL_CLI: TStringField
      FieldName = 'ESTADO_CIVIL_CLI'
      Size = 10
    end
    object SqlCliDATA_NASC_CLI: TDateField
      FieldName = 'DATA_NASC_CLI'
      Required = True
      EditMask = '99\/99\/9999;1:_'
    end
    object SqlCliDATA_CAD_CLI: TDateField
      FieldName = 'DATA_CAD_CLI'
      Required = True
      EditMask = '99\/99\/9999;1:_'
    end
    object SqlCliEMAIL_CLI: TStringField
      FieldName = 'EMAIL_CLI'
      Size = 100
    end
    object SqlCliSEXO_CLI: TStringField
      FieldName = 'SEXO_CLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SqlCliCELULAR_CLI: TStringField
      FieldName = 'CELULAR_CLI'
      EditMask = '\(99\)99999\-9999;0;_'
      FixedChar = True
      Size = 11
    end
    object SqlCliFONE_CLI: TStringField
      FieldName = 'FONE_CLI'
      EditMask = '\(99\)99999\-9999;0;_'
      FixedChar = True
      Size = 11
    end
    object SqlCliPROFISSAO_CLI: TStringField
      FieldName = 'PROFISSAO_CLI'
      Size = 30
    end
    object SqlCliNATURALIDADE_CLI: TStringField
      FieldName = 'NATURALIDADE_CLI'
    end
    object SqlCliNUM_END_CLI: TStringField
      FieldName = 'NUM_END_CLI'
      FixedChar = True
      Size = 4
    end
    object SqlCliCOMPLEMENTO_CLI: TStringField
      FieldName = 'COMPLEMENTO_CLI'
      FixedChar = True
      Size = 300
    end
    object SqlCliMAE_CLI: TStringField
      FieldName = 'MAE_CLI'
      Size = 75
    end
    object SqlCliSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SqlCliNOME_END: TStringField
      FieldName = 'NOME_END'
      ProviderFlags = []
      Size = 50
    end
    object SqlCliCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      EditMask = '99\.999\-999;0;_'
      FixedChar = True
      Size = 8
    end
    object SqlCliSTATUSEND: TStringField
      FieldName = 'STATUSEND'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object SqlCliNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      ProviderFlags = []
      Size = 30
    end
    object SqlCliNOME_CID: TStringField
      FieldName = 'NOME_CID'
      ProviderFlags = []
      Size = 30
    end
  end
  object Provider: TDataSetProvider
    DataSet = SqlCli
    Left = 448
    Top = 488
  end
  object CdsCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 504
    Top = 488
    object CdsCliIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Required = True
    end
    object CdsCliIDENDERECO: TIntegerField
      FieldName = 'IDENDERECO'
    end
    object CdsCliNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Required = True
      Size = 75
    end
    object CdsCliCPF_CLI: TStringField
      FieldName = 'CPF_CLI'
      EditMask = '999\.999\.999\-99;0;_'
      FixedChar = True
      Size = 11
    end
    object CdsCliRG_CLI: TStringField
      FieldName = 'RG_CLI'
      FixedChar = True
      Size = 15
    end
    object CdsCliESTADO_CIVIL_CLI: TStringField
      FieldName = 'ESTADO_CIVIL_CLI'
      Size = 10
    end
    object CdsCliDATA_NASC_CLI: TDateField
      FieldName = 'DATA_NASC_CLI'
      Required = True
      EditMask = '99\/99\/9999;1:_'
    end
    object CdsCliDATA_CAD_CLI: TDateField
      FieldName = 'DATA_CAD_CLI'
      Required = True
      EditMask = '99\/99\/9999;1:_'
    end
    object CdsCliEMAIL_CLI: TStringField
      FieldName = 'EMAIL_CLI'
      Size = 100
    end
    object CdsCliSEXO_CLI: TStringField
      FieldName = 'SEXO_CLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsCliCELULAR_CLI: TStringField
      FieldName = 'CELULAR_CLI'
      EditMask = '\(99\)99999\-9999;0;_'
      FixedChar = True
      Size = 11
    end
    object CdsCliFONE_CLI: TStringField
      FieldName = 'FONE_CLI'
      EditMask = '\(99\)99999\-9999;0;_'
      FixedChar = True
      Size = 11
    end
    object CdsCliPROFISSAO_CLI: TStringField
      FieldName = 'PROFISSAO_CLI'
      Size = 30
    end
    object CdsCliNATURALIDADE_CLI: TStringField
      FieldName = 'NATURALIDADE_CLI'
    end
    object CdsCliNUM_END_CLI: TStringField
      FieldName = 'NUM_END_CLI'
      FixedChar = True
      Size = 4
    end
    object CdsCliCOMPLEMENTO_CLI: TStringField
      FieldName = 'COMPLEMENTO_CLI'
      FixedChar = True
      Size = 300
    end
    object CdsCliMAE_CLI: TStringField
      FieldName = 'MAE_CLI'
      Size = 75
    end
    object CdsCliSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsCliNOME_END: TStringField
      FieldName = 'NOME_END'
      ProviderFlags = []
      Size = 50
    end
    object CdsCliCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      EditMask = '99\.999\-999;0;_'
      FixedChar = True
      Size = 8
    end
    object CdsCliSTATUSEND: TStringField
      FieldName = 'STATUSEND'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CdsCliNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      ProviderFlags = []
      Size = 30
    end
    object CdsCliNOME_CID: TStringField
      FieldName = 'NOME_CID'
      ProviderFlags = []
      Size = 30
    end
  end
  object DSClientes: TDataSource
    DataSet = CdsCli
    Left = 560
    Top = 488
  end
end
