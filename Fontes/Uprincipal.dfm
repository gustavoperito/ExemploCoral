object FrmPrincipal: TFrmPrincipal
  Left = 234
  Top = 102
  Width = 1035
  Height = 609
  Caption = 'Lojas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object shpTopo: TShape
    Left = 0
    Top = 0
    Width = 1019
    Height = 97
    Align = alTop
    OnMouseMove = Panel3MouseMove
  end
  object shpMenu: TShape
    Left = 0
    Top = 97
    Width = 1019
    Height = 40
    Align = alTop
    Brush.Color = clBlack
    OnMouseMove = Panel3MouseMove
  end
  object lblCliente: TLabel
    Left = 160
    Top = 104
    Width = 60
    Height = 21
    Caption = 'Cadastro'
    Color = 16711808
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnMouseEnter = lblClienteMouseEnter
    OnMouseLeave = lblClienteMouseLeave
  end
  object LblEndereco: TLabel
    Left = 302
    Top = 104
    Width = 29
    Height = 21
    Caption = 'Lista'
    Color = 16711808
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnMouseEnter = LblEnderecoMouseEnter
  end
  object lblTraco1: TLabel
    Left = 259
    Top = 104
    Width = 4
    Height = 21
    Caption = '|'
    Color = 16711808
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblTraco2: TLabel
    Left = 370
    Top = 104
    Width = 4
    Height = 21
    Caption = '|'
    Color = 16711808
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object shpEsquerda: TShape
    Left = 0
    Top = 137
    Width = 137
    Height = 433
    Align = alLeft
    Brush.Color = 15329769
    OnMouseMove = Panel3MouseMove
  end
  object shpDireita: TShape
    Left = 882
    Top = 137
    Width = 137
    Height = 433
    Align = alRight
    Brush.Color = 15329769
    OnMouseMove = Panel3MouseMove
  end
  object lblLogo: TLabel
    Left = 136
    Top = 32
    Width = 236
    Height = 47
    Caption = 'DuPr'#225' Langerie.'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = 16711808
    Font.Height = -35
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblConfig: TLabel
    Left = 406
    Top = 104
    Width = 96
    Height = 21
    Caption = 'Configura'#231#245'es'
    Color = 16711808
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblTraco3: TLabel
    Left = 530
    Top = 104
    Width = 4
    Height = 21
    Caption = '|'
    Color = 16711808
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object pnlCorpo: TPanel
    Left = 137
    Top = 137
    Width = 745
    Height = 433
    Align = alClient
    Color = clWhite
    TabOrder = 0
    OnMouseMove = Panel3MouseMove
    object MonthCalendar1: TMonthCalendar
      Left = 32
      Top = 16
      Width = 162
      Height = 154
      CalColors.BackColor = clWhite
      CalColors.TextColor = clBlack
      CalColors.TitleBackColor = 16711808
      CalColors.TrailingTextColor = clBlack
      Date = 42098.881449687500000000
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 32
      Top = 176
      Width = 161
      Height = 136
      Align = alCustom
      Enabled = False
      Lines.Strings = (
        'Lembretes do dia:')
      TabOrder = 1
    end
  end
  object pnlCliente: TPanel
    Left = 136
    Top = 125
    Width = 177
    Height = 164
    Color = 16711808
    TabOrder = 1
    Visible = False
    object lblCadCli: TLabel
      Left = 11
      Top = 10
      Width = 121
      Height = 17
      Caption = 'Cadastro de Clientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = lblCadCliClick
      OnMouseEnter = lblCadCliMouseEnter
      OnMouseLeave = lblCadCliMouseLeave
    end
    object LblCadCid: TLabel
      Left = 11
      Top = 85
      Width = 123
      Height = 17
      Caption = 'Cadastro de Cidades'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = LblListaFornClick
      OnMouseMove = LblCadCidMouseMove
      OnMouseLeave = LblCadCidMouseLeave
    end
    object lblCadEnd: TLabel
      Left = 11
      Top = 60
      Width = 137
      Height = 17
      Caption = 'Cadastro de Endere'#231'os'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = lblCadEndClick
      OnMouseEnter = lblCadEndMouseEnter
      OnMouseLeave = lblCadEndMouseLeave
    end
    object lblCadBai: TLabel
      Left = 11
      Top = 110
      Width = 117
      Height = 17
      Caption = 'Cadastro de Bairros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = Label7Click
    end
    object lblCadForn: TLabel
      Left = 11
      Top = 35
      Width = 156
      Height = 17
      Caption = 'Cadastro de Fornecedores'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = lblCadFornClick
      OnMouseEnter = lblCadFornMouseEnter
      OnMouseLeave = lblCadFornMouseLeave
    end
    object lblCadCompra: TLabel
      Left = 11
      Top = 134
      Width = 129
      Height = 17
      Caption = 'Cadastro de Compras'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = lblCadCompraClick
    end
  end
  object pnlEndereco: TPanel
    Left = 259
    Top = 125
    Width = 142
    Height = 84
    Color = 16711808
    TabOrder = 2
    Visible = False
    object lblListaEnd: TLabel
      Left = 11
      Top = 54
      Width = 110
      Height = 17
      Caption = 'Lista de Enderecos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblListaCli: TLabel
      Left = 11
      Top = 10
      Width = 94
      Height = 17
      Caption = 'Lista de Clientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblListaForn: TLabel
      Left = 11
      Top = 32
      Width = 129
      Height = 17
      Caption = 'Lista de Fornecedores'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = LblListaFornClick
    end
  end
end
