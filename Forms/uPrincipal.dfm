object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cupom System - APP'
  ClientHeight = 143
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object tCargaSRV: TTimer
    OnTimer = tCargaSRVTimer
    Left = 16
    Top = 16
  end
  object ApplicationEvents1: TApplicationEvents
    OnMinimize = ApplicationEvents1Minimize
    Left = 263
    Top = 8
  end
  object TrayIcon1: TTrayIcon
    Hint = 'Cupom System - Reabrir'
    PopupMenu = PopupMenu1
    Visible = True
    Left = 224
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 72
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar1Click
    end
  end
end
