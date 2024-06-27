object CopyHourForm: TCopyHourForm
  Left = 286
  Top = 142
  Width = 226
  Height = 206
  Caption = #913#957#964#953#947#961#945#966#942
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
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 8
    Width = 113
    Height = 65
    Caption = 'Copy'
    ItemIndex = 1
    Items.Strings = (
      'All day'
      'Selected hour')
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object GroupBox1: TGroupBox
    Left = 128
    Top = 8
    Width = 81
    Height = 121
    Caption = 'Copy to'
    TabOrder = 1
    object DaysListBox: TListBox
      Left = 8
      Top = 17
      Width = 65
      Height = 96
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      MultiSelect = True
      ParentFont = False
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 144
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 24
    Top = 144
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkCancel
  end
  object Panel1: TJvPanel
    Left = 8
    Top = 80
    Width = 113
    Height = 49
    MultiLine = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 37
      Height = 13
      Caption = 'To hour'
    end
    object MaskEdit1: TMaskEdit
      Left = 64
      Top = 14
      Width = 33
      Height = 21
      EditMask = '!99:99;1;0'
      MaxLength = 5
      TabOrder = 0
      Text = '  :  '
      OnExit = MaskEdit1Exit
    end
  end
end
