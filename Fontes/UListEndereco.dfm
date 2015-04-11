inherited FrmListaEndereco: TFrmListaEndereco
  Left = 335
  Top = 5
  Width = 790
  Height = 520
  Caption = 'Lista de CEPs'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 782
    Height = 89
    Caption = 'Listas de CEPs'
  end
  inherited Panel2: TPanel
    Top = 89
    Width = 782
    Height = 400
    object Label1: TLabel [0]
      Left = 552
      Top = 16
      Width = 91
      Height = 13
      Caption = 'Nome da pesquisa:'
    end
    object rbPesquisa: TRadioGroup [1]
      Left = 8
      Top = 8
      Width = 129
      Height = 105
      Caption = 'Pesquisar por:'
      ItemIndex = 0
      Items.Strings = (
        'CEP'
        'Nome da Cidade'
        'Nome do Bairro'
        'Nome do Endere'#231'o')
      TabOrder = 1
    end
    inherited DBGrid1: TDBGrid
      Top = 120
      Width = 761
      Height = 265
      DataSource = DSLIST
      Enabled = False
    end
    object estPesquisa: TEdit
      Left = 552
      Top = 32
      Width = 217
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 552
      Top = 64
      Width = 105
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 3
      OnClick = Button1Click
    end
    object rbOrdem: TRadioGroup
      Left = 144
      Top = 8
      Width = 129
      Height = 105
      Caption = 'Ordenar por:'
      ItemIndex = 0
      Items.Strings = (
        'CEP'
        'Nome da Cidade'
        'Nome d Bairro'
        'Nome do Endere'#231'o')
      TabOrder = 4
    end
  end
  inherited SQLLIST: TSQLDataSet
    CommandText = 
      'select CIDADES.NOME_CID, BAIRROS.NOME_BAI, ENDERECOS.CEP, ENDERE' +
      'COS.NOME_END '#13#10#13#10'from ENDERECOS, CIDADES, BAIRROS'#13#10#13#10'WHERE '#13#10'CID' +
      'ADES.IDCIDADE = ENDERECOS.IDCIDADE '#13#10'AND '#13#10'BAIRROS.IDBAIRRO = EN' +
      'DERECOS.IDBAIRRO '#13#10
    object SQLLISTCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object SQLLISTNOME_CID: TStringField
      FieldName = 'NOME_CID'
      Required = True
      Size = 30
    end
    object SQLLISTNOME_BAI: TStringField
      FieldName = 'NOME_BAI'
      Required = True
      Size = 30
    end
    object SQLLISTNOME_END: TStringField
      FieldName = 'NOME_END'
      Required = True
      Size = 50
    end
  end
  inherited CDSLIST: TClientDataSet
    Active = True
    object CDSLISTCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object CDSLISTNOME_CID: TStringField
      DisplayLabel = 'Nome da Cidade'
      FieldName = 'NOME_CID'
      Required = True
      Size = 30
    end
    object CDSLISTNOME_BAI: TStringField
      DisplayLabel = 'Nome do Bairro'
      FieldName = 'NOME_BAI'
      Required = True
      Size = 30
    end
    object CDSLISTNOME_END: TStringField
      DisplayLabel = 'Nome do Endere'#231'o'
      FieldName = 'NOME_END'
      Required = True
      Size = 50
    end
  end
end
