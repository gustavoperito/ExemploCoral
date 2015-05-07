object F_Configuracoes: TF_Configuracoes
  Left = 961
  Top = 192
  Width = 203
  Height = 222
  Caption = 'Configura'#231#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 59
    Height = 13
    Caption = 'Cor Primaria:'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 76
    Height = 13
    Caption = 'Cor Secundaria:'
  end
  object ColorBox1: TColorBox
    Left = 24
    Top = 48
    Width = 145
    Height = 22
    ItemHeight = 16
    TabOrder = 0
  end
  object ColorBox2: TColorBox
    Left = 24
    Top = 96
    Width = 145
    Height = 22
    ItemHeight = 16
    TabOrder = 1
  end
  object btnSalvar: TButton
    Left = 24
    Top = 136
    Width = 145
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
  end
end
