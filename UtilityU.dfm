object Form1: TForm1
  Left = 190
  Top = 105
  Width = 583
  Height = 439
  Caption = 'Utility'
  Color = clBtnFace
  Constraints.MinHeight = 283
  Constraints.MinWidth = 538
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 575
    Height = 348
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Check if database files exist in Hard Disc'
      object Panel1: TJvPanel
        Left = 0
        Top = 0
        Width = 567
        Height = 320
        MultiLine = False
        Align = alClient
        BevelOuter = bvLowered
        BorderWidth = 2
        Caption = 'Panel1'
        Color = clAqua
        TabOrder = 0
        object Panel2: TJvPanel
          Left = 3
          Top = 3
          Width = 561
          Height = 314
          MultiLine = False
          Align = alClient
          BorderWidth = 3
          Caption = 'Panel2'
          TabOrder = 0
          object Panel3: TJvPanel
            Left = 4
            Top = 4
            Width = 553
            Height = 69
            MultiLine = False
            Align = alTop
            BevelOuter = bvLowered
            BorderWidth = 2
            TabOrder = 0
            object SpeedButton2: TSpeedButton
              Left = 392
              Top = 8
              Width = 105
              Height = 33
              Caption = 'Save list to file'
              OnClick = SpeedButton2Click
            end
            object SpeedButton1: TSpeedButton
              Left = 8
              Top = 8
              Width = 161
              Height = 33
              Caption = 'Check database filenames'
              OnClick = SpeedButton1Click
            end
            object Label1: TLabel
              Left = 11
              Top = 48
              Width = 3
              Height = 13
              ShowAccelChar = False
            end
          end
          object TextListBox1: TJvTextListBox
            Left = 4
            Top = 73
            Width = 553
            Height = 237
            Align = alClient
            ItemHeight = 13
            TabOrder = 1
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Check if Hard Disc Files exist in Database'
      ImageIndex = 1
      object Panel4: TJvPanel
        Left = 0
        Top = 0
        Width = 567
        Height = 320
        MultiLine = False
        Align = alClient
        BevelOuter = bvLowered
        BorderWidth = 2
        Color = clLime
        TabOrder = 0
        object RxSplitter1: TJvSplitter
          Left = 273
          Top = 3
          Width = 5
          Height = 314
        end
        object Panel6: TJvPanel
          Left = 278
          Top = 3
          Width = 286
          Height = 314
          MultiLine = False
          Align = alClient
          BorderWidth = 2
          TabOrder = 0
          object Panel7: TJvPanel
            Left = 3
            Top = 3
            Width = 280
            Height = 41
            MultiLine = False
            Align = alTop
            BevelInner = bvLowered
            BevelOuter = bvNone
            TabOrder = 0
            object btnSave: TSpeedButton
              Left = 8
              Top = 8
              Width = 89
              Height = 25
              Caption = 'Save List'
              OnClick = btnSaveClick
            end
            object btnDeleteFiles: TSpeedButton
              Left = 106
              Top = 8
              Width = 121
              Height = 25
              Caption = 'Clear list'
              OnClick = btnDeleteFilesClick
            end
          end
          object DBOutListBox1: TJvCheckListBox
            Left = 3
            Top = 44
            Width = 280
            Height = 267
            Align = alClient
            ItemHeight = 13
            PopupMenu = PopupMenu1
            TabOrder = 1
          end
        end
        object Panel8: TJvPanel
          Left = 3
          Top = 3
          Width = 270
          Height = 314
          MultiLine = False
          Align = alLeft
          BorderWidth = 2
          TabOrder = 1
          object Panel9: TJvPanel
            Left = 3
            Top = 3
            Width = 264
            Height = 41
            MultiLine = False
            Align = alTop
            BevelInner = bvLowered
            BevelOuter = bvNone
            TabOrder = 0
            object btnLoad: TSpeedButton
              Left = 8
              Top = 8
              Width = 89
              Height = 25
              Caption = 'Load Files'
              OnClick = btnLoadClick
            end
            object btnClear: TSpeedButton
              Left = 208
              Top = 8
              Width = 49
              Height = 25
              Caption = 'Clear list'
              OnClick = btnClearClick
            end
            object btnCheck: TSpeedButton
              Left = 104
              Top = 8
              Width = 89
              Height = 25
              Caption = 'Check'
              OnClick = btnCheckClick
            end
          end
          object HDFilesListBox: TJvCheckListBox
            Left = 3
            Top = 44
            Width = 264
            Height = 267
            Align = alClient
            ItemHeight = 13
            Sorted = True
            TabOrder = 1
            MultiSelect = True
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Reset Played Times'
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 225
        Height = 121
        Caption = 'Artists'
        TabOrder = 0
        object btnResetArtists: TSpeedButton
          Left = 136
          Top = 32
          Width = 73
          Height = 41
          Caption = 'Reset'
          OnClick = btnResetArtistsClick
        end
        object CheckBox1: TCheckBox
          Left = 16
          Top = 24
          Width = 113
          Height = 17
          Caption = #904#960#945#953#958#949' '#964#949#955#949#965#964#945#943#945
          TabOrder = 0
        end
        object CheckBox2: TCheckBox
          Left = 16
          Top = 56
          Width = 97
          Height = 17
          Caption = #916#953#945#952#941#963#953#956#959
          TabOrder = 1
        end
        object ArtistPlayCountCheck: TCheckBox
          Left = 16
          Top = 88
          Width = 129
          Height = 17
          Caption = #913#961#953#952#956#972#962' '#956#949#964#945#948#972#963#949#969#957
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 248
        Top = 8
        Width = 217
        Height = 121
        Caption = 'Titles'
        TabOrder = 1
        object brnResetTitles: TSpeedButton
          Left = 136
          Top = 32
          Width = 73
          Height = 41
          Caption = 'Reset'
          OnClick = brnResetTitlesClick
        end
        object CheckBox3: TCheckBox
          Left = 16
          Top = 24
          Width = 113
          Height = 17
          Caption = #904#960#945#953#958#949' '#964#949#955#949#965#964#945#943#945
          TabOrder = 0
        end
        object CheckBox4: TCheckBox
          Left = 16
          Top = 56
          Width = 97
          Height = 17
          Caption = #916#953#945#952#941#963#953#956#959
          TabOrder = 1
        end
        object TitlePlayCountCheck: TCheckBox
          Left = 16
          Top = 88
          Width = 129
          Height = 17
          Caption = #913#961#953#952#956#972#962' '#956#949#964#945#948#972#963#949#969#957
          TabOrder = 2
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'SQL'
      ImageIndex = 3
      object DBGrid1: TDBGrid
        Left = 0
        Top = 69
        Width = 567
        Height = 251
        Align = alClient
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel12: TJvPanel
        Left = 0
        Top = 0
        Width = 567
        Height = 69
        MultiLine = False
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 24
          Top = 8
          Width = 504
          Height = 26
          Caption = 
            #928#961#959#963#959#967#942' !!! '#917#954#964#949#955#974#957#964#945#962' '#949#957#964#959#955#941#962' SQL '#956#960#959#961#949#943' '#957#945' '#946#955#940#968#949#953' '#945#957#949#960#945#957#972#961#952#969#964#945 +
            ' '#964#951#957' database'#13#10#925#945' '#967#961#951#963#953#956#959#960#959#953#949#943#964#945#953' '#956#972#957#959' '#956#949' '#964#953#962' '#965#960#959#948#949#943#958#949#953#962' '#964#959#965' '#954#945#964 +
            #945#963#954#949#965#945#963#964#942'.'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object SpeedButton4: TSpeedButton
          Left = 506
          Top = 40
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
            00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
            70E337F3333F333337F3E0F33303333370E337F3337FF33337F3E0F333003333
            70E337F33377FF3337F3E0F33300033370E337F333777FF337F3E0F333000033
            70E337F33377773337F3E0F33300033370E337F33377733337F3E0F333003333
            70E337F33377333337F3E0F33303333370E337F33373333337F3E0F333333333
            70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
            00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
          NumGlyphs = 2
          OnClick = SpeedButton4Click
        end
        object RxSpeedButton1: TJvSpeedButton
          Left = 532
          Top = 40
          Width = 23
          Height = 22
          DropDownMenu = PopupMenu2
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object SqlEdit1: TEdit
          Left = 8
          Top = 40
          Width = 497
          Height = 21
          TabOrder = 0
        end
      end
    end
  end
  object Panel5: TJvPanel
    Left = 0
    Top = 348
    Width = 575
    Height = 57
    MultiLine = False
    Align = alBottom
    BorderWidth = 2
    TabOrder = 1
    object Gauge1: TGauge
      Left = 3
      Top = 3
      Width = 569
      Height = 20
      Align = alTop
      Progress = 0
    end
    object Panel10: TJvPanel
      Left = 3
      Top = 29
      Width = 569
      Height = 25
      MultiLine = False
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object SpeedButton3: TSpeedButton
        Left = 4
        Top = 0
        Width = 89
        Height = 25
        Caption = 'Stop'
        OnClick = SpeedButton3Click
      end
      object Label3: TLabel
        Left = 112
        Top = 8
        Width = 32
        Height = 13
        Caption = 'Label3'
        Visible = False
      end
      object Button1: TButton
        Left = 288
        Top = 0
        Width = 241
        Height = 25
        Caption = 'Delete from database records of non existing files'
        TabOrder = 0
        Visible = False
        OnClick = Button1Click
      end
      object Panel11: TJvPanel
        Left = 552
        Top = 0
        Width = 17
        Height = 25
        MultiLine = False
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        OnDblClick = Panel11DblClick
      end
    end
  end
  object tblArtists: TTable
    TableName = 'Artists.DB'
    Left = 108
    Top = 192
  end
  object tblTitles: TTable
    TableName = 'Songs.DB'
    Left = 144
    Top = 192
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'mp3'
    Filter = 
      'mp3 files|*.mp3|Wav files|*.wav|Audio files|*.mp3;*.wav|All file' +
      's|*.*'
    Options = [ofAllowMultiSelect, ofEnableSizing]
    Left = 72
    Top = 192
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'sav'
    Filter = 'Saved files|*.sav|Text files|*.txt|All files|*.*'
    Left = 40
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 176
    Top = 192
    object Selectallfiles1: TMenuItem
      Caption = 'Select all files'
      OnClick = Selectallfiles1Click
    end
    object Deletefilesfromharddisc1: TMenuItem
      Caption = 'Delete Selected files from hard disc'
      OnClick = Deletefilesfromharddisc1Click
    end
    object DeSelectallfiles1: TMenuItem
      Caption = 'DeSelect all files'
      OnClick = DeSelectallfiles1Click
    end
  end
  object Query1: TQuery
    Left = 240
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 192
  end
  object PopupMenu2: TPopupMenu
    Left = 516
    Top = 50
    object TopSongs1: TMenuItem
      Caption = 'Show Top songs'
      OnClick = TopSongs1Click
    end
    object TopArtists: TMenuItem
      Caption = 'Show Top Artists'
      OnClick = TopArtistsClick
    end
    object DisabledSongs1: TMenuItem
      Caption = 'Show Disabled Songs'
      OnClick = DisabledSongs1Click
    end
  end
end
