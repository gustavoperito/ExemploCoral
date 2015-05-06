inherited F_BusCid: TF_BusCid
  Left = 354
  Top = 156
  Width = 697
  Height = 563
  Caption = 'Busca de Cidade'
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlTitulo: TPanel
    Width = 689
    Caption = 'Busca de Cidade'
    Font.Name = 'Segoe UI Light'
    Font.Style = []
  end
  inherited StbStatus: TStatusBar
    Top = 492
    Width = 689
  end
  inherited PnlDados: TPanel
    Top = 209
    Width = 689
    Height = 283
    Enabled = True
    inherited DBGrid1: TDBGrid
      Width = 677
      Height = 271
      DataSource = DSCID
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ReadOnly = True
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'IDCIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Color = 16711808
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -12
          Title.Font.Name = 'Arial Narrow'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CID'
          Title.Alignment = taCenter
          Title.Caption = 'Nome da CIdade'
          Title.Color = 16711808
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -12
          Title.Font.Name = 'Arial Narrow'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF_CID'
          Title.Alignment = taCenter
          Title.Caption = 'UF'
          Title.Color = 16711808
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -12
          Title.Font.Name = 'Arial Narrow'
          Title.Font.Style = [fsBold]
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
          Title.Font.Name = 'Arial Narrow'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  inherited PanFiltro: TPanel
    Width = 689
    Height = 136
    object Label1: TLabel [0]
      Left = 360
      Top = 8
      Width = 41
      Height = 13
      Caption = 'ID Inicial'
    end
    object Label2: TLabel [1]
      Left = 456
      Top = 8
      Width = 36
      Height = 13
      Caption = 'ID Final'
    end
    object Label3: TLabel [2]
      Left = 360
      Top = 47
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object Label4: TLabel [3]
      Left = 360
      Top = 85
      Width = 14
      Height = 13
      Caption = 'UF'
    end
    inherited RadioOrdem: TRadioGroup
      Left = 124
      Width = 109
      Height = 117
      ItemIndex = 0
      Items.Strings = (
        'ID'
        'Nome'
        'UF')
    end
    inherited RadioStatus: TRadioGroup
      Left = 237
      Width = 116
      Height = 117
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Ativos'
        'Desativados')
    end
    inherited GroupBox1: TGroupBox
      Width = 113
      Height = 117
      object ChID: TCheckBox
        Left = 16
        Top = 32
        Width = 73
        Height = 17
        Caption = 'ID'
        TabOrder = 0
        OnClick = ChIDClick
      end
      object ChNome: TCheckBox
        Left = 16
        Top = 60
        Width = 73
        Height = 17
        Caption = 'Nome'
        TabOrder = 1
        OnClick = ChNomeClick
      end
      object ChUF: TCheckBox
        Left = 16
        Top = 88
        Width = 73
        Height = 17
        Caption = 'UF'
        TabOrder = 2
        OnClick = ChUFClick
      end
    end
    inherited BitBtn1: TBitBtn
      Left = 544
      Top = 48
      Height = 33
      OnClick = BitBtn1Click
    end
    inherited BitBtn2: TBitBtn
      Left = 544
      Top = 87
      Height = 30
    end
    object EdtIDIni: TEdit
      Left = 360
      Top = 24
      Width = 81
      Height = 21
      Color = clGray
      Enabled = False
      TabOrder = 5
    end
    object EdtIDFin: TEdit
      Left = 456
      Top = 24
      Width = 81
      Height = 21
      Color = clGray
      Enabled = False
      TabOrder = 6
    end
    object EdtNome: TEdit
      Left = 360
      Top = 60
      Width = 177
      Height = 21
      Color = clGray
      Enabled = False
      TabOrder = 7
    end
    object EdtUF: TEdit
      Left = 360
      Top = 99
      Width = 177
      Height = 21
      Color = clGray
      Enabled = False
      TabOrder = 8
    end
  end
  object PROVIDER: TDataSetProvider
    DataSet = SQLCID
    Left = 48
    Top = 8
  end
  object CDSCID: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PROVIDER'
    Left = 80
    Top = 8
    object CDSCIDIDCIDADE: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDCIDADE'
      Required = True
    end
    object CDSCIDNOME_CID: TStringField
      DisplayWidth = 82
      FieldName = 'NOME_CID'
      Required = True
      Size = 30
    end
    object CDSCIDUF_CID: TStringField
      DisplayWidth = 16
      FieldName = 'UF_CID'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSCIDSTATUS_SIS: TStringField
      DisplayWidth = 13
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSCID: TDataSource
    DataSet = CDSCID
    Left = 112
    Top = 8
  end
  object SQLCID: TSQLDataSet
    CommandText = 'select * from CIDADES'#13#10
    DataSource = DSCID
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.conexao
    Left = 16
    Top = 8
    object SQLCIDIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Required = True
    end
    object SQLCIDNOME_CID: TStringField
      FieldName = 'NOME_CID'
      Required = True
      Size = 30
    end
    object SQLCIDUF_CID: TStringField
      FieldName = 'UF_CID'
      Required = True
      FixedChar = True
      Size = 2
    end
    object SQLCIDSTATUS_SIS: TStringField
      FieldName = 'STATUS_SIS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
