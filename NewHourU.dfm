object NewHourForm: TNewHourForm
  Left = 291
  Top = 120
  BorderStyle = bsToolWindow
  Caption = #925#941#945' '#974#961#945' / Playlist'
  ClientHeight = 103
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 22
    Height = 13
    Caption = 'Time'
  end
  object Label2: TLabel
    Left = 48
    Top = 24
    Width = 36
    Height = 13
    Caption = 'PlayList'
  end
  object SpeedButton1: TSpeedButton
    Left = 128
    Top = 8
    Width = 81
    Height = 25
    Caption = 'Select'
    OnClick = SpeedButton1Click
  end
  object MaskEdit1: TMaskEdit
    Left = 8
    Top = 40
    Width = 35
    Height = 21
    EditMask = '!99:99;1;0'
    MaxLength = 5
    TabOrder = 0
    Text = '  :  '
    OnExit = MaskEdit1Exit
  end
  object Edit1: TEdit
    Left = 48
    Top = 40
    Width = 233
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 72
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 72
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkCancel
  end
  object FormStorage1: TJvFormStorage
    AppStoragePath = '%FORM_NAME%\'
    StoredValues = <>
    Left = 224
    Top = 8
  end
end
