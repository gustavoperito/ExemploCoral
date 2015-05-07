inherited F_BusBai: TF_BusBai
  Left = 286
  Top = 157
  Caption = 'Busca de Bairros'
  ClientHeight = 520
  ClientWidth = 862
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlTitulo: TPanel
    Width = 862
    Caption = 'Busca de Bairro'
  end
  inherited StbStatus: TStatusBar
    Top = 480
    Width = 862
  end
  inherited PnlDados: TPanel
    Top = 209
    Width = 862
    Height = 271
    inherited DBGrid1: TDBGrid
      Width = 850
      Height = 259
      DataSource = DSBAIRRO
    end
  end
  inherited PanFiltro: TPanel
    Width = 862
    Height = 128
    object Label1: TLabel [0]
      Left = 656
      Top = 8
      Width = 52
      Height = 13
      Caption = 'Cod. Inicial'
    end
    object Label2: TLabel [1]
      Left = 752
      Top = 8
      Width = 47
      Height = 13
      Caption = 'Cod. Final'
    end
    object Label3: TLabel [2]
      Left = 656
      Top = 48
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    inherited RadioOrdem: TRadioGroup
      Height = 117
      ItemIndex = 0
      Items.Strings = (
        'C'#243'digo'
        'Nome')
    end
    inherited RadioStatus: TRadioGroup
      Height = 117
      ItemIndex = 0
    end
    inherited GroupBox1: TGroupBox
      Height = 117
      object CheckBox1: TCheckBox
        Left = 16
        Top = 32
        Width = 97
        Height = 17
        Caption = 'C'#243'digo'
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 16
        Top = 80
        Width = 97
        Height = 17
        Caption = 'Nome'
        TabOrder = 1
      end
    end
    inherited BitBtn1: TBitBtn
      Left = 656
      Top = 89
      Width = 89
      Height = 28
    end
    inherited BitBtn2: TBitBtn
      Left = 752
      Top = 89
      Width = 97
      Height = 28
    end
    object Edit1: TEdit
      Left = 656
      Top = 24
      Width = 89
      Height = 21
      Color = clSilver
      Enabled = False
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 752
      Top = 24
      Width = 97
      Height = 21
      Color = clSilver
      Enabled = False
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 656
      Top = 64
      Width = 193
      Height = 21
      Color = clSilver
      Enabled = False
      TabOrder = 7
    end
  end
  object SQLBAIRRO: TSQLDataSet
    CommandText = 'select * '#13#10'from BAIRROS'
    DataSource = DSBAIRRO
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.conexao
    Left = 24
    Top = 16
    object SQLBAIRROIDBAIRRO: TIntegerField
      FieldName = 'IDBAIRRO'
      Required = True
    end
    object SQLBAIRRONOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      Required = True
      Size = 30
    end
    object SQLBAIRROSTATTUS_SIS: TStringField
      FieldName = 'STATTUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLBAIRRO
    Left = 96
    Top = 16
  end
  object CDSBAIRRO: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 168
    Top = 16
    object CDSBAIRROIDBAIRRO: TIntegerField
      DisplayWidth = 13
      FieldName = 'IDBAIRRO'
      Required = True
    end
    object CDSBAIRRONOME_BAI: TStringField
      DisplayWidth = 82
      FieldName = 'NOME_BAI'
      Required = True
      Size = 30
    end
    object CDSBAIRROSTATTUS_SIS: TStringField
      DisplayWidth = 14
      FieldName = 'STATTUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSBAIRRO: TDataSource
    DataSet = CDSBAIRRO
    Left = 240
    Top = 16
  end
end