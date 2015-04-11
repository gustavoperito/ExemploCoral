inherited FrmCadVendas: TFrmCadVendas
  Left = 221
  Top = 115
  Caption = 'CADASTRO DE VENDAS'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Caption = 'VENDAS'
  end
  inherited PnlDados: TPanel
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 40
      Height = 16
      Caption = 'C'#211'DIGO'
    end
    object Label2: TLabel
      Left = 40
      Top = 64
      Width = 85
      Height = 16
      Caption = 'C'#211'DIGO CLIENTE'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 40
      Top = 104
      Width = 82
      Height = 16
      Caption = 'DATA DA VENDA'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 40
      Top = 144
      Width = 73
      Height = 16
      Caption = 'VALOR TOTAL'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 40
      Top = 176
      Width = 57
      Height = 16
      Caption = 'DESCONTO'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 136
      Top = 59
      Width = 41
      Height = 24
      DataField = 'IDCLIENTE'
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 131
      Top = 100
      Width = 126
      Height = 24
      DataField = 'DATAVENDA_VENDA'
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 128
      Top = 136
      Width = 105
      Height = 24
      DataField = 'VALORTOTAL_VENDA'
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 128
      Top = 168
      Width = 81
      Height = 24
      DataField = 'DESCONTO_VENDA'
      TabOrder = 3
    end
  end
  inherited MedBusca: TMaskEdit
    Left = 37
    Top = 141
    Width = 44
    Height = 24
  end
end
