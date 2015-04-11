inherited FrmCadItensVendas: TFrmCadItensVendas
  Left = 202
  Top = 104
  Caption = 'Itens de Vendas'
  ClientHeight = 621
  ClientWidth = 1022
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 1022
    Caption = 'ITENS DE VENDAS'
  end
  inherited PnlStatus: TPanel
    Top = 589
    Width = 1022
  end
  inherited PnlBotoes: TPanel
    Left = 897
    Height = 532
  end
  inherited PnlDados: TPanel
    Width = 897
    Height = 532
    object Label1: TLabel
      Left = 32
      Top = 43
      Width = 43
      Height = 16
      Caption = 'C'#211'DIGO '
    end
    object Label2: TLabel
      Left = 30
      Top = 80
      Width = 112
      Height = 16
      Caption = 'C'#211'DIGO DO PRODUTO'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 34
      Top = 115
      Width = 100
      Height = 16
      Caption = 'C'#211'DIGO DE VENDAS'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 32
      Top = 149
      Width = 90
      Height = 16
      Caption = 'VALOR UNIT'#193'RIO '
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 32
      Top = 189
      Width = 69
      Height = 18
      Caption = 'QUANTIDADE '
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 148
      Top = 76
      Width = 69
      Height = 22
      DataField = 'IDPRODUTO'
      DataSource = DM.DataSourceItensVendas
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 144
      Top = 112
      Width = 63
      Height = 22
      DataField = 'IDVENDAS'
      DataSource = DM.DataSourceItensVendas
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 129
      Top = 146
      Width = 96
      Height = 24
      DataField = 'VALUNITARIO_ITENVENDA'
      DataSource = DM.DataSourceItensVendas
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 107
      Top = 185
      Width = 118
      Height = 23
      DataField = 'QTDE_VENDA'
      DataSource = DM.DataSourceItensVendas
      TabOrder = 3
    end
    object DBGridItensVendas: TDBGrid
      Left = 16
      Top = 240
      Width = 457
      Height = 177
      DataSource = DM.DataSourceItensVendas
      TabOrder = 4
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Arial Narrow'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'IDITENSVENDAS'
          Title.Caption = 'C'#211'DIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDPRODUTO'
          Title.Caption = 'C'#211'DIGO DO PRODUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDVENDAS'
          Title.Caption = 'C'#211'DIGO DE VENDAS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALUNITARIO_ITENVENDA'
          Title.Caption = 'VALOR UNIT'#193'RIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE_VENDA'
          Title.Caption = 'QUANTIDADE'
          Visible = True
        end>
    end
  end
  inherited MedBusca: TMaskEdit
    Left = 77
    Top = 97
    Width = 62
    Height = 24
  end
end
