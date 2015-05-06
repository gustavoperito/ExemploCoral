inherited F_Buscas: TF_Buscas
  Left = 255
  Top = 95
  Width = 1066
  Height = 636
  Caption = 'F_Buscas'
  Color = clWhite
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1050
    Height = 73
    Align = alTop
    Caption = 'T'#205'TULO'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -64
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object StbStatus: TStatusBar
    Left = 0
    Top = 557
    Width = 1050
    Height = 40
    Panels = <
      item
        Width = 80
      end
      item
        Width = 100
      end
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object PnlDados: TPanel
    Left = 0
    Top = 228
    Width = 1050
    Height = 329
    Align = alClient
    BevelInner = bvRaised
    BevelWidth = 2
    BorderStyle = bsSingle
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 4
      Top = 4
      Width = 1038
      Height = 317
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Arial Narrow'
      TitleFont.Style = [fsBold]
    end
  end
  object PanFiltro: TPanel
    Left = 0
    Top = 73
    Width = 1050
    Height = 155
    Align = alTop
    BevelInner = bvRaised
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = clWhite
    TabOrder = 3
    object RadioOrdem: TRadioGroup
      Left = 236
      Top = 4
      Width = 207
      Height = 141
      Caption = ' Ordenar Por '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RadioStatus: TRadioGroup
      Left = 445
      Top = 4
      Width = 207
      Height = 141
      Caption = ' Status '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 4
      Width = 227
      Height = 141
      Caption = ' Filtrar Por '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 912
      Top = 8
      Width = 124
      Height = 65
      Caption = '&Buscar'
      TabOrder = 3
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 912
      Top = 75
      Width = 124
      Height = 65
      Caption = '&Sair'
      TabOrder = 4
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
end
