object frmProgress: TfrmProgress
  Left = 291
  Top = 114
  BorderStyle = bsDialog
  Caption = 'Finding file...'
  ClientHeight = 73
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Shell Dlg 2'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 100
    Height = 13
    Caption = 'Searching directory :'
  end
  object lblDirectory: TJvLabel
    Left = 8
    Top = 24
    Width = 337
    Height = 13
    AutoSize = False
    Caption = 'lblDirectory'
    AutoOpenURL = False
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Shell Dlg 2'
    HotTrackFont.Style = []
    TextEllipsis = tePathEllipsis
  end
  object SpeedButton1: TSpeedButton
    Left = 272
    Top = 48
    Width = 73
    Height = 22
    Caption = 'Stop search'
    OnClick = SpeedButton1Click
  end
end
