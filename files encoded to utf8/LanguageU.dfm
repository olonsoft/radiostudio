object Form1: TForm1
  Left = 192
  Top = 107
  Width = 151
  Height = 115
  Caption = 'Language'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 24
    Top = 8
    Width = 97
    Height = 73
    Caption = 'Select language'
    Items.Strings = (
      'Greek'
      'English')
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
end
