inherited FrmCadEnderecos: TFrmCadEnderecos
  Left = 358
  Top = 153
  Caption = 'CADASTRO DE ENDERE'#199'OS'
  ClientHeight = 414
  ClientWidth = 722
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  object SpeedButton3: TSpeedButton [0]
    Left = 152
    Top = 136
    Width = 25
    Height = 25
    Caption = '...'
  end
  object SpeedButton4: TSpeedButton [1]
    Left = 184
    Top = 136
    Width = 25
    Height = 25
    Caption = '+'
  end
  inherited PnlTitulo: TPanel
    Width = 722
    Caption = 'ENDERE'#199'OS'
  end
  inherited PnlStatus: TPanel
    Top = 382
    Width = 722
  end
  inherited PnlBotoes: TPanel
    Left = 597
    Height = 293
  end
  inherited PnlDados: TPanel
    Width = 597
    Height = 293
    Font.Height = -13
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    object Label1: TLabel
      Left = 22
      Top = 8
      Width = 142
      Height = 21
      Caption = 'C'#243'digo do Endere'#231'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 22
      Top = 160
      Width = 125
      Height = 21
      Caption = 'Codigo da Cidade:'
      FocusControl = edtIDCidade
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 22
      Top = 208
      Width = 118
      Height = 21
      Caption = 'Codigo do Bairro:'
      FocusControl = edtIDBairro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 22
      Top = 110
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
    object Label5: TLabel
      Left = 22
      Top = 56
      Width = 27
      Height = 21
      Caption = 'CEP'
      FocusControl = DBEdit4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 147
      Top = 179
      Width = 25
      Height = 25
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 175
      Top = 179
      Width = 25
      Height = 25
      Caption = '+'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton5: TSpeedButton
      Left = 174
      Top = 227
      Width = 25
      Height = 25
      Caption = '+'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton5Click
    end
    object SpeedButton6: TSpeedButton
      Left = 146
      Top = 227
      Width = 25
      Height = 25
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 208
      Top = 160
      Width = 113
      Height = 21
      Caption = 'Nome da Cidade'
      FocusControl = DBEdit5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 209
      Top = 208
      Width = 110
      Height = 21
      Caption = 'Nome do Bairro:'
      FocusControl = DBEdit6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object edtIDCidade: TDBEdit
      Left = 22
      Top = 179
      Width = 123
      Height = 29
      DataField = 'IDCIDADE'
      DataSource = DsEnd
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtIDBairro: TDBEdit
      Left = 22
      Top = 227
      Width = 123
      Height = 29
      DataField = 'IDBAIRRO'
      DataSource = DsEnd
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 22
      Top = 129
      Width = 553
      Height = 29
      DataField = 'NOME_END'
      DataSource = DsEnd
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 22
      Top = 74
      Width = 555
      Height = 29
      DataField = 'CEP'
      DataSource = DsEnd
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 208
      Top = 179
      Width = 361
      Height = 29
      Color = clSilver
      DataField = 'NOME_CID'
      DataSource = DsEnd
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 208
      Top = 227
      Width = 361
      Height = 29
      Color = clSilver
      DataField = 'NOME_BAI'
      DataSource = DsEnd
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  inherited MedBusca: TMaskEdit
    Left = 22
    Top = 118
    Width = 155
    Height = 29
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    OnKeyPress = MedBuscaKeyPress
  end
  object SqlEnd: TSQLDataSet
    CommandText = 
      'select '#13#10'ENDERECOS.*,  '#13#10'CIDADES.IDCIDADE,'#13#10'CIDADES.NOME_CID,  '#13 +
      #10'BAIRROS.IDBAIRRO, '#13#10'BAIRROS.NOME_BAI'#13#10#13#10'from ENDERECOS'#13#10#13#10'LEFT ' +
      'OUTER JOIN CIDADES ON (ENDERECOS.IDCIDADE = CIDADES.IDCIDADE)'#13#10'L' +
      'EFT OUTER JOIN BAIRROS ON (ENDERECOS.IDBAIRRO = BAIRROS.IDBAIRRO' +
      ')'#13#10#13#10'WHERE ENDERECOS.IDENDERECO = :PARIDENDERECO '
    DataSource = DsEnd
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PARIDENDERECO'
        ParamType = ptInput
        Value = '0'
      end>
    SQLConnection = DM.conexao
    Left = 56
    Top = 8
    object SqlEndIDENDERECO: TIntegerField
      FieldName = 'IDENDERECO'
      Required = True
    end
    object SqlEndIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Required = True
    end
    object SqlEndIDBAIRRO: TIntegerField
      FieldName = 'IDBAIRRO'
      Required = True
    end
    object SqlEndNOME_END: TStringField
      FieldName = 'NOME_END'
      Required = True
      Size = 50
    end
    object SqlEndCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object SqlEndSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SqlEndNOME_CID: TStringField
      FieldName = 'NOME_CID'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 30
    end
    object SqlEndNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  object Provider: TDataSetProvider
    DataSet = SqlEnd
    Left = 96
    Top = 8
  end
  object DsEnd: TDataSource
    DataSet = CdsEnd
    Left = 176
    Top = 8
  end
  object CdsEnd: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Provider'
    Left = 136
    Top = 8
    object CdsEndIDENDERECO: TIntegerField
      FieldName = 'IDENDERECO'
      Required = True
    end
    object CdsEndIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Required = True
      OnValidate = CdsEndIDCIDADEValidate
    end
    object CdsEndIDBAIRRO: TIntegerField
      FieldName = 'IDBAIRRO'
      Required = True
      OnValidate = CdsEndIDBAIRROValidate
    end
    object CdsEndNOME_END: TStringField
      FieldName = 'NOME_END'
      Required = True
      Size = 50
    end
    object CdsEndCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object CdsEndSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CdsEndNOME_CID: TStringField
      FieldName = 'NOME_CID'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 30
    end
    object CdsEndNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 30
    end
  end
end
