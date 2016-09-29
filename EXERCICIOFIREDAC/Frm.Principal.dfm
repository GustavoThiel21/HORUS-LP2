object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 184
    Top = 32
    object Proprietarios1: TMenuItem
      Caption = 'Proprietarios'
      OnClick = Proprietarios1Click
    end
    object VeiculoseMultas1: TMenuItem
      Caption = 'Veiculos e Multas'
      OnClick = VeiculoseMultas1Click
    end
  end
end
