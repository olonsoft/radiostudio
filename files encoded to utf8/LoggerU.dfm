object Form1: TForm1
  Left = 296
  Top = 142
  Width = 622
  Height = 480
  Caption = 'Logger'
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
  object Panel1: TJvPanel
    Left = 0
    Top = 0
    Width = 614
    Height = 121
    MultiLine = False
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 50
      Height = 13
      Caption = 'Date From'
    end
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 38
      Height = 13
      Caption = 'Date To'
    end
    object Label3: TLabel
      Left = 414
      Top = 72
      Width = 38
      Height = 26
      Caption = 'Include Text'
      WordWrap = True
    end
    object DatePicker1: TDateTimePicker
      Left = 16
      Top = 24
      Width = 89
      Height = 21
      Date = 36452.610273611110000000
      Time = 36452.610273611110000000
      TabOrder = 0
    end
    object DatePicker2: TDateTimePicker
      Left = 16
      Top = 64
      Width = 89
      Height = 21
      Date = 36452.610379166670000000
      Time = 36452.610379166670000000
      TabOrder = 2
    end
    object TimePicker1: TDateTimePicker
      Left = 112
      Top = 24
      Width = 73
      Height = 21
      Date = 36452.000000000000000000
      Time = 36452.000000000000000000
      Kind = dtkTime
      TabOrder = 1
    end
    object TimePicker2: TDateTimePicker
      Left = 112
      Top = 64
      Width = 73
      Height = 21
      Date = 36452.999988425930000000
      Time = 36452.999988425930000000
      Kind = dtkTime
      TabOrder = 3
    end
    object GroupBox1: TGroupBox
      Left = 192
      Top = 8
      Width = 217
      Height = 105
      Caption = 'Report'
      TabOrder = 4
      object Label4: TLabel
        Left = 158
        Top = 82
        Width = 48
        Height = 13
        Caption = 'Seperator'
      end
      object chSongs: TCheckBox
        Left = 8
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Songs'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object chJingles: TCheckBox
        Left = 8
        Top = 32
        Width = 97
        Height = 17
        Caption = 'Jingles'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object chSpots: TCheckBox
        Left = 8
        Top = 48
        Width = 97
        Height = 17
        Caption = 'Spots'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object chTime: TCheckBox
        Left = 8
        Top = 64
        Width = 97
        Height = 17
        Caption = 'Time Anounce'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object chNews: TCheckBox
        Left = 8
        Top = 80
        Width = 97
        Height = 17
        Caption = 'News'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object chHardDisc: TCheckBox
        Left = 112
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Hard Disc'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object chPrograms: TCheckBox
        Left = 112
        Top = 32
        Width = 97
        Height = 17
        Caption = 'New Programs'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
      object chErrors: TCheckBox
        Left = 112
        Top = 48
        Width = 97
        Height = 17
        Caption = 'Errors'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object chWarnings: TCheckBox
        Left = 112
        Top = 64
        Width = 97
        Height = 17
        Caption = 'Warnings'
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
      object SepEdit1: TEdit
        Left = 112
        Top = 80
        Width = 41
        Height = 21
        TabOrder = 9
        Text = '  '
      end
    end
    object chShowTime: TCheckBox
      Left = 416
      Top = 48
      Width = 81
      Height = 17
      Caption = 'Show Time'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object chShowDate: TCheckBox
      Left = 416
      Top = 32
      Width = 81
      Height = 17
      Caption = 'Show Date'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object btnShow: TBitBtn
      Left = 8
      Top = 88
      Width = 97
      Height = 25
      Caption = 'Show'
      TabOrder = 7
      OnClick = btnShowClick
    end
    object chDescr: TCheckBox
      Left = 504
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Description'
      TabOrder = 8
    end
    object chFilters: TCheckBox
      Left = 504
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Broken filters'
      TabOrder = 9
    end
    object btnExport: TBitBtn
      Left = 112
      Top = 88
      Width = 73
      Height = 25
      Caption = 'Export to *.txt'
      TabOrder = 10
      OnClick = btnExportClick
    end
    object Edit1: TEdit
      Left = 416
      Top = 88
      Width = 161
      Height = 21
      TabOrder = 11
    end
    object chShowDay1: TCheckBox
      Left = 416
      Top = 16
      Width = 81
      Height = 17
      Caption = 'Show Day'
      TabOrder = 12
    end
  end
  object Panel2: TJvPanel
    Left = 0
    Top = 121
    Width = 614
    Height = 306
    MultiLine = False
    Align = alClient
    BorderWidth = 5
    TabOrder = 1
    object ListBox1: TListBox
      Left = 6
      Top = 6
      Width = 602
      Height = 294
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 427
    Width = 614
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object FormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '\Logger\'
    MinMaxInfo.MinTrackHeight = 200
    MinMaxInfo.MinTrackWidth = 622
    StoredProps.Strings = (
      'chDescr.Checked'
      'chErrors.Checked'
      'chFilters.Checked'
      'chHardDisc.Checked'
      'chJingles.Checked'
      'chNews.Checked'
      'chPrograms.Checked'
      'chShowDate.Checked'
      'chShowTime.Checked'
      'chSongs.Checked'
      'chSpots.Checked'
      'chTime.Checked'
      'chWarnings.Checked'
      'chShowDay1.Checked')
    StoredValues = <>
    Left = 360
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text file|*.txt|All files|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save to text file'
    Left = 328
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    FileName = 'settings.ini'
    DefaultSection = 'General'
    SubStorages = <>
    Left = 392
  end
end
