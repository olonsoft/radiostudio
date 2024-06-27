object WaitServerForm: TWaitServerForm
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Waiting.....'
  ClientHeight = 70
  ClientWidth = 337
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 335
    Height = 29
    Caption = 'Waiting for the server to start'
    Font.Charset = GREEK_CHARSET
    Font.Color = clLime
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 132
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 0
    OnClick = Button1Click
  end
end
