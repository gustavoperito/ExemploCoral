inherited F_CadPercentual: TF_CadPercentual
  Left = 491
  Top = 159
  Caption = 'CADASTRO DE PERCENTUAL'
  ClientHeight = 361
  ClientWidth = 723
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 73
  inherited PnlTitulo: TPanel
    Width = 723
    Caption = 'PERCENTUAL'
  end
  inherited PnlStatus: TPanel
    Top = 329
    Width = 723
  end
  inherited PnlBotoes: TPanel
    Left = 598
    Height = 240
  end
  inherited PnlDados: TPanel
    Width = 598
    Height = 240
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 47
      Height = 17
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 120
      Width = 65
      Height = 17
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdescr
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 64
      Width = 128
      Height = 17
      Caption = 'Valor do Percentual'
      FocusControl = DBEperc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdescr: TDBEdit
      Left = 32
      Top = 144
      Width = 416
      Height = 25
      DataField = 'DESCRICAO_PERC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEperc: TDBEdit
      Left = 32
      Top = 88
      Width = 372
      Height = 25
      DataField = 'VALOR_PERC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  inherited MedBusca: TMaskEdit
    Left = 33
    Top = 124
    Height = 25
    Font.Height = -15
  end
end
