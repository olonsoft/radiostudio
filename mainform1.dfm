object Form1: TForm1
  Left = 344
  Top = 177
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'RadioStudio Radio Automation System Version'
  ClientHeight = 546
  ClientWidth = 793
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object TimePanel: TJvPanel
    Left = 408
    Top = 0
    Width = 377
    Height = 23
    HotColor = clBlack
    MultiLine = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 1
    Caption = 'Studio 19 FM'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = OptionsPopUp
    TabOrder = 0
  end
  object SpinButton1: TSpinButton
    Left = 412
    Top = 230
    Width = 57
    Height = 85
    DownGlyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
      333333333337F33333333333333033333333333333373F333333333333090333
      33333333337F7F33333333333309033333333333337373F33333333330999033
      3333333337F337F33333333330999033333333333733373F3333333309999903
      333333337F33337F33333333099999033333333373333373F333333099999990
      33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333300033333333333337773333333}
    DownNumGlyphs = 2
    TabOrder = 1
    UpGlyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
      3333333333777F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333337F7F333333333333090333
      33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
      3333333777737777F333333099999990333333373F3333373333333309999903
      333333337F33337F33333333099999033333333373F333733333333330999033
      3333333337F337F3333333333099903333333333373F37333333333333090333
      33333333337F7F33333333333309033333333333337373333333333333303333
      333333333337F333333333333330333333333333333733333333}
    UpNumGlyphs = 2
    OnDownClick = SpinButton1DownClick
    OnUpClick = SpinButton1UpClick
  end
  object Panel1: TJvPanel
    Left = 0
    Top = 0
    Width = 405
    Height = 280
    MultiLine = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object PlayerPanel1: TJvPanel
      Tag = 1
      Left = 80
      Top = 4
      Width = 320
      Height = 67
      MultiLine = False
      BevelInner = bvRaised
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = SelectClick
      object RemainLabel1: TTimeLabel
        Tag = 1
        Left = 2
        Top = 42
        Width = 76
        Height = 21
        Time = 0
        ShowMSec = True
        ShowHours = False
        ShowMinutes = True
        ShowZeros = True
        IsMSec = False
        Minus = True
        AutoSize = False
        Caption = '-00:00.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        OnClick = SelectClick
      end
      object Panel9: TJvPanel
        Tag = 1
        Left = 5
        Top = 5
        Width = 310
        Height = 36
        HotColor = clBlack
        MultiLine = False
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Color = clBlack
        TabOrder = 0
        OnClick = SelectClick
        object PlayTypeLabel1: TLabel
          Tag = 1
          Left = 18
          Top = 2
          Width = 64
          Height = 16
          Caption = 'PlayType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          OnClick = SelectClick
        end
        object SongLabel1: TLabel
          Tag = 1
          Left = 2
          Top = 18
          Width = 306
          Height = 16
          Align = alBottom
          Caption = 'SongLabel1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShowAccelChar = False
          OnClick = SelectClick
        end
        object IntroLabel1: TTimeLabel
          Tag = 1
          Left = 280
          Top = 3
          Width = 24
          Height = 13
          Time = 2100
          ShowMSec = True
          ShowHours = False
          ShowMinutes = False
          ShowZeros = False
          IsMSec = False
          Minus = True
          Caption = '-02.1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          OnClick = SelectClick
        end
        object TypeImage1: TImage
          Tag = 1
          Left = 2
          Top = 2
          Width = 16
          Height = 16
          AutoSize = True
          Stretch = True
          Transparent = True
          OnClick = SelectClick
        end
      end
      object ToolBar1: TToolBar
        Left = 80
        Top = 42
        Width = 220
        Height = 22
        Align = alNone
        Color = clBtnFace
        EdgeBorders = []
        EdgeInner = esNone
        EdgeOuter = esNone
        Flat = True
        HotImages = TypesImageList
        Images = TypesImageList
        Indent = 10
        ParentColor = False
        TabOrder = 1
        Transparent = True
        object Pause1: TToolButton
          Tag = 1
          Left = 10
          Top = 0
          Hint = 'Pause'
          Caption = 'Pause1'
          ImageIndex = 6
          Style = tbsCheck
          OnClick = PauseClick
        end
        object Fix1: TToolButton
          Tag = 1
          Left = 33
          Top = 0
          Hint = 'Fix'
          Caption = 'Fix1'
          ImageIndex = 7
          Style = tbsCheck
          OnClick = FixClick
        end
        object Loop1: TToolButton
          Tag = 1
          Left = 56
          Top = 0
          Hint = 'Loop'
          Caption = 'Loop1'
          ImageIndex = 8
          Style = tbsCheck
          OnClick = LoopClick
        end
        object Repeat1: TToolButton
          Tag = 1
          Left = 79
          Top = 0
          Hint = 'Touch Repeat'
          Caption = 'Repeat1'
          ImageIndex = 9
          Style = tbsCheck
          OnClick = RepeatClick
        end
        object Info1: TToolButton
          Tag = 1
          Left = 102
          Top = 0
          Hint = 'Info'
          Caption = 'Info1'
          ImageIndex = 10
          OnClick = InfoClick
        end
        object Move1: TToolButton
          Tag = 1
          Left = 125
          Top = 0
          Hint = 'Move'
          Caption = 'Move1'
          ImageIndex = 11
          OnClick = MoveClick
        end
        object Delete1: TToolButton
          Tag = 1
          Left = 148
          Top = 0
          Hint = 'Delete'
          Caption = 'Delete1'
          ImageIndex = 12
          OnClick = DeleteButtonClick
        end
        object Divider_b1: TToolButton
          Left = 171
          Top = 0
          Width = 23
          Caption = 'Divider_b1'
          ImageIndex = 6
          ParentShowHint = False
          ShowHint = True
          Style = tbsDivider
        end
        object Cue1: TToolButton
          Tag = 1
          Left = 194
          Top = 0
          Caption = 'Cue1'
          ImageIndex = 13
          OnClick = CueClick
        end
      end
    end
    object PlayerPanel2: TJvPanel
      Tag = 2
      Left = 80
      Top = 72
      Width = 320
      Height = 67
      MultiLine = False
      BevelInner = bvRaised
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = SelectClick
      object RemainLabel2: TTimeLabel
        Tag = 2
        Left = 2
        Top = 42
        Width = 76
        Height = 21
        Time = 0
        ShowMSec = True
        ShowHours = False
        ShowMinutes = True
        ShowZeros = True
        IsMSec = False
        Minus = True
        AutoSize = False
        Caption = '-00:00.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        OnClick = SelectClick
      end
      object Panel7: TJvPanel
        Tag = 2
        Left = 5
        Top = 5
        Width = 310
        Height = 36
        HotColor = clBlack
        MultiLine = False
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Color = clBlack
        TabOrder = 0
        OnClick = SelectClick
        object PlayTypeLabel2: TLabel
          Tag = 2
          Left = 18
          Top = 2
          Width = 64
          Height = 16
          Caption = 'PlayType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          OnClick = SelectClick
        end
        object SongLabel2: TLabel
          Tag = 2
          Left = 2
          Top = 18
          Width = 306
          Height = 16
          Align = alBottom
          Caption = 'SongLabel2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShowAccelChar = False
          OnClick = SelectClick
        end
        object IntroLabel2: TTimeLabel
          Tag = 2
          Left = 280
          Top = 3
          Width = 24
          Height = 13
          Time = 2100
          ShowMSec = True
          ShowHours = False
          ShowMinutes = False
          ShowZeros = False
          IsMSec = False
          Minus = True
          Caption = '-02.1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          OnClick = SelectClick
        end
        object TypeImage2: TImage
          Tag = 2
          Left = 2
          Top = 2
          Width = 16
          Height = 16
          AutoSize = True
          Stretch = True
          Transparent = True
          OnClick = SelectClick
        end
      end
      object ToolBar2: TToolBar
        Left = 80
        Top = 42
        Width = 220
        Height = 22
        Align = alNone
        Color = clBtnFace
        EdgeBorders = []
        EdgeInner = esNone
        EdgeOuter = esNone
        Flat = True
        HotImages = TypesImageList
        Images = TypesImageList
        Indent = 10
        ParentColor = False
        TabOrder = 1
        Transparent = True
        object Pause2: TToolButton
          Tag = 2
          Left = 10
          Top = 0
          Hint = 'Pause'
          Caption = 'ToolButton1'
          ImageIndex = 6
          Style = tbsCheck
          OnClick = PauseClick
        end
        object Fix2: TToolButton
          Tag = 2
          Left = 33
          Top = 0
          Hint = 'Fix'
          Caption = 'ToolButton2'
          ImageIndex = 7
          Style = tbsCheck
          OnClick = FixClick
        end
        object Loop2: TToolButton
          Tag = 2
          Left = 56
          Top = 0
          Hint = 'Loop'
          Caption = 'ToolButton3'
          ImageIndex = 8
          Style = tbsCheck
          OnClick = LoopClick
        end
        object Repeat2: TToolButton
          Tag = 2
          Left = 79
          Top = 0
          Hint = 'Touch Repeat'
          Caption = 'ToolButton4'
          ImageIndex = 9
          Style = tbsCheck
          OnClick = RepeatClick
        end
        object Info2: TToolButton
          Tag = 2
          Left = 102
          Top = 0
          Hint = 'Info'
          Caption = 'Info2'
          ImageIndex = 10
          OnClick = InfoClick
        end
        object Move2: TToolButton
          Tag = 2
          Left = 125
          Top = 0
          Hint = 'Move'
          Caption = 'ToolButton6'
          ImageIndex = 11
          OnClick = MoveClick
        end
        object Delete2: TToolButton
          Tag = 2
          Left = 148
          Top = 0
          Hint = 'Delete'
          Caption = 'ToolButton7'
          ImageIndex = 12
          OnClick = DeleteButtonClick
        end
        object Divider_b2: TToolButton
          Left = 171
          Top = 0
          Width = 23
          Caption = 'Divider_b2'
          ImageIndex = 6
          ParentShowHint = False
          ShowHint = True
          Style = tbsDivider
        end
        object Cue2: TToolButton
          Tag = 2
          Left = 194
          Top = 0
          Caption = 'Cue2'
          ImageIndex = 13
          OnClick = CueClick
        end
      end
    end
    object PlayerPanel3: TJvPanel
      Tag = 3
      Left = 80
      Top = 140
      Width = 320
      Height = 67
      MultiLine = False
      BevelInner = bvRaised
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = SelectClick
      object RemainLabel3: TTimeLabel
        Tag = 3
        Left = 2
        Top = 42
        Width = 76
        Height = 21
        Time = 0
        ShowMSec = True
        ShowHours = False
        ShowMinutes = True
        ShowZeros = True
        IsMSec = False
        Minus = True
        AutoSize = False
        Caption = '-00:00.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        OnClick = SelectClick
      end
      object Panel12: TJvPanel
        Tag = 3
        Left = 5
        Top = 5
        Width = 310
        Height = 36
        HotColor = clBlack
        MultiLine = False
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Color = clBlack
        TabOrder = 0
        OnClick = SelectClick
        object PlayTypeLabel3: TLabel
          Tag = 3
          Left = 18
          Top = 2
          Width = 64
          Height = 16
          Caption = 'PlayType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          OnClick = SelectClick
        end
        object SongLabel3: TLabel
          Tag = 3
          Left = 2
          Top = 18
          Width = 306
          Height = 16
          Align = alBottom
          Caption = 'SongLabel3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShowAccelChar = False
          OnClick = SelectClick
        end
        object IntroLabel3: TTimeLabel
          Tag = 3
          Left = 280
          Top = 3
          Width = 24
          Height = 13
          Time = 2100
          ShowMSec = True
          ShowHours = False
          ShowMinutes = False
          ShowZeros = False
          IsMSec = False
          Minus = True
          Caption = '-02.1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          OnClick = SelectClick
        end
        object TypeImage3: TImage
          Tag = 3
          Left = 2
          Top = 2
          Width = 16
          Height = 16
          AutoSize = True
          Stretch = True
          Transparent = True
          OnClick = SelectClick
        end
      end
      object ToolBar3: TToolBar
        Left = 80
        Top = 42
        Width = 220
        Height = 22
        Align = alNone
        Color = clBtnFace
        EdgeBorders = []
        EdgeInner = esNone
        EdgeOuter = esNone
        Flat = True
        HotImages = TypesImageList
        Images = TypesImageList
        Indent = 10
        ParentColor = False
        TabOrder = 1
        Transparent = True
        object Pause3: TToolButton
          Tag = 3
          Left = 10
          Top = 0
          Hint = 'Pause'
          Caption = 'ToolButton1'
          ImageIndex = 6
          Style = tbsCheck
          OnClick = PauseClick
        end
        object Fix3: TToolButton
          Tag = 3
          Left = 33
          Top = 0
          Hint = 'Fix'
          Caption = 'ToolButton2'
          ImageIndex = 7
          Style = tbsCheck
          OnClick = FixClick
        end
        object Loop3: TToolButton
          Tag = 3
          Left = 56
          Top = 0
          Hint = 'Loop'
          Caption = 'ToolButton3'
          ImageIndex = 8
          Style = tbsCheck
          OnClick = LoopClick
        end
        object Repeat3: TToolButton
          Tag = 3
          Left = 79
          Top = 0
          Hint = 'Touch Repeat'
          Caption = 'ToolButton4'
          ImageIndex = 9
          Style = tbsCheck
          OnClick = RepeatClick
        end
        object Info3: TToolButton
          Tag = 3
          Left = 102
          Top = 0
          Hint = 'Info'
          Caption = 'Info3'
          ImageIndex = 10
          OnClick = InfoClick
        end
        object Move3: TToolButton
          Tag = 3
          Left = 125
          Top = 0
          Hint = 'Move'
          Caption = 'ToolButton6'
          ImageIndex = 11
          OnClick = MoveClick
        end
        object Delete3: TToolButton
          Tag = 3
          Left = 148
          Top = 0
          Hint = 'Delete'
          Caption = 'ToolButton7'
          ImageIndex = 12
          OnClick = DeleteButtonClick
        end
        object Divider_b3: TToolButton
          Left = 171
          Top = 0
          Width = 23
          Caption = 'Divider_b3'
          ImageIndex = 6
          ParentShowHint = False
          ShowHint = True
          Style = tbsDivider
        end
        object Cue3: TToolButton
          Tag = 3
          Left = 194
          Top = 0
          Caption = 'Cue3'
          ImageIndex = 13
          OnClick = CueClick
        end
      end
    end
    object PlayerPanel4: TJvPanel
      Tag = 4
      Left = 80
      Top = 208
      Width = 320
      Height = 67
      MultiLine = False
      BevelInner = bvRaised
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = SelectClick
      object RemainLabel4: TTimeLabel
        Tag = 4
        Left = 2
        Top = 42
        Width = 76
        Height = 21
        Time = 0
        ShowMSec = True
        ShowHours = False
        ShowMinutes = True
        ShowZeros = True
        IsMSec = False
        Minus = True
        AutoSize = False
        Caption = '-00:00.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        OnClick = SelectClick
      end
      object Panel15: TJvPanel
        Tag = 4
        Left = 5
        Top = 5
        Width = 310
        Height = 36
        HotColor = clBlack
        MultiLine = False
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Color = clBlack
        TabOrder = 0
        OnClick = SelectClick
        object PlayTypeLabel4: TLabel
          Tag = 4
          Left = 18
          Top = 2
          Width = 64
          Height = 16
          Caption = 'PlayType'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          OnClick = SelectClick
        end
        object SongLabel4: TLabel
          Tag = 4
          Left = 2
          Top = 18
          Width = 306
          Height = 16
          Align = alBottom
          Caption = 'SongLabel4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShowAccelChar = False
          OnClick = SelectClick
        end
        object IntroLabel4: TTimeLabel
          Tag = 4
          Left = 280
          Top = 3
          Width = 24
          Height = 13
          Time = 2100
          ShowMSec = True
          ShowHours = False
          ShowMinutes = False
          ShowZeros = False
          IsMSec = False
          Minus = True
          Caption = '-02.1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowAccelChar = False
          OnClick = SelectClick
        end
        object TypeImage4: TImage
          Tag = 4
          Left = 2
          Top = 2
          Width = 16
          Height = 14
          AutoSize = True
          Stretch = True
          Transparent = True
          OnClick = SelectClick
        end
      end
      object ToolBar4: TToolBar
        Left = 80
        Top = 42
        Width = 220
        Height = 22
        Align = alNone
        Color = clBtnFace
        EdgeBorders = []
        EdgeInner = esNone
        EdgeOuter = esNone
        Flat = True
        HotImages = TypesImageList
        Images = TypesImageList
        Indent = 10
        ParentColor = False
        TabOrder = 1
        Transparent = True
        object Pause4: TToolButton
          Tag = 4
          Left = 10
          Top = 0
          Hint = 'Pause'
          Caption = 'ToolButton1'
          ImageIndex = 6
          Style = tbsCheck
          OnClick = PauseClick
        end
        object Fix4: TToolButton
          Tag = 4
          Left = 33
          Top = 0
          Hint = 'Fix'
          Caption = 'ToolButton2'
          ImageIndex = 7
          Style = tbsCheck
          OnClick = FixClick
        end
        object Loop4: TToolButton
          Tag = 4
          Left = 56
          Top = 0
          Hint = 'Loop'
          Caption = 'ToolButton3'
          ImageIndex = 8
          Style = tbsCheck
          OnClick = LoopClick
        end
        object Repeat4: TToolButton
          Tag = 4
          Left = 79
          Top = 0
          Hint = 'Touch Repeat'
          Caption = 'ToolButton4'
          ImageIndex = 9
          Style = tbsCheck
          OnClick = RepeatClick
        end
        object Info4: TToolButton
          Tag = 4
          Left = 102
          Top = 0
          Hint = 'Info'
          Caption = 'Info4'
          ImageIndex = 10
          OnClick = InfoClick
        end
        object Move4: TToolButton
          Tag = 4
          Left = 125
          Top = 0
          Hint = 'Move'
          Caption = 'ToolButton6'
          ImageIndex = 11
          OnClick = MoveClick
        end
        object Delete4: TToolButton
          Tag = 4
          Left = 148
          Top = 0
          Hint = 'Delete'
          Caption = 'ToolButton7'
          ImageIndex = 12
          OnClick = DeleteButtonClick
        end
        object Divider_b4: TToolButton
          Left = 171
          Top = 0
          Width = 23
          Caption = 'Divider_b4'
          ImageIndex = 6
          ParentShowHint = False
          ShowHint = True
          Style = tbsDivider
        end
        object Cue4: TToolButton
          Tag = 4
          Left = 194
          Top = 0
          Caption = 'Cue4'
          ImageIndex = 13
          OnClick = CueClick
        end
      end
    end
    object StartButton2: TMultibutton
      Tag = 2
      Left = 6
      Top = 72
      Width = 71
      Height = 67
      BoxCaption1 = 'Status'
      BoxCaption1Color = clYellow
      BoxCaption2 = '+00:00.0'
      BoxCaption2Color = clAqua
      ButtonCaption1 = 'No'
      Caption1Color = clBlack
      ButtonCaption2 = 'Time'
      Caption2Color = clRed
      BoxAlignment = alTopCenter
      BevelSize = 3
      ButtonColor = clSilver
      BoxColor = clBlack
      ShowBox = True
      BoxHeight = 33
      ButtonCaption1Alignment = alBottomLeft
      ButtonCaption2Alignment = alBottomRight
      BoxCaption1Alignment = alTopCenter
      BoxCaption2Alignment = alBottomCenter
      OnOff = False
      Down = False
      Redraw = True
      UseHighLightColor = False
      TabOrder = 4
      TabStop = True
      ColorBevel = True
      OnClick = StartButtonClick
    end
    object StartButton3: TMultibutton
      Tag = 3
      Left = 6
      Top = 140
      Width = 71
      Height = 67
      BoxCaption1 = 'Status'
      BoxCaption1Color = clYellow
      BoxCaption2 = '+00:00.0'
      BoxCaption2Color = clAqua
      ButtonCaption1 = 'No'
      Caption1Color = clBlack
      ButtonCaption2 = 'Time'
      Caption2Color = clRed
      BoxAlignment = alTopCenter
      BevelSize = 3
      ButtonColor = clSilver
      BoxColor = clBlack
      ShowBox = True
      BoxHeight = 33
      ButtonCaption1Alignment = alBottomLeft
      ButtonCaption2Alignment = alBottomRight
      BoxCaption1Alignment = alTopCenter
      BoxCaption2Alignment = alBottomCenter
      OnOff = False
      Down = False
      Redraw = True
      UseHighLightColor = False
      TabOrder = 5
      TabStop = True
      ColorBevel = True
      OnClick = StartButtonClick
    end
    object StartButton4: TMultibutton
      Tag = 4
      Left = 6
      Top = 208
      Width = 71
      Height = 67
      BoxCaption1 = 'Status'
      BoxCaption1Color = clYellow
      BoxCaption2 = '+00:00.0'
      BoxCaption2Color = clAqua
      ButtonCaption1 = 'No'
      Caption1Color = clBlack
      ButtonCaption2 = 'Time'
      Caption2Color = clRed
      BoxAlignment = alTopCenter
      BevelSize = 3
      ButtonColor = clSilver
      BoxColor = clBlack
      ShowBox = True
      BoxHeight = 33
      ButtonCaption1Alignment = alBottomLeft
      ButtonCaption2Alignment = alBottomRight
      BoxCaption1Alignment = alTopCenter
      BoxCaption2Alignment = alBottomCenter
      OnOff = False
      Down = False
      Redraw = True
      UseHighLightColor = False
      TabOrder = 6
      TabStop = True
      ColorBevel = True
      OnClick = StartButtonClick
    end
    object StartButton1: TMultibutton
      Tag = 1
      Left = 6
      Top = 4
      Width = 71
      Height = 67
      BoxCaption1 = 'Status'
      BoxCaption1Color = clYellow
      BoxCaption2 = '+00:00.0'
      BoxCaption2Color = clAqua
      ButtonCaption1 = 'No'
      Caption1Color = clBlack
      ButtonCaption2 = 'Time'
      Caption2Color = clRed
      BoxAlignment = alTopCenter
      BevelSize = 3
      ButtonColor = clSilver
      BoxColor = clBlack
      ShowBox = True
      BoxHeight = 33
      ButtonCaption1Alignment = alBottomLeft
      ButtonCaption2Alignment = alBottomRight
      BoxCaption1Alignment = alTopCenter
      BoxCaption2Alignment = alBottomCenter
      OnOff = False
      Down = False
      Redraw = True
      UseHighLightColor = False
      TabOrder = 7
      TabStop = True
      ColorBevel = True
      OnClick = StartButtonClick
    end
  end
  object Panel3: TJvPanel
    Left = 409
    Top = 24
    Width = 376
    Height = 57
    HotColor = clBlack
    MultiLine = False
    Color = clBlack
    TabOrder = 3
    object TimeLabel1: TTimeLabel
      Left = 2
      Top = 2
      Width = 115
      Height = 37
      ConnectTo = TimeLabel2
      Time = 0
      ShowMSec = False
      ShowHours = False
      ShowMinutes = True
      ShowZeros = True
      IsMSec = False
      Minus = True
      AutoSize = False
      Caption = '-00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -40
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object TimeLabel2: TTimeLabel
      Left = 118
      Top = 18
      Width = 20
      Height = 21
      Time = 0
      ShowMSec = False
      ShowHours = False
      ShowMinutes = True
      ShowZeros = True
      IsMSec = True
      Minus = False
      AutoSize = False
      Caption = '.0'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object TimeLabel3: TTimeLabel
      Left = 148
      Top = 17
      Width = 54
      Height = 24
      ConnectTo = TimeLabel4
      Time = 0
      ShowMSec = False
      ShowHours = False
      ShowMinutes = True
      ShowZeros = True
      IsMSec = False
      Minus = False
      Caption = '00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TimeLabel4: TTimeLabel
      Left = 203
      Top = 25
      Width = 9
      Height = 14
      Time = 0
      ShowMSec = False
      ShowHours = False
      ShowMinutes = True
      ShowZeros = True
      IsMSec = True
      Minus = False
      Caption = '.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label18: TLabel
      Left = 148
      Top = 5
      Width = 42
      Height = 13
      Caption = 'Play time'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TimeLabel5: TTimeLabel
      Left = 220
      Top = 17
      Width = 61
      Height = 24
      ConnectTo = TimeLabel6
      Time = 0
      ShowMSec = False
      ShowHours = False
      ShowMinutes = True
      ShowZeros = True
      IsMSec = False
      Minus = True
      Caption = '-00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object TimeLabel6: TTimeLabel
      Left = 282
      Top = 25
      Width = 9
      Height = 14
      Time = 0
      ShowMSec = False
      ShowHours = False
      ShowMinutes = True
      ShowZeros = True
      IsMSec = True
      Minus = False
      Caption = '.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label19: TLabel
      Left = 223
      Top = 5
      Width = 50
      Height = 13
      Caption = 'Listed time'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EndTimeLabel: TLabel
      Left = 308
      Top = 18
      Width = 61
      Height = 21
      AutoSize = False
      Caption = '00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 308
      Top = 5
      Width = 45
      Height = 13
      Caption = 'End Time'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Progress1: TJvProgressBar
      Left = 8
      Top = 44
      Width = 361
      Height = 10
      TabOrder = 0
      FillColor = clRed
    end
  end
  object SpinButton3: TSpinButton
    Left = 476
    Top = 230
    Width = 57
    Height = 85
    DownGlyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333393333
      333333333337F3333333333333397333333333333337FF333333333333C94333
      3333333333737F333333333333C9473333333333337373F3333333333CC94433
      3333333337F7F7F3333333333CC94473333333333737F73F33333333CCC94443
      333333337F37F37F33333333CCC94447333333337337F373F333333CCCC94444
      33333337F337F337F333333CCCC94444733333373337F3373F3333CCCCC94444
      4333337F3337FF337F3333CCCCC94444473333733F7773FF73F33CCCCC393444
      443337F37737F773F7F33CCC33393374447337F73337F33737FFCCC333393333
      444377733337F333777FC3333339333337437333333733333373}
    DownNumGlyphs = 2
    TabOrder = 4
    UpGlyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003C3333339333
      337437FFF3337F3333F73CCC33339333344437773F337F33377733CCC3339337
      4447337F73FF7F3F337F33CCCCC3934444433373F7737F773373333CCCCC9444
      44733337F337773337F3333CCCCC9444443333373F337F3337333333CCCC9444
      473333337F337F337F333333CCCC94444333333373F37F33733333333CCC9444
      7333333337F37F37F33333333CCC944433333333373F7F373333333333CC9447
      33333333337F7F7F3333333333CC94433333333333737F7333333333333C9473
      33333333333737F333333333333C943333333333333737333333333333339733
      3333333333337F33333333333333933333333333333373333333}
    UpNumGlyphs = 2
    OnDownClick = SpinButton3DownClick
    OnUpClick = SpinButton3UpClick
  end
  object PageControl1: TPageControl
    Left = 409
    Top = 82
    Width = 380
    Height = 143
    ActivePage = OnAirTab
    HotTrack = True
    Images = TypesImageList
    TabOrder = 5
    TabWidth = 94
    object OnAirTab: TTabSheet
      BorderWidth = 2
      Caption = 'On Air'
      ImageIndex = 14
      object Panel2: TJvPanel
        Left = 0
        Top = 0
        Width = 368
        Height = 110
        MultiLine = False
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        BorderWidth = 2
        Caption = 'Panel2'
        TabOrder = 0
        object Header1: THeader
          Left = 4
          Top = 4
          Width = 360
          Height = 9
          Align = alTop
          AllowResize = False
          Sections.Sections = (
            #0'20'#0
            #0'15'#0
            #0'263'#0
            #0'8'#0)
          TabOrder = 0
          Visible = False
          OnSized = Header1Sized
        end
        object MainPrgList: TListBox
          Left = 4
          Top = 13
          Width = 360
          Height = 93
          Style = lbOwnerDrawFixed
          Align = alClient
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 1
          OnDrawItem = MainPrgListDrawItem
        end
      end
    end
    object SelectedTab: TTabSheet
      BorderWidth = 2
      Caption = 'Selected'
      ImageIndex = 4
      object SelectedListBox: TListBox
        Left = 0
        Top = 0
        Width = 321
        Height = 110
        Align = alLeft
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
      end
      object SpinButton2: TSpinButton
        Left = 324
        Top = 2
        Width = 43
        Height = 57
        DownGlyph.Data = {
          DE000000424DDE00000000000000360000002800000009000000060000000100
          180000000000A800000000000000000000000000000000000000008080008080
          0080800080800080800080800080800080800080800000808000808000808000
          8080000000008080008080008080008080000080800080800080800000000000
          0000000000808000808000808000008080008080000000000000000000000000
          0000000080800080800000808000000000000000000000000000000000000000
          0000008080000080800080800080800080800080800080800080800080800080
          8000}
        TabOrder = 1
        UpGlyph.Data = {
          DE000000424DDE00000000000000360000002800000009000000060000000100
          180000000000A800000000000000000000000000000000000000008080008080
          0080800080800080800080800080800080800080800000808000000000000000
          0000000000000000000000000000008080000080800080800000000000000000
          0000000000000000808000808000008080008080008080000000000000000000
          0080800080800080800000808000808000808000808000000000808000808000
          8080008080000080800080800080800080800080800080800080800080800080
          8000}
        OnDownClick = SpinButton2DownClick
        OnUpClick = SpinButton2UpClick
      end
      object DeleteBtn: TBitBtn
        Left = 324
        Top = 66
        Width = 44
        Height = 25
        TabOrder = 2
        OnClick = DeleteBtnClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
          03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
          33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
          0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
          3333333337FFF7F3333333333000003333333333377777333333}
        NumGlyphs = 2
      end
    end
    object SpotsTab: TTabSheet
      Caption = 'Advertisement'
      ImageIndex = 2
      object Panel4: TJvPanel
        Left = 0
        Top = 0
        Width = 372
        Height = 114
        MultiLine = False
        Align = alClient
        BevelInner = bvLowered
        Caption = 'Panel4'
        TabOrder = 0
        object HeaderControl1: THeaderControl
          Left = 2
          Top = 2
          Width = 368
          Height = 15
          Sections = <
            item
              ImageIndex = -1
              Text = #919#956'. '#911#961#945
              Width = 60
            end
            item
              AutoSize = True
              ImageIndex = -1
              Text = #916#953#945#966#942#956#953#963#951
              Width = 154
            end
            item
              AutoSize = True
              ImageIndex = -1
              Text = #913#961#967#949#943#959' '#963#964#959' '#948#943#963#954#959
              Width = 154
            end>
          Style = hsFlat
          OnSectionResize = HeaderControl1SectionResize
        end
        object SpotsList1: TListBox
          Left = 2
          Top = 17
          Width = 368
          Height = 95
          Style = lbOwnerDrawFixed
          Align = alClient
          ItemHeight = 13
          TabOrder = 1
          OnDrawItem = SpotsList1DrawItem
        end
      end
    end
    object InfoTab: TTabSheet
      Caption = 'Info'
      ImageIndex = 10
      object PrgInfoPanel1: TJvPanel
        Left = 0
        Top = 0
        Width = 372
        Height = 114
        MultiLine = False
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object PrgInfoLabel: TLabel
          Left = 2
          Top = 2
          Width = 3
          Height = 13
          Align = alClient
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
      end
    end
  end
  object Panel13: TJvPanel
    Left = 724
    Top = 230
    Width = 65
    Height = 86
    MultiLine = False
    TabOrder = 6
    object LiveButton: TMultibutton
      Left = 4
      Top = 43
      Width = 57
      Height = 40
      BoxCaption1 = 'Live'
      BoxCaption1Color = clYellow
      BoxCaption2 = ' '
      BoxCaption2Color = clAqua
      ButtonCaption1 = ' '
      Caption1Color = clBlack
      ButtonCaption2 = 'F11'
      Caption2Color = clGreen
      BoxAlignment = alTopCenter
      BevelSize = 3
      ButtonColor = clSilver
      BoxColor = clRed
      ShowBox = True
      BoxHeight = 20
      ButtonCaption1Alignment = alBottomLeft
      ButtonCaption2Alignment = alBottomRight
      BoxCaption1Alignment = alMiddleCenter
      BoxCaption2Alignment = alBottomRight
      OnOff = True
      Down = False
      Redraw = True
      UseHighLightColor = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TabOrder = 0
      TabStop = True
      ColorBevel = True
      OnClick = LiveButtonClick
    end
    object AutoButton: TMultibutton
      Left = 4
      Top = 2
      Width = 57
      Height = 40
      BoxCaption1 = 'Auto'
      BoxCaption1Color = clYellow
      BoxCaption2 = ' '
      BoxCaption2Color = clAqua
      ButtonCaption1 = ' '
      Caption1Color = clBlack
      ButtonCaption2 = 'F12'
      Caption2Color = clGreen
      BoxAlignment = alTopCenter
      BevelSize = 3
      ButtonColor = clSilver
      BoxColor = clRed
      ShowBox = True
      BoxHeight = 20
      ButtonCaption1Alignment = alBottomLeft
      ButtonCaption2Alignment = alBottomRight
      BoxCaption1Alignment = alMiddleCenter
      BoxCaption2Alignment = alBottomCenter
      OnOff = True
      Down = False
      Redraw = True
      UseHighLightColor = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TabOrder = 1
      TabStop = True
      ColorBevel = True
      OnClick = AutoButtonClick
    end
  end
  object Panel14: TJvPanel
    Left = 548
    Top = 230
    Width = 173
    Height = 86
    MultiLine = False
    TabOrder = 7
    object PlayNextButton: TSpeedButton
      Left = 4
      Top = 3
      Width = 80
      Height = 80
      AllowAllUp = True
      GroupIndex = 1
      Caption = 'F9'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        B61A0000424DB61A0000000000007600000028000000E00000003C0000000100
        040000000000401A0000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333003333
        3333333333333333333333333333333333333333333333333333339999999933
        3333333333333333333333333333333333333333333333999999993333333333
        3333333333333333333333333333333330033333333333333333333333333333
        3333333333333333333333333300003333333333333333333333333333333333
        3333333333333333333999999999999993333333333333333333333333333333
        3333333333399999999999999333333333333333333333333333333333333333
        30000333333333333333333333333333333333333333333333333333330CC003
        3333333333333333333333333333333333333333333333333999999FFFFFF999
        99933333333333333333333333333333333333333999999FFFFFF99999933333
        3333333333333333333333333333333330CC0033333333333333333333333333
        333333333333333333333333330CCC0033333333333333333333333333333333
        33333333333333339999FFFFFFFFFFFF99993333333333333333333333333333
        333333339999FFFFFFFFFFFF9999333333333333333333333333333333333333
        30CCC003333333333333333333333333333333333333333333333333330CCCC0
        00333333333333333333333333333333333333333333339999FFFFFFFFFFFFFF
        FF9999333333333333333333333333333333339999FFFFFFFFFFFFFFFF999933
        3333333333333333333333333333333330CCCC00033333333333333333333333
        333333333333333333333333330CCCCCC0033333333333333333333333333333
        33333333333339999FFFFFFFFFFFFFFFFFF99993333333333333333333333333
        333339999FFFFFFFFFFFFFFFFFF9999333333333333333333333333333333333
        30CCCCCC003333333333333333333333333333333333333333333333330CCCCC
        CC003333333333333333333333333333333333333333399FFFFFFFFFFFFFFFFF
        FFFF99933333333333333333333333333333399FFFFFFFFFFFFFFFFFFFFF9993
        3333333333333333333333333333333330CCCCCCC00333333333333333333333
        333333333333333333333333330CCCCCCCC00333333333333333333333333333
        333333333333999FFFFFFFFFFFFFFFFFFFFFF999333333333333333333333333
        3333999FFFFFFFFFFFFFFFFFFFFFF99933333333333333333333333333333333
        30CCCCCCCC0033333333333333333333333333333333333333333333330CCCCC
        CCCC000333333333333333333333333333333333333999FFFFFFFFFFFFFFFFFF
        FFFFFF99933333333333333333333333333999FFFFFFFFFFFFFFFFFFFFFFFF99
        9333333333333333333333333333333330CCCCCCCCC000333333333333333333
        333333333333333333333333330CCCCCCCCCCC00333333333333333333333333
        3333333333399FFFFFFFFFFFFFFFFFFFFFFFFFF9933333333333333333333333
        33399FFFFFFFFFFFFFFFFFFFFFFFFFF993333333333333333333333333333333
        30CCCCCCCCCCC0033333333333333333333333333333333333333333330CCCCC
        CCCCCCC00333333333333333333333333333333333999FFFFFFFFFFFFFFFFFFF
        FFFFFFF999333333333333333333333333999FFFFFFFFFFFFFFFFFFFFFFFFFF9
        9933333333333333333333333333333330CCCCCCCCCCCC003333333333333333
        333333333333333333333333330CCCCCCCCCCCCC003333333333333333333333
        333333333399FFFFFFFFFFFFFFFFFFFFFFFFFFFF993333333333333333333333
        3399FFFFFFFFFFFFFFFFFFFFFFFFFFFF99333333333333333333333333333333
        30CCCCCCCCCCCCC00333333333333333333333333333333333333333330CCCCC
        CCCCCCCCC00033333333333333333333333333333399F00000FFF00FFF000000
        F00FFFFF9933333333333333333333333399F00000FFF00FFF000000F00FFFFF
        9933333333333333333333333333333330CCCCCCCCCCCCCC0003333333333333
        333333333333333333333333330CCCCCCCCCCCCCCCC003333333333333333333
        333333333999F00000FFF00FFF000000F00FFFFF999333333333333333333333
        3999F00000FFF00FFF000000F00FFFFF99933333333333333333333333333333
        30CCCCCCCCCCCCCCCC00333333333333333333333333333333333333330CCCCC
        CCCCCCCCCCCC0033333333333333333333333333399FFFFF00FFF00FFF00FF00
        F00FFFFFF99333333333333333333333399FFFFF00FFF00FFF00FF00F00FFFFF
        F993333333333333333333333333333330CCCCCCCCCCCCCCCCC0033333333333
        333333333333333333333333330CFCCCFFCFCFCCFCCCC0003333333333333333
        33333333399FFFFF00FFF00FFF00FF00F00FFFFFF99333333333333333333333
        399FFFFF00FFF00FFF00FF00F00FFFFFF9933333333333333333333333333333
        30CFCCCFFCFCFCCFCCCC000333333333333333333333333333333333330CFCCC
        FCCFCFCCFCCCCCC0033333333333333333333333399FF00000FFF00FFF00FF00
        F000000FF99333333333333333333333399FF00000FFF00FFF00FF00F000000F
        F993333333333333333333333333333330CFCCCFCCFCFCCFCCCCCC0033333333
        333333333333333333333333330CFFFCFCCFFFCFFFCCCCCCEE33333333333333
        33333333399FF00000FFF00FFF00FF00F000000FF99333333333333333333333
        399FF00000FFF00FFF00FF00F000000FF9933333333333333333333333333333
        30CFFFCFCCFFFCFFFCCCCCCEE3333333333333333333333333333333330CFCFC
        FCCFCFCFCFCCCCCEE33333333333333333333333399FF00FFFFFF00FFF00FF00
        F00FF00FF99333333333333333333333399FF00FFFFFF00FFF00FF00F00FF00F
        F993333333333333333333333333333330CFCFCFCCFCFCFCFCCCCCEE33333333
        333333333333333333333333330CFFFCFCCFFFCFCFCCCEEE3333333333333333
        33333333399FF00FFFFFF00FFF00FF00F00FF00FF99333333333333333333333
        399FF00FFFFFF00FFF00FF00F00FF00FF9933333333333333333333333333333
        30CFFFCFCCFFFCFCFCCCEEE333333333333333333333333333333333330CCCCC
        CCCCCCCCCCCCEE333333333333333333333333333999F00000F000000F000000
        F000000F9993333333333333333333333999F00000F000000F000000F000000F
        9993333333333333333333333333333330CCCCCCCCCCCCCCCCCEE33333333333
        333333333333333333333333330CCCCCCCCCCCCCCCCEE3333333333333333333
        333333333399F00000F000000F000000F000000F993333333333333333333333
        3399F00000F000000F000000F000000F99333333333333333333333333333333
        30CCCCCCCCCCCCCCCCEE333333333333333333333333333333333333330CCCCC
        CCCCCCCCCCEE33333333300333333333333333333399FFFFFFFFFFFFFFFFFFFF
        FFFFFFFF9933300333333333333333333399FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9933300333333333333333333333333330CCCCCCCCCCCCCCCEE3333333333003
        333333333333333333333333330CCCCCCCCCCCCCCE3333333333300003333333
        3333333333999FFFFFFFFFFFFFFFFFFFFFFFFFF9993330000333333333333333
        33999FFFFFFFFFFFFFFFFFFFFFFFFFF999333000033333333333333333333333
        30CCCCCCCCCCCCCCE333333333333000033333333333333333333333330CCCCC
        CCCCCCCEE3333333333330CC003333333333333333399FFFFFFFFFFFFFFFFFFF
        FFFFFFF9933330CC003333333333333333399FFFFFFFFFFFFFFFFFFFFFFFFFF9
        933330CC00333333333333333333333330CCCCCCCCCCCCEE33333333333330CC
        003333333333333333333333330CCCCCCCCCCCEE33333333333330CCC0033333
        3333333333399FFFFFFFFFFFFFFFFFFFFFFFFF99933330CCC003333333333333
        33399FFFFFFFFFFFFFFFFFFFFFFFFF99933330CCC00333333333333333333333
        30CCCCCCCCCCCEE333333333333330CCC00333333333333333333333330CCCCC
        CCCCEEE333333333333330CCCC00033333333333333399FFFFFFFFFFFFFFFFFF
        FFFFF999333330CCCC00033333333333333399FFFFFFFFFFFFFFFFFFFFFFF999
        333330CCCC000333333333333333333330CCCCCCCCCEEE3333333333333330CC
        CC0003333333333333333333330CCCCCCCCEE33333333333333330CCCCCC0033
        333333333333399FFFFFFFFFFFFFFFFFFFFFF993333330CCCCCC003333333333
        3333399FFFFFFFFFFFFFFFFFFFFFF993333330CCCCCC00333333333333333333
        30CCCCCCCCEE333333333333333330CCCCCC00333333333333333333330CCCCC
        CCEE333333333333333330CCCCCCC0033333333333333999FFFFFFFFFFFFFFFF
        FFFF9993333330CCCCCCC0033333333333333999FFFFFFFFFFFFFFFFFFFF9993
        333330CCCCCCC003333333333333333330CCCCCCCEE3333333333333333330CC
        CCCCC0033333333333333333330CCCCCCEE3333333333333333330CCCCCCCC00
        333333333333339999FFFFFFFFFFFFFFFFF99933333330CCCCCCCC0033333333
        3333339999FFFFFFFFFFFFFFFFF99933333330CCCCCCCC003333333333333333
        30CCCCCCEE33333333333333333330CCCCCCCC003333333333333333330CCCCE
        EE33333333333333333330CCCCCCCCC00033333333333333999FFFFFFFFFFFFF
        F9993333333330CCCCCCCCC00033333333333333999FFFFFFFFFFFFFF9993333
        333330CCCCCCCCC0003333333333333330CCCCEEE333333333333333333330CC
        CCCCCCC00033333333333333330CCCEE3333333333333333333330CCCCCCCCCC
        C00333333333333339999FFFFFFFF99999933333333330CCCCCCCCCCC0033333
        3333333339999FFFFFFFF99999933333333330CCCCCCCCCCC003333333333333
        30CCCEE33333333333333333333330CCCCCCCCCCC003333333333333330CCEE3
        3333333333333333333330CCCCCCCCCCCC003333333333333339999999999999
        93333333333330CCCCCCCCCCCC00333333333333333999999999999993333333
        333330CCCCCCCCCCCC0033333333333330CCEE333333333333333333333330CC
        CCCCCCCCCC00333333333333330CEE333333333333333333333330CCCCCCCCCC
        CCC0033333333333333333999999993333333333333330CCCCCCCCCCCCC00333
        33333333333333999999993333333333333330CCCCCCCCCCCCC0033333333333
        30CEE3333333333333333333333330CCCCCCCCCCCCC003333333333333EE3333
        3333333333333333333330CCCCCCCCCCCCCC0003333333333333333333333333
        33333333333330CCCCCCCCCCCCCC000333333333333333333333333333333333
        333330CCCCCCCCCCCCCC0003333333333EE333333333333333333333333330CC
        CCCCCCCCCCCC000333333333333333333333333333333333333330CCCCCCCCCC
        CCCCCC0033333333333333333333333333333333333330CCCCCCCCCCCCCCCC00
        33333333333333333333333333333333333330CCCCCCCCCCCCCCCC0033333333
        333333333333333333333333333330CCCCCCCCCCCCCCCC003333333333333333
        3333333333333333333330CCCCCCCCCCCCCCCCC0033333333333333333333333
        33333333333330CCCCCCCCCCCCCCCCC003333333333333333333333333333333
        333330CCCCCCCCCCCCCCCCC003333333333333333333333333333333333330CC
        CCCCCCCCCCCCCCC003333333333333333333333333333333333330CFCCCFFCFC
        FCCFCCCC00033333333333333333333333333333333330CFCCCFFCFCFCCFCCCC
        00033333333333333333333333333333333330CFCCCFFCFCFCCFCCCC00033333
        333333333333333333333333333330CFCCCFFCFCFCCFCCCC0003333333333333
        3333333333333333333330CFCCCFCCFCFCCFCCCCCC0033333333333333333233
        33333333333330CFCCCFCCFCFCCFCCCCCC003333333333333333323333333333
        333330CFCCCFCCFCFCCFCCCCCC003333333333333333323333333333333330CF
        CCCFCCFCFCCFCCCCCC003333333333333333323333333333333330CFFFCFCCFF
        FCFFFCCCCCCEE3333333333333332A2333333333333330CFFFCFCCFFFCFFFCCC
        CCCEE3333333333333332A2333333333333330CFFFCFCCFFFCFFFCCCCCCEE333
        3333333333332A2333333333333330CFFFCFCCFFFCFFFCCCCCCEE33333333333
        33332A2333333333333330CFCFCFCCFCFCFCFCCCCCEE3333333333333332AAA2
        33333333333330CFCFCFCCFCFCFCFCCCCCEE3333333333333332AAA233333333
        333330CFCFCFCCFCFCFCFCCCCCEE3333333333333332AAA233333333333330CF
        CFCFCCFCFCFCFCCCCCEE3333333333333332AAA233333333333330CFFFCFCCFF
        FCFCFCCCEEE3333333333333332AAAAA23333333333330CFFFCFCCFFFCFCFCCC
        EEE3333333333333332AAAAA23333333333330CFFFCFCCFFFCFCFCCCEEE33333
        33333333332AAAAA23333333333330CFFFCFCCFFFCFCFCCCEEE3333333333333
        332AAAAA23333333333330CCCCCCCCCCCCCCCCCEE33333333333333332AAAAAA
        A2333333333330CCCCCCCCCCCCCCCCCEE33333333333333332AAAAAAA2333333
        333330CCCCCCCCCCCCCCCCCEE33333333333333332AAAAAAA2333333333330CC
        CCCCCCCCCCCCCCCEE33333333333333332AAAAAAA2333333333330CCCCCCCCCC
        CCCCCCEE33333333333333332AAAAAAAAA233333333330CCCCCCCCCCCCCCCCEE
        33333333333333332AAAAAAAAA233333333330CCCCCCCCCCCCCCCCEE33333333
        333333332AAAAAAAAA233333333330CCCCCCCCCCCCCCCCEE3333333333333333
        2AAAAAAAAA233333333330CCCCCCCCCCCCCCCEE3333333333333333BBB2AAAAA
        BBBB3333333330CCCCCCCCCCCCCCCEE3333333333333333BBB2AAAAABBBB3333
        333330CCCCCCCCCCCCCCCEE3333333333333333BBB2AAAAABBBB3333333330CC
        CCCCCCCCCCCCCEE3333333333333333BBB2AAAAABBBB3333333330CCCCCCCCCC
        CCCCE3333333333333333333332AAAAAB3333333333330CCCCCCCCCCCCCCE333
        3333333333333333332AAAAAB3333333333330CCCCCCCCCCCCCCE33333333333
        33333333332AAAAAB3333333333330CCCCCCCCCCCCCCE3333333333333333333
        332AAAAAB3333333333330CCCCCCCCCCCCEE33333333333333333333332AAAAA
        B3333333333330CCCCCCCCCCCCEE33333333333333333333332AAAAAB3333333
        333330CCCCCCCCCCCCEE33333333333333333333332AAAAAB3333333333330CC
        CCCCCCCCCCEE33333333333333333333332AAAAAB3333333333330CCCCCCCCCC
        CEE333333333333333333333332AAAAAB3333333333330CCCCCCCCCCCEE33333
        3333333333333333332AAAAAB3333333333330CCCCCCCCCCCEE3333333333333
        33333333332AAAAAB3333333333330CCCCCCCCCCCEE333333333333333333333
        332AAAAAB3333333333330CCCCCCCCCEEE3333333332222222222222222AAAAA
        B3333333333330CCCCCCCCCEEE3333333332222222222222222AAAAAB3333333
        333330CCCCCCCCCEEE3333333332222222222222222AAAAAB3333333333330CC
        CCCCCCCEEE3333333332222222222222222AAAAAB3333333333330CCCCCCCCEE
        333333333332AAAAAAAAAAAAAAAAAAAAB3333333333330CCCCCCCCEE33333333
        3332AAAAAAAAAAAAAAAAAAAAB3333333333330CCCCCCCCEE333333333332AAAA
        AAAAAAAAAAAAAAAAB3333333333330CCCCCCCCEE333333333332AAAAAAAAAAAA
        AAAAAAAAB3333333333330CCCCCCCEE3333333333332AAAAAAAAAAAAAAAAAAAA
        B3333333333330CCCCCCCEE3333333333332AAAAAAAAAAAAAAAAAAAAB3333333
        333330CCCCCCCEE3333333333332AAAAAAAAAAAAAAAAAAAAB3333333333330CC
        CCCCCEE3333333333332AAAAAAAAAAAAAAAAAAAAB3333333333330CCCCCCEE33
        333333333332AAAAAAAAAAAAAAAAAAAAB3333333333330CCCCCCEE3333333333
        3332AAAAAAAAAAAAAAAAAAAAB3333333333330CCCCCCEE33333333333332AAAA
        AAAAAAAAAAAAAAAAB3333333333330CCCCCCEE33333333333332AAAAAAAAAAAA
        AAAAAAAAB3333333333330CCCCEEE333333333333332AAAAAAAAAAAAAAAAAAAA
        B3333333333330CCCCEEE333333333333332AAAAAAAAAAAAAAAAAAAAB3333333
        333330CCCCEEE333333333333332AAAAAAAAAAAAAAAAAAAAB3333333333330CC
        CCEEE333333333333332AAAAAAAAAAAAAAAAAAAAB3333333333330CCCEE33333
        33333333333BBBBBBBBBBBBBBBBBBBBBB3333333333330CCCEE3333333333333
        333BBBBBBBBBBBBBBBBBBBBBB3333333333330CCCEE3333333333333333BBBBB
        BBBBBBBBBBBBBBBBB3333333333330CCCEE3333333333333333BBBBBBBBBBBBB
        BBBBBBBBB3333333333330CCEE33333333333333333333333333333333333333
        33333333333330CCEE3333333333333333333333333333333333333333333333
        333330CCEE3333333333333333333333333333333333333333333333333330CC
        EE3333333333333333333333333333333333333333333333333330CEE3333333
        3333333333333333333333333333333333333333333330CEE333333333333333
        33333333333333333333333333333333333330CEE33333333333333333333333
        333333333333333333333333333330CEE3333333333333333333333333333333
        333333333333333333333EE33333333333333333333333333333333333333333
        3333333333333EE3333333333333333333333333333333333333333333333333
        33333EE333333333333333333333333333333333333333333333333333333EE3
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 4
      ParentFont = False
      OnClick = PlayNextButton1Click
    end
    object AutoMixButton: TSpeedButton
      Left = 88
      Top = 3
      Width = 80
      Height = 80
      AllowAllUp = True
      GroupIndex = 2
      Caption = 'F10'
      Flat = True
      Glyph.Data = {
        B61A0000424DB61A0000000000007600000028000000E00000003C0000000100
        040000000000401A0000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333333F7777777777777777777777777773333
        333333333333333333333333F777777777777777777777777777333333333333
        3333333333333333F77777777777777777777777777733333333333333333333
        33333333F7777777777777777777777777773333333333333333333333333333
        FEEEEEEEEEEEEEEEEEEEEEEEEEE73333333333333333333333333333FEEEEEEE
        EEEEEEEEEEEEEEEEEEE73333333333333333333333333333FEEEEEEEEEEEEEEE
        EEEEEEEEEEE73333333333333333333333333333FEEEEEEEEEEEEEEEEEEEEEEE
        EEE73333333333333333333337333333FEEEEEEEEE00000000EEEEEEEEE73333
        333333333333333337333333FEEEEEEEEE00000000EEEEEEEEE7333333333333
        3333333337333333FEEEEEEEEE00000000EEEEEEEEE733333333333333333333
        37333333FEEEEEEEEE00000000EEEEEEEEE733333333333333333333F4733333
        FEEEEEEE00BBBBBBBB00EEEEEEE733333D33333333333333F4733333FEEEEEEE
        00BBBBBBBB00EEEEEEE733333D33333333333333F4733333FEEEEEEE00BBBBBB
        BB00EEEEEEE733333D33333333333333F4733333FEEEEEEE00BBBBBBBB00EEEE
        EEE733333D3333333333333F44473333FEEEEEE0BBBBBBBBBBBB0EEEEEE73333
        DDD333333333333F44473333FEEEEEE0BBBBBBBBBBBB0EEEEEE73333DDD33333
        3333333F44473333FEEEEEE0BBBBBBBBBBBB0EEEEEE73333DDD333333333333F
        44473333FEEEEEE0BBBBBBBBBBBB0EEEEEE73333DDD33333333333F444447333
        FEEEEE0BBBBBBBBBBBBBB0EEEEE7333DDDDD3333333333F444447333FEEEEE0B
        BBBBBBBBBBBBB0EEEEE7333DDDDD3333333333F444447333FEEEEE0BBBBBBBBB
        BBBBB0EEEEE7333DDDDD3333333333F444447333FEEEEE0BBBBBBBBBBBBBB0EE
        EEE7333DDDDD333333333F4444444733FEEEE0BBBBBBBBBBBBBBBB0EEEE733DD
        D3DDD33333333F4444444733FEEEE0BBBBBBBBBBBBBBBB0EEEE733DDD3DDD333
        33333F4444444733FEEEE0BBBBBBBBBBBBBBBB0EEEE733DDD3DDD33333333F44
        44444733FEEEE0BBBBBBBBBBBBBBBB0EEEE733DDD3DDD3333333FFFF4447FFF3
        FEEE0BBBBBBBBBBBBBBBBBB0EEE733DD333DDD333333FFFF4447FFF3FEEE0BBB
        BBBBBBBBBBBBBBB0EEE733DD333DDD333333FFFF4447FFF3FEEE0BBBBBBBBBBB
        BBBBBBB0EEE733DD333DDD333333FFFF4447FFF3FEEE0BBBBBBBBBBBBBBBBBB0
        EEE733DD333DDD333333333F44473333FEE0BBBBBBB000000BBBBBBB0EE733D3
        3333DDD33333333F44473333FEE0BBBBBBB000000BBBBBBB0EE733D33333DDD3
        3333333F44473333FEE0BBBBBBB000000BBBBBBB0EE733D33333DDD33333333F
        44473333FEE0BBBBBBB000000BBBBBBB0EE733D33333DDD33333333F44473333
        FEE0BBBBBB00000000BBBBBB0EE7333333333DDD3333333F44473333FEE0BBBB
        BB00000000BBBBBB0EE7333333333DDD3333333F44473333FEE0BBBBBB000000
        00BBBBBB0EE7333333333DDD3333333F44473333FEE0BBBBBB00000000BBBBBB
        0EE7333333333DDD3333333F44473333FE0BBBBBB00BBBBBB00BBBBBB0E73333
        333333DDD333333F44473333FE0BBBBBB00BBBBBB00BBBBBB0E73333333333DD
        D333333F44473333FE0BBBBBB00BBBBBB00BBBBBB0E73333333333DDD333333F
        44473333FE0BBBBBB00BBBBBB00BBBBBB0E73333333333DDD333333F44473333
        FE0BBBBBB0BBBBBBBB0BBBBBB0E733333333333DD333333F44473333FE0BBBBB
        B0BBBBBBBB0BBBBBB0E733333333333DD333333F44473333FE0BBBBBB0BBBBBB
        BB0BBBBBB0E733333333333DD333333F44473333FE0BBBBBB0BBBBBBBB0BBBBB
        B0E733333333333DD333333F44473333FE0BBBBBBBBBB00BBBBBBBBBB0E73333
        333333333333333F44473333FE0BBBBBBBBBB00BBBBBBBBBB0E7333333333333
        3333333F44473333FE0BBBBBBBBBB00BBBBBBBBBB0E73333333333333333333F
        44473333FE0BBBBBBBBBB00BBBBBBBBBB0E73333333333333333333F44473333
        FE0BBBBBBBBBB00BBBBBBBBBB0E73333333333333333333F44473333FE0BBBBB
        BBBBB00BBBBBBBBBB0E73333333333333333333F44473333FE0BBBBBBBBBB00B
        BBBBBBBBB0E73333333333333333333F44473333FE0BBBBBBBBBB00BBBBBBBBB
        B0E73333333333333333333F44473333FE0BBBBBBBBBB00BBBBBBBBBB0E73333
        333333333333333F44473333FE0BBBBBBBBBB00BBBBBBBBBB0E7333333333333
        3333333F44473333FE0BBBBBBBBBB00BBBBBBBBBB0E73333333333333333333F
        44473333FE0BBBBBBBBBB00BBBBBBBBBB0E73333333333333333333F44473333
        FE0BBBBBBBBBB00BBBBBBBBBB0E73333333333333333333F44473333FE0BBBBB
        BBBBB00BBBBBBBBBB0E73333333333333333333F44473333FE0BBBBBBBBBB00B
        BBBBBBBBB0E73333333333333333333F44473333FE0BBBBBBBBBB00BBBBBBBBB
        B0E73333333333333333333F44473333FE0BBBBB000BBBBBB000BBBBB0E73333
        333333333333333F44473333FE0BBBBB000BBBBBB000BBBBB0E7333333333333
        3333333F44473333FE0BBBBB000BBBBBB000BBBBB0E73333333333333333333F
        44473333FE0BBBBB000BBBBBB000BBBBB0E73333333333333333333F44473333
        FE0BBBBB000BBBBBB000BBBBB0E73333333333333333333F44473333FE0BBBBB
        000BBBBBB000BBBBB0E73333333333333333333F44473333FE0BBBBB000BBBBB
        B000BBBBB0E73333333333333333333F44473333FE0BBBBB000BBBBBB000BBBB
        B0E73333333333333333333F44473333FEE0BBBB000BBBBBB000BBBB0EE7333C
        CCCCC3333333333F44473333FEE0BBBB000BBBBBB000BBBB0EE7333CCCCCC333
        3333333F44473333FEE0BBBB000BBBBBB000BBBB0EE7333CCCCCC3333333333F
        44473333FEE0BBBB000BBBBBB000BBBB0EE7333CCCCCC3333333333F44473333
        FEE0BBBBBBBBBBBBBBBBBBBB0EE7333CCCCC33333333333F44473333FEE0BBBB
        BBBBBBBBBBBBBBBB0EE7333CCCCC33333333333F44473333FEE0BBBBBBBBBBBB
        BBBBBBBB0EE7333CCCCC33333333333F44473333FEE0BBBBBBBBBBBBBBBBBBBB
        0EE7333CCCCC33333333333F44473333FEEE0BBBBBBBBBBBBBBBBBB0EEE7333C
        CCC333333333333F44473333FEEE0BBBBBBBBBBBBBBBBBB0EEE7333CCCC33333
        3333333F44473333FEEE0BBBBBBBBBBBBBBBBBB0EEE7333CCCC333333333333F
        44473333FEEE0BBBBBBBBBBBBBBBBBB0EEE7333CCCC333333333333F44473333
        FEEEE0BBBBBBBBBBBBBBBB0EEEE7333CCCCC33333333333F44473333FEEEE0BB
        BBBBBBBBBBBBBB0EEEE7333CCCCC33333333333F44473333FEEEE0BBBBBBBBBB
        BBBBBB0EEEE7333CCCCC33333333333F44473333FEEEE0BBBBBBBBBBBBBBBB0E
        EEE7333CCCCC33333333333F44473333FEEEEE0BBBBBBBBBBBBBB0EEEEE7333C
        C3CCC3333333333F44473333FEEEEE0BBBBBBBBBBBBBB0EEEEE7333CC3CCC333
        3333333F44473333FEEEEE0BBBBBBBBBBBBBB0EEEEE7333CC3CCC3333333333F
        44473333FEEEEE0BBBBBBBBBBBBBB0EEEEE7333CC3CCC3333333333F44473333
        FEEEEEE0BBBBBBBBBBBB0EEEEEE7333C333CCC333333333F44473333FEEEEEE0
        BBBBBBBBBBBB0EEEEEE7333C333CCC333333333F44473333FEEEEEE0BBBBBBBB
        BBBB0EEEEEE7333C333CCC333333333F44473333FEEEEEE0BBBBBBBBBBBB0EEE
        EEE7333C333CCC333333333F44473333FEEEEEEE00BBBBBBBB00EEEEEEE73333
        3333CCC33333333F44473333FEEEEEEE00BBBBBBBB00EEEEEEE733333333CCC3
        3333333F44473333FEEEEEEE00BBBBBBBB00EEEEEEE733333333CCC33333333F
        44473333FEEEEEEE00BBBBBBBB00EEEEEEE733333333CCC33333333F44473333
        FEEEEEEEEE00000000EEEEEEEEE7333333333CCC3333333F44473333FEEEEEEE
        EE00000000EEEEEEEEE7333333333CCC3333333F44473333FEEEEEEEEE000000
        00EEEEEEEEE7333333333CCC3333333F44473333FEEEEEEEEE00000000EEEEEE
        EEE7333333333CCC3333333F44473333FEEEEEEEEEEEEEEEEEEEEEEEEEE73333
        333333CCC333333F44473333FEEEEEEEEEEEEEEEEEEEEEEEEEE73333333333CC
        C333333F44473333FEEEEEEEEEEEEEEEEEEEEEEEEEE73333333333CCC333333F
        44473333FEEEEEEEEEEEEEEEEEEEEEEEEEE73333333333CCC333333F44473333
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF33333333333C3333333F44473333FFFFFFFF
        FFFFFFFFFFFFFFFFFFFF33333333333C3333333F44473333FFFFFFFFFFFFFFFF
        FFFFFFFFFFFF33333333333C3333333F44473333FFFFFFFFFFFFFFFFFFFFFFFF
        FFFF33333333333C3333333F4447333333333333333333333333333333333333
        333333333333333F444733333333333333333333333333333333333333333333
        3333333F4447333333333333333333333333333333333333333333333333333F
        4447333333333333333333333333333333333333333333333333333F44473333
        33333333333333333333333333333333333333333333333F4447333333333333
        333333333333333333333333333333333333333F444733333333333333333333
        3333333333333333333333333333333F44473333333333333333333333333333
        33333333333333333333333F4447333333333333333333333333333333333333
        333333333333333F444733333333333333333333333333333333333333333333
        3333333F4447333333333333333333333333333333333333333333333333333F
        4447333333333333333333333333333333333333333333333333333F44473333
        F7777777777777777777777777773333333333333333333F44473333F7777777
        777777777777777777773333333333333333333F444733337888888888888888
        8888888888883333333333333333333F44473333788888888888888888888888
        88883333333333333333333F44473333FEEEEEEEEEEEEEEEEEEEEEEEEEE73333
        333333333333333F44473333FEEEEEEEEEEEEEEEEEEEEEEEEEE7333333333333
        3333333F444733337FFFFFFFFFFFFFFFFFFFFFFFFFF83393339333333333333F
        444733337FFFFFFFFFFFFFFFFFFFFFFFFFF83393339333333333333F44473333
        FEEEEEEEEE00000000EEEEEEEEE73333333333333333333F44473333FEEEEEEE
        EE00000000EEEEEEEEE73333333333333333333F444733337FFFFFFFFF000000
        00FFFFFFFFF83339393333333DD3333F444733337FFFFFFFFF00000000FFFFFF
        FFF83339393333333DD3333F44473333FEEEEEEE00BBBBBBBB00EEEEEEE73333
        3D3333333333333F44473333FEEEEEEE00BBBBBBBB00EEEEEEE733333D333333
        3333333F444733337FFFFFFF009999999900FFFFFFF8333393333333DDD3333F
        444733337FFFFFFF009999999900FFFFFFF8333393333333DDD3333F44473333
        FEEEEEE0BBBBBBBBBBBB0EEEEEE73333DDD333333333333F44473333FEEEEEE0
        BBBBBBBBBBBB0EEEEEE73333DDD333333333333F444733337FFFFFF099999999
        99990FFFFFF833393933333DDD33333F444733337FFFFFF09999999999990FFF
        FFF833393933333DDD33333F44473333FEEEEE0BBBBBBBBBBBBBB0EEEEE7333D
        DDDD33333333333F44473333FEEEEE0BBBBBBBBBBBBBB0EEEEE7333DDDDD3333
        3333333F444733337FFFFF0999999999999990FFFFF83393339333DDD333333F
        444733337FFFFF0999999999999990FFFFF83393339333DDD333333F44473333
        FEEEE0BBBBBBBBBBBBBBBB0EEEE733DDD3DDD3333333333F44473333FEEEE0BB
        BBBBBBBBBBBBBB0EEEE733DDD3DDD3333333333F444733337FFFF09990999999
        9909990FFFF8333333333DDD3333333F444733337FFFF099909999999909990F
        FFF8333333333DDD3333333F44473333FEEE0BBBBBBBBBBBBBBBBBB0EEE733DD
        333DDD333333333F44473333FEEE0BBBBBBBBBBBBBBBBBB0EEE733DD333DDD33
        3333333F444733337FFF09999009999990099990FFF833333333DDD33333333F
        444733337FFF09999009999990099990FFF833333333DDD33333333F44473333
        FEE0BBBBBBB000000BBBBBBB0EE733D33333DDD33333333F44473333FEE0BBBB
        BBB000000BBBBBBB0EE733D33333DDD33333333F444733337FF0999999000000
        009999990FF83DDDDDDDDD333333333F444733337FF099999900000000999999
        0FF83DDDDDDDDD333333333F44473333FEE0BBBBBB00000000BBBBBB0EE73333
        33333DDD3333333F44473333FEE0BBBBBB00000000BBBBBB0EE7333333333DDD
        3333333F444733337FF0999999900000099999990FF83DDDDDDDD3333333333F
        444733337FF0999999900000099999990FF83DDDDDDDD3333333333F44473333
        FE0BBBBBB00BBBBBB00BBBBBB0E73333333333DDD333333F44473333FE0BBBBB
        B00BBBBBB00BBBBBB0E73333333333DDD333333F444733337F09999999999999
        9999999990F83DDDDDDD33333333333F444733337F0999999999999999999999
        90F83DDDDDDD33333333333F44473333FE0BBBBBB0BBBBBBBB0BBBBBB0E73333
        3333333DD333333F44473333FE0BBBBBB0BBBBBBBB0BBBBBB0E733333333333D
        D333333F444733337F099999999999999999999990F83333333333333333333F
        444733337F099999999999999999999990F83333333333333333333F44473333
        FE0BBBBBBBBBB00BBBBBBBBBB0E73333333333333333333F44473333FE0BBBBB
        BBBBB00BBBBBBBBBB0E73333333333333333333F444733337F09999909999009
        9990999990F83333333333333333333F444733337F0999990999900999909999
        90F83333333333333333333F44473333FE0BBBBBBBBBB00BBBBBBBBBB0E73333
        333333333333333F44473333FE0BBBBBBBBBB00BBBBBBBBBB0E7333333333333
        3333333F444733337F099999999990099999999990F83333333333333333333F
        444733337F099999999990099999999990F83333333333333333333F44473333
        FE0BBBBBBBBBB00BBBBBBBBBB0E73333333333333333333F44473333FE0BBBBB
        BBBBB00BBBBBBBBBB0E73333333333333333333F444733337F09999909999009
        9990999990F83333333333333333333F444733337F0999990999900999909999
        90F83333333333333333333F44473333FE0BBBBBBBBBB00BBBBBBBBBB0E73333
        333333333333333F44473333FE0BBBBBBBBBB00BBBBBBBBBB0E7333333333333
        3333333F444733337F099999999990099999999990F83333333333333333333F
        444733337F099999999990099999999990F83333333333333333333F44473333
        FE0BBBBB000BBBBBB000BBBBB0E73333333333333333333F44473333FE0BBBBB
        000BBBBBB000BBBBB0E73333333333333333333F444733337F09999900099999
        9000999990F83333333333333333333F444733337F0999990009999990009999
        90F83333333333333333333F44473333FE0BBBBB000BBBBBB000BBBBB0E73333
        333333333333333F44473333FE0BBBBB000BBBBBB000BBBBB0E7333333333333
        3333333F444733337F099999000999999000999990F83333333333333333333F
        444733337F099999000999999000999990F83333333333333333333F44473333
        FEE0BBBB000BBBBBB000BBBB0EE733CCCCCC33333333333F44473333FEE0BBBB
        000BBBBBB000BBBB0EE733CCCCCC33333333333F444733337FF0999900099999
        900099990FF833CCCCCC33333333333F444733337FF099990009999990009999
        0FF833CCCCCC33333333333F44473333FEE0BBBBBBBBBBBBBBBBBBBB0EE733CC
        CCC333333333333F44473333FEE0BBBBBBBBBBBBBBBBBBBB0EE733CCCCC33333
        3333333F444733337FF0999999999999999999990FF833CCCCC333333333333F
        444733337FF0999999999999999999990FF833CCCCC333333333333F44473333
        FEEE0BBBBBBBBBBBBBBBBBB0EEE733CCCC3333333333333F44473333FEEE0BBB
        BBBBBBBBBBBBBBB0EEE733CCCC3333333333333F444733337FFF099999999999
        99999990FFF833CCCC3333333333333F444733337FFF09999999999999999990
        FFF833CCCC3333333333333F44473333FEEEE0BBBBBBBBBBBBBBBB0EEEE733CC
        CCC333333333333F44473333FEEEE0BBBBBBBBBBBBBBBB0EEEE733CCCCC33333
        3333333F444733337FFFF099999999999999990FFFF833CCCCC333333333333F
        444733337FFFF099999999999999990FFFF833CCCCC333333333333F44473333
        FEEEEE0BBBBBBBBBBBBBB0EEEEE733CC3CCC33333333333F44473333FEEEEE0B
        BBBBBBBBBBBBB0EEEEE733CC3CCC33333333333F444733337FFFFF0999999999
        999990FFFFF833CC3CCC33333333333F444733337FFFFF0999999999999990FF
        FFF833CC3CCC33333333333F44473333FEEEEEE0BBBBBBBBBBBB0EEEEEE733C3
        33CCC3333333333F44473333FEEEEEE0BBBBBBBBBBBB0EEEEEE733C333CCC333
        3333333F444733337FFFFFF09999999999990FFFFFF833C333CCC3333333333F
        444733337FFFFFF09999999999990FFFFFF833C333CCC3333333333F44473333
        FEEEEEEE00BBBBBBBB00EEEEEEE73333333CCC333333333F44473333FEEEEEEE
        00BBBBBBBB00EEEEEEE73333333CCC333333333F444733337FFFFFFF00999999
        9900FFFFFFF83333333CCC333333333F444733337FFFFFFF009999999900FFFF
        FFF83333333CCC333333333FFFFF3333FEEEEEEEEE00000000EEEEEEEEE73333
        3333CCC33333333FFFFF3333FEEEEEEEEE00000000EEEEEEEEE733333333CCC3
        3333333FFFFF33337FFFFFFFFF00000000FFFFFFFFF833333333CCC33333333F
        FFFF33337FFFFFFFFF00000000FFFFFFFFF833333333CCC33333333333333333
        FEEEEEEEEEEEEEEEEEEEEEEEEEE7333333333CCC3333333333333333FEEEEEEE
        EEEEEEEEEEEEEEEEEEE7333333333CCC33333333333333337FFFFFFFFFFFFFFF
        FFFFFFFFFFF8333333333CCC33333333333333337FFFFFFFFFFFFFFFFFFFFFFF
        FFF8333333333CCC3333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFF3333
        333333C33333333333333333FFFFFFFFFFFFFFFFFFFFFFFFFFFF3333333333C3
        333333333333333377777777777777777777777777773333333333C333333333
        3333333377777777777777777777777777773333333333C33333}
      Layout = blGlyphTop
      NumGlyphs = 4
      OnClick = AutoMixButtonClick
    end
  end
  object Panel11: TJvPanel
    Left = 0
    Top = 281
    Width = 405
    Height = 37
    MultiLine = False
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 2
    Caption = 'Panel11'
    TabOrder = 8
    object MsgListBox: TListBox
      Left = 4
      Top = 4
      Width = 397
      Height = 29
      Align = alClient
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ParentFont = False
      TabOrder = 0
      OnClick = MsgListBoxClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 526
    Width = 793
    Height = 20
    Panels = <
      item
        Alignment = taCenter
        Width = 400
      end
      item
        Alignment = taCenter
        Width = 120
      end
      item
        Alignment = taCenter
        Width = 70
      end
      item
        Alignment = taCenter
        Width = 50
      end>
  end
  object Panel16: TJvPanel
    Left = 0
    Top = 320
    Width = 793
    Height = 206
    MultiLine = False
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'Panel16'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    object SelectPageControl: TPageControl
      Left = 82
      Top = 2
      Width = 709
      Height = 202
      ActivePage = SpotsTab1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      HotTrack = True
      Images = TypesImageList
      MultiLine = True
      ParentFont = False
      TabOrder = 0
      TabWidth = 150
      object SpotsTab1: TTabSheet
        BorderWidth = 2
        Caption = 'Categories'
        ImageIndex = 1
        object ListenButton1: TSpeedButton
          Left = 600
          Top = 4
          Width = 93
          Height = 69
          Caption = #902#954#959#965#963#949
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333FFF3333F333333300033339333333337773F33733333330008033
            933333333737F7F37333333307078733333933337337373F3337333077088803
            33933337F37F337F3373333077088803393333F7337FF37F3733300777008803
            9333377F33773F7F733307088808087333337F7F337F7F7F3FFF070777080873
            99997F7F337F7F7F77770808880808733333737F337F737F3F33300888008803
            93333773F377337F73F333308807880339333337F37F337F373F333088077803
            339333373F73F37333733333087777333339333373F7F7F33F37333330807033
            933333333737F73373F333333300033339333333337773333733}
          Layout = blGlyphTop
          NumGlyphs = 2
          OnClick = ListenButton1Click
        end
        object SelectButton2: TSpeedButton
          Left = 600
          Top = 80
          Width = 93
          Height = 81
          Caption = #917#960#941#955#949#958#949
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
          OnClick = SelectButton2Click
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 593
          Height = 167
          Align = alLeft
          Caption = 'Panel6'
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 198
            Top = 1
            Height = 165
          end
          object Panel24: TJvPanel
            Left = 201
            Top = 1
            Width = 391
            Height = 165
            MultiLine = False
            Align = alClient
            BevelOuter = bvLowered
            BorderWidth = 2
            Caption = 'Panel24'
            TabOrder = 0
            object CatFilesList1: TJvListBox
              Left = 3
              Top = 3
              Width = 385
              Height = 159
              Align = alClient
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemHeight = 18
              Background.FillMode = bfmTile
              Background.Visible = False
              ParentFont = False
              Sorted = True
              Style = lbOwnerDrawFixed
              TabOrder = 0
              OnDblClick = CatFilesList1DblClick
              OnDrawItem = FilesListBoxDrawItem
              OnKeyPress = FilesListBoxKeyPress
            end
          end
          object Panel5: TJvPanel
            Left = 1
            Top = 1
            Width = 197
            Height = 165
            MultiLine = False
            Align = alLeft
            BevelOuter = bvLowered
            BorderWidth = 2
            Caption = 'Panel5'
            TabOrder = 1
            object CategoriesList1: TJvListBox
              Left = 3
              Top = 3
              Width = 191
              Height = 159
              Align = alClient
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemHeight = 18
              Background.FillMode = bfmTile
              Background.Visible = False
              ParentFont = False
              Style = lbOwnerDrawFixed
              TabOrder = 0
              OnClick = CategoriesList1Click
              OnDrawItem = CategoriesList1DrawItem
            end
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'File Explorer'
        ImageIndex = 5
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 701
          Height = 171
          Align = alClient
          Caption = 'Panel8'
          TabOrder = 0
          object SpeedButton2: TSpeedButton
            Left = 596
            Top = 12
            Width = 101
            Height = 61
            Caption = #902#954#959#965#963#949
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333FFF3333F333333300033339333333337773F33733333330008033
              933333333737F7F37333333307078733333933337337373F3337333077088803
              33933337F37F337F3373333077088803393333F7337FF37F3733300777008803
              9333377F33773F7F733307088808087333337F7F337F7F7F3FFF070777080873
              99997F7F337F7F7F77770808880808733333737F337F737F3F33300888008803
              93333773F377337F73F333308807880339333337F37F337F373F333088077803
              339333373F73F37333733333087777333339333373F7F7F33F37333330807033
              933333333737F73373F333333300033339333333337773333733}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = SpeedButton2Click
          end
          object SpeedButton3: TSpeedButton
            Left = 596
            Top = 80
            Width = 101
            Height = 85
            Caption = #917#960#941#955#949#958#949
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              555555555555555555555555555555555555555555FF55555555555559055555
              55555555577FF5555555555599905555555555557777F5555555555599905555
              555555557777FF5555555559999905555555555777777F555555559999990555
              5555557777777FF5555557990599905555555777757777F55555790555599055
              55557775555777FF5555555555599905555555555557777F5555555555559905
              555555555555777FF5555555555559905555555555555777FF55555555555579
              05555555555555777FF5555555555557905555555555555777FF555555555555
              5990555555555555577755555555555555555555555555555555}
            NumGlyphs = 2
            OnClick = SpeedButton3Click
          end
          object Panel18: TPanel
            Left = 1
            Top = 1
            Width = 584
            Height = 169
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'Panel18'
            TabOrder = 0
            object Splitter2: TSplitter
              Left = 185
              Top = 0
              Height = 169
            end
            object Panel19: TPanel
              Left = 0
              Top = 0
              Width = 185
              Height = 169
              Align = alLeft
              Caption = 'Panel19'
              TabOrder = 0
              object VET1: TVirtualExplorerTreeview
                Left = 1
                Top = 1
                Width = 183
                Height = 167
                Active = True
                Align = alClient
                ColumnDetails = cdUser
                DefaultNodeHeight = 17
                DragHeight = 250
                DragWidth = 150
                FileSizeFormat = fsfExplorer
                FileSort = fsFileType
                Header.AutoSizeIndex = 0
                Header.Font.Charset = DEFAULT_CHARSET
                Header.Font.Color = clWindowText
                Header.Font.Height = -11
                Header.Font.Name = 'MS Shell Dlg 2'
                Header.Font.Style = []
                Header.MainColumn = -1
                Header.Options = [hoColumnResize, hoDrag]
                HintMode = hmHint
                ParentColor = False
                RootFolder = rfDesktop
                TabOrder = 0
                TabStop = True
                TreeOptions.AutoOptions = [toAutoScroll, toAutoChangeScale]
                TreeOptions.MiscOptions = [toAcceptOLEDrop, toToggleOnDblClick, toWheelPanning]
                TreeOptions.PaintOptions = [toShowButtons, toShowTreeLines, toUseBlendedImages, toGhostedIfUnfocused]
                TreeOptions.SelectionOptions = [toSiblingSelectConstraint]
                TreeOptions.VETShellOptions = [toContextMenus]
                TreeOptions.VETSyncOptions = [toCollapseTargetFirst, toExpandTarget, toSelectTarget]
                TreeOptions.VETMiscOptions = [toBrowseExecuteFolder, toBrowseExecuteFolderShortcut, toBrowseExecuteZipFolder, toChangeNotifierThread, toRemoveContextMenuShortCut, toVETReadOnly]
                TreeOptions.VETImageOptions = [toImages, toThreadedImages, toMarkCutAndCopy]
                VirtualExplorerListview = VET2
                Columns = <>
              end
            end
            object Panel20: TPanel
              Left = 188
              Top = 0
              Width = 396
              Height = 169
              Align = alClient
              Caption = 'Panel20'
              TabOrder = 1
              object VET2: TVirtualExplorerListview
                Left = 1
                Top = 1
                Width = 394
                Height = 167
                Active = True
                Align = alClient
                ColumnDetails = cdShellColumns
                DefaultNodeHeight = 17
                DragHeight = 250
                DragWidth = 150
                FileObjects = [foFolders, foNonFolders, foHidden]
                FileSizeFormat = fsfExplorer
                FileSort = fsFileType
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.AutoSizeIndex = -1
                Header.Font.Charset = DEFAULT_CHARSET
                Header.Font.Color = clWindowText
                Header.Font.Height = -11
                Header.Font.Name = 'MS Shell Dlg 2'
                Header.Font.Style = []
                Header.Options = [hoColumnResize, hoDblClickResize, hoDrag, hoShowSortGlyphs, hoVisible]
                Header.Style = hsXPStyle
                HintMode = hmHint
                IncrementalSearch = isAll
                Indent = 0
                ParentColor = False
                ParentFont = False
                RootFolder = rfDesktop
                TabOrder = 0
                TabStop = True
                TreeOptions.AutoOptions = [toAutoScroll, toAutoScrollOnExpand]
                TreeOptions.MiscOptions = [toEditable, toReportMode, toToggleOnDblClick]
                TreeOptions.PaintOptions = [toShowTreeLines, toUseBlendedImages, toGhostedIfUnfocused]
                TreeOptions.SelectionOptions = [toSiblingSelectConstraint]
                TreeOptions.VETFolderOptions = [toHideRootFolder]
                TreeOptions.VETShellOptions = [toRightAlignSizeColumn]
                TreeOptions.VETSyncOptions = [toCollapseTargetFirst, toExpandTarget, toSelectTarget]
                TreeOptions.VETMiscOptions = [toBrowseExecuteFolder, toBrowseExecuteFolderShortcut, toBrowseExecuteZipFolder, toChangeNotifierThread, toVETReadOnly]
                TreeOptions.VETImageOptions = [toImages, toThreadedImages, toMarkCutAndCopy]
                ColumnMenuItemCount = 8
                VirtualExplorerTreeview = VET1
              end
            end
          end
        end
      end
      object FilesTab1: TTabSheet
        BorderWidth = 2
        Caption = 'Hard disk files'
        ImageIndex = 5
        object Panel10: TJvPanel
          Left = 0
          Top = 0
          Width = 697
          Height = 167
          MultiLine = False
          Align = alClient
          BevelOuter = bvLowered
          BorderWidth = 2
          Caption = 'Panel10'
          TabOrder = 0
          object LoadPlayListButton1: TSpeedButton
            Left = 100
            Top = 20
            Width = 81
            Height = 41
            Caption = 'Load Playlist'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
              FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
              00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
              F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
              00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
              F033777777777337F73309999990FFF0033377777777FFF77333099999000000
              3333777777777777333333399033333333333337773333333333333903333333
              3333333773333333333333303333333333333337333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = LoadPlayListButton1Click
          end
          object ClearPlayListButton1: TSpeedButton
            Left = 100
            Top = 68
            Width = 81
            Height = 41
            Caption = 'Clear Playlist'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
              555557777F777555F55500000000555055557777777755F75555005500055055
              555577F5777F57555555005550055555555577FF577F5FF55555500550050055
              5555577FF77577FF555555005050110555555577F757777FF555555505099910
              555555FF75777777FF555005550999910555577F5F77777775F5500505509990
              3055577F75F77777575F55005055090B030555775755777575755555555550B0
              B03055555F555757575755550555550B0B335555755555757555555555555550
              BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
              50BB555555555555575F555555555555550B5555555555555575}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = ClearPlayListButton1Click
          end
          object SavePlayListButton1: TSpeedButton
            Left = 100
            Top = 116
            Width = 81
            Height = 41
            Caption = 'Save Playlist'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
              333333333333337FF3333333333333903333333333333377FF33333333333399
              03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
              99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
              99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
              03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
              33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
              33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
              3333777777333333333333333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = SavePlayListButton1Click
          end
          object AddDirButton1: TSpeedButton
            Left = 8
            Top = 20
            Width = 85
            Height = 41
            Caption = 'Add Directory'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
              333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
              300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
              333337F373F773333333303330033333333337F3377333333333303333333333
              333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
              333337777F337F33333330330BB00333333337F373F773333333303330033333
              333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
              333377777F77377733330BBB0333333333337F337F33333333330BB003333333
              333373F773333333333330033333333333333773333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = AddDirButton1Click
          end
          object ListenButton2: TSpeedButton
            Left = 580
            Top = 4
            Width = 101
            Height = 61
            Caption = #902#954#959#965#963#949
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333FFF3333F333333300033339333333337773F33733333330008033
              933333333737F7F37333333307078733333933337337373F3337333077088803
              33933337F37F337F3373333077088803393333F7337FF37F3733300777008803
              9333377F33773F7F733307088808087333337F7F337F7F7F3FFF070777080873
              99997F7F337F7F7F77770808880808733333737F337F737F3F33300888008803
              93333773F377337F73F333308807880339333337F37F337F373F333088077803
              339333373F73F37333733333087777333339333373F7F7F33F37333330807033
              933333333737F73373F333333300033339333333337773333733}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = ListenButton2Click
          end
          object SelectButton1: TSpeedButton
            Left = 580
            Top = 72
            Width = 101
            Height = 85
            Caption = #917#960#941#955#949#958#949
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              555555555555555555555555555555555555555555FF55555555555559055555
              55555555577FF5555555555599905555555555557777F5555555555599905555
              555555557777FF5555555559999905555555555777777F555555559999990555
              5555557777777FF5555557990599905555555777757777F55555790555599055
              55557775555777FF5555555555599905555555555557777F5555555555559905
              555555555555777FF5555555555559905555555555555777FF55555555555579
              05555555555555777FF5555555555557905555555555555777FF555555555555
              5990555555555555577755555555555555555555555555555555}
            NumGlyphs = 2
            OnClick = SelectButton1Click
          end
          object HardDiscFilesList1: TListBox
            Left = 188
            Top = 8
            Width = 388
            Height = 153
            Style = lbOwnerDrawFixed
            Color = 12615680
            ExtendedSelect = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 15
            ParentFont = False
            Sorted = True
            TabOrder = 0
            OnDblClick = FilesListBoxDblClick
            OnDrawItem = FilesListBoxDrawItem
            OnKeyPress = FilesListBoxKeyPress
          end
          object RandomPlayCheck1: TCheckBox
            Left = 16
            Top = 80
            Width = 73
            Height = 25
            Caption = 'Random'
            TabOrder = 1
          end
          object SortedCheck1: TCheckBox
            Left = 24
            Top = 124
            Width = 65
            Height = 21
            Caption = 'Sorted'
            Checked = True
            State = cbChecked
            TabOrder = 2
            OnClick = SortedCheck1Click
          end
        end
      end
      object LogTab1: TTabSheet
        BorderWidth = 2
        Caption = 'Log'
        ImageIndex = 4
        object LogFileLabel: TLabel
          Left = 0
          Top = 24
          Width = 109
          Height = 21
          AutoSize = False
          Caption = '?????????????'
        end
        object Label3: TLabel
          Left = 0
          Top = 4
          Width = 91
          Height = 16
          Caption = 'Current Log File'
        end
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 144
          Width = 105
          Height = 22
          Caption = 'Clear screen log'
          Flat = True
          OnClick = SpeedButton1Click
        end
        object LogListBox: TJvTextListBox
          Left = 112
          Top = 0
          Width = 585
          Height = 167
          Align = alRight
          ItemHeight = 16
          TabOrder = 0
        end
      end
    end
    object Panel17: TJvPanel
      Left = 2
      Top = 2
      Width = 80
      Height = 202
      MultiLine = False
      Align = alLeft
      Caption = 'Panel17'
      TabOrder = 1
      object btnSelect1: TSpeedButton
        Left = 4
        Top = 4
        Width = 73
        Height = 194
        Caption = 'Songs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF3333333333333003333333333333377F333333333333
          30003FFFFFFFFFFFF77707777777777777707777777777777777033333333333
          33307FFFFFFFFFFFFFF707777777700777707777777777777777030333333000
          33307F7FFFFFF777FFF707770077777077707777777777777777030300033330
          33307F7F777FFFF7FFF707777707777077777777777777777777033333033330
          33337FFFFF7FFFF7FFFF07777707777077777777777777777777333333000000
          3333333333777777F33333333303333033333333337FFFF7F333333333000000
          3333333333777777333333333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
        ParentFont = False
        OnClick = btnSelect1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Playlist files|*.m3u;*.pls|All Files|*.*'
    Title = 'Load Playlist'
    Left = 488
    Top = 480
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'm3u'
    Filter = 'Playlist files|*.m3u|All Files|*.*'
    Title = 'Save Playlist'
    Left = 520
    Top = 480
  end
  object OptionsPopUp: TPopupMenu
    Left = 616
    Top = 480
    object About1: TMenuItem
      Caption = 'About'
      OnClick = About1Click
    end
    object Register1: TMenuItem
      Caption = 'Register'
      OnClick = Register1Click
    end
  end
  object TypesImageList: TImageList
    Left = 584
    Top = 480
    Bitmap = {
      494C01010F001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C0000000FF0000000000FFFFFF000000000000FF000000FF000000FF
      FF0000FFFF0000000000C0C0C000C0C0C000C0C0C0000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00000000000000FF00FFFF
      FF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFF
      FF000000FF0000000000FFFFFF00FFFFFF000000000000FFFF0000FFFF00FFFF
      FF00FF00FF00FFFF0000000000000000000000000000FFFF0000FF00FF0000FF
      FF0000FFFF0000FFFF0000000000FFFFFF0000000000FFFFFF0080808000FFFF
      FF000000000000000000FFFFFF00FFFFFF0000FF00000000000000000000FFFF
      FF0080808000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C00000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
      FF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FF00
      FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000C0C0C0000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000000000000000000000000000FFFF000000000000FFFF000000000000C0C0
      C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF00C0C0C000FFFFFF00FF000000FFFFFF00C0C0C0000000FF000000
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FFFF
      0000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      0000FF00FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00C0C0
      C00000000000FFFFFF0000FF0000FFFFFF0000FF0000FFFFFF0000000000C0C0
      C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C00000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00C0C0C0008080800000000000000000000000000080808000C0C0C000C0C0
      C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0C000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080000000000080808000C0C0C00080808000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      00000000FF00000000000000000000000000000000000000FF00000000000000
      00000000000000000000808080000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000C0C0C000C0C0C000C0C0C000000000000000
      000000000000000000000000FF0000000000000000000000FF00000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      000000000000808080000000FF000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000C0C0C000C0C0C000C0C0C000000000000000
      0000000000000000FF00000000000000000000000000808080000000FF008080
      80000000FF000000000000000000000000000000000000000000808080000000
      FF00808080000000FF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000000000000000000008080
      800080808000808080000000000000000000C0C0C000C0C0C000000000000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      000000000000000000000000000000000000000000008080800000000000C0C0
      C000C0C0C000C0C0C00000000000C0C0C00000000000C0C0C000808080000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000FF000000000000000000000000000000FF00000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C00000000000C0C0C00000000000808080000000
      0000000000000000000000000000000000000000000080808000000000008080
      8000808080008080800000000000C0C0C00000000000C0C0C000808080000000
      00000000FF000000FF000000FF000000FF00000000000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000C0C0C000000000008080800000000000808080000000
      00000000000000000000000000000000000000000000C0C0C00000000000C0C0
      C000C0C0C000C0C0C00000000000C0C0C00000000000C0C0C000808080000000
      0000000000000000000000000000000000000000FF00000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000080808000000000008080800000000000808080000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000000000000000000000000000FFFF
      FF00C0C0C000C0C0C000C0C0C000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C0000000000080808000C0C0C000C0C0C000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00C0C0C000C0C0C000C0C0C000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000000000008080800080808000C0C0C000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00080808000808080008080800080808000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000000000008080800000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000008000000080000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000080000000000000000000
      0000000000000000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000080000080000000000000000000
      0000800000000080000000800000008000000080000000800000008000008000
      00008000000000000000000000000000000000FF000080000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00808080000000FF0080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000080000000800000800000008000
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000080000000000000000000000000FF000080000000000000000000
      0000800000000080000080000000800000008000000080000000800000008000
      00008000000080000000800000008000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF000000FF000000FF000000FF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000080000000800000008000000080
      0000008000000080000000FF000000FF000000FF000000FF000000FF00000080
      00000080000000800000800000000000000000FF000080000000000000008000
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000080000080000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00808080000000FF0080808000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF000000
      0000000000000000000000000000000000000080000000800000008000000080
      00000080000000FF0000000000000000000000000000000000000000000000FF
      00000080000000800000008000008000000000FF00008000000000FF00000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000800000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000080000000800000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      000000FF000000800000008000008000000000FF0000800000000000000000FF
      0000008000000080000000800000008000000080000000800000008000000080
      00000080000000800000008000008000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000FF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000FFFF00808080008080
      800080808000808080008080800000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000080000000800000008000000080
      0000008000000080000000000000000000000000000000000000000000000000
      000000FF000080000000800000008000000000FF000080000000000000000000
      000000FF00000080000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF0000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000FF008080800000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FFFFFF000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000080000000000000000000
      00000000000000FF000000FF0000000000000000000000000000000000000080
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000FFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      00008000000080000000800000008000000000FF000080000000000000000000
      0000000000000000000000FF000000000000000000000000000000FF00000080
      000080000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF0000000000000000008000000080000000800000000000
      0000000000000000000000000000000000000000000000FF0000008000000080
      00000080000000800000008000008000000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000FF0000008000000080
      00000080000080000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF00808080008080800000FFFF00FFFFFF00808080000000FF000000FF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000FFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00000000000000FF000000
      FF000000FF000000FF000000FF00000000000080000000800000800000000000
      000000000000000000000000000000000000000000000000000000FF00000080
      0000008000000080000000800000800000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000800000008000000080
      000000800000008000008000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF000000FF000000FF00FFFFFF0000FFFF00808080000000FF000000FF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0000FF000000800000008000008000
      0000000000000000000000000000000000000000000080000000800000000080
      0000008000000080000000800000800000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF0000008000000080
      00000080000080000000800000008000000000000000FFFFFF0000FFFF00FFFF
      FF000000FF000000FF0080808000FFFFFF00808080000000FF000000FF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000FFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF00000000000000000000FF000000800000008000000080
      0000800000008000000080000000800000008000000000800000008000000080
      0000008000000080000000800000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008000000080
      0000008000008000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000080808000000000000000
      0000808080008080800000000000000000008080800000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FF0000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000FF000000FF000000800000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008000000080
      000000800000800000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000FFFF00808080008080
      80000000000000000000808080008080800000FFFF0000000000000000000000
      FF000000FF000000FF000000000000000000000000000000000000FF000000FF
      000000800000008000000080000000800000008000000080000000FF000000FF
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF0000008000000080
      00000080000080000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF008080
      800000000000000000008080800000FFFF0000FFFF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000000000000000000000000000000FF0000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      000000000000000000000000000000FF00008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000008000000080
      0000008000008000000000000000000000000000000000FF000000FF00000080
      0000008000000080000080000000000000000000000000000000000000000000
      0000000000000000000000FF0000008000000080000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000008000000080
      0000008000008000000000000000000000000000000000FF000000FF00000080
      0000008000000080000080000000000000000000000000000000000000000000
      00000000000000FF000000800000008000000080000080000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000008000000080
      0000008000008000000000000000000000000000000000FF000000FF00000080
      0000008000000080000080000000000000000000000000000000000000000000
      0000000000000000000000FF0000008000000080000080000000800000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000808080000000000000FF000000FF0000008000000080
      0000008000008000000000000000000000000000000000FF000000FF00000080
      0000008000000080000080000000000000000000000000000000000000000000
      00000000000000FF000000800000008000000080000080000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF000000FF00C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000808080000000000000FF000000FF0000008000000080
      0000008000008000000000000000000000000000000000FF000000FF00000080
      0000008000000080000080000000000000000000000000000000000000000000
      0000000000000000000000FF0000008000000080000080000000800000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000808080000000000000FF000000FF0000008000000080
      0000008000008000000000000000000000000000000000FF000000FF00000080
      0000008000000080000080000000000000000000000000000000000000000000
      00000000000000FF000000800000008000000080000080000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000808080000000000000FF000000FF0000008000000080
      0000008000008000000000000000000000000000000000FF000000FF00000080
      0000008000000080000080000000000000000000000000000000000000000000
      0000000000000000000000FF0000008000000080000080000000800000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000808080000000000000FF000000FF0000008000000080
      0000008000008000000000000000000000000000000000FF000000FF00000080
      0000008000000080000080000000000000000000000000000000000000000000
      00000000000000FF000000800000008000000080000080000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000808080000000000000FF000000FF0000008000000080
      0000008000008000000000000000000000000000000000FF000000FF00000080
      0000008000000080000080000000000000000000000000000000000000000000
      00000000000000FF000000800000008000000080000080000000800000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000000000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000808080000000000000FF000000FF0000008000000080
      0000008000008000000000000000000000000000000000FF000000FF00000080
      0000008000000080000080000000000000000000000000000000000000000000
      000000FF00000080000000800000008000000080000000800000800000008000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FF000000FF0000008000000080
      0000008000008000000000000000000000000000000000FF000000FF00000080
      00000080000000800000800000000000000000000000000000000000000000FF
      0000008000000080000000800000008000000080000000800000008000008000
      00008000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000008000000080
      0000008000008000000000000000000000000000000000FF000000FF00000080
      000000800000008000008000000000000000000000000000000000FF00000080
      0000008000000080000000800000008000000080000000800000008000000080
      00008000000080000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000008000000080
      0000008000008000000000000000000000000000000000FF000000FF00000080
      0000008000000080000080000000000000000000000000FF0000008000000080
      00000080000000800000008000000080000000FF000000800000008000000080
      00000080000080000000800000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF00008000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF0000800000000000000000FF000000800000008000000080
      00000080000000800000008000000080000000FF000000800000008000000080
      0000008000000080000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF00000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000808080008080800080808000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C00000000000C0C0C0000000FF000000FF000000FF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000FFFF
      FF0000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C0008080800000000000000000000000000080808000808080008080
      800000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      FF000000FF00C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C0000000FF000000
      FF00000000000000000000000000000000000000000000000000FF00FF00FFFF
      0000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00FFFF
      0000FF00FF000000000000000000000000000000000000000000C0C0C000C0C0
      C00000000000FFFFFF0000FF0000FFFFFF0000FF0000FFFFFF00000000008080
      800080808000000000000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C00000000000C0C0C00000000000C0C0C00000000000C0C0
      C0000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000000000000000000000000000000000000000FF00FF00FF00
      FF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FF00
      FF00FF00FF000000000000000000000000000000000000000000C0C0C0000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000080808000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C0000000000000000000000000000000000000000000000000000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFF
      FF000000FF000000000000000000000000000000000000FFFF0000FFFF00FFFF
      FF00FF00FF00FFFF0000000000000000000000000000FFFF0000FF00FF00FFFF
      FF0000FFFF0000FFFF00000000000000000000000000C0C0C00080808000FFFF
      FF00000000000000000000FF000000800000008000000000000000000000FFFF
      FF0080808000808080000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C00000000000C0C0C00000000000C0C0C00000000000C0C0
      C00000000000000000000000000000000000000000000000FF00C0C0C000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C0000000FF0000000000000000000000000000FF000000FF000000FF
      FF0000FFFF0000000000C0C0C000C0C0C000C0C0C0000000000000FFFF0000FF
      FF0000FF000000FF0000000000000000000000000000C0C0C0000000000000FF
      00000000000000FF00000080000000FF000000800000008000000000000000FF
      000000000000808080000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF00000000000000000000000000FFFF0000FFFF000000FF
      000000FF000000000000C0C0C00000000000C0C0C0000000000000FF000000FF
      0000FFFF0000FFFF0000000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000FF000000FF000000FF000000FF00000080000000000000FFFF
      FF0000000000808080000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C00000000000C0C0C00000000000C0C0C00000000000C0C0
      C00000000000000000000000000000000000000000000000FF00FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF000000FF000000000000000000000000000000
      0000FFFFFF000000FF0000000000000000000000000000FF000000FF000000FF
      FF0000FFFF0000000000C0C0C000C0C0C000C0C0C0000000000000FFFF0000FF
      FF0000FF000000FF0000000000000000000000000000FFFFFF000000000000FF
      000000000000FFFFFF0000FF000000FF00000080000000FF00000000000000FF
      000000000000C0C0C0000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000000000000000000000000000000000000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF0000000000000000000000000000FFFF0000FFFF00FFFF
      FF00FF00FF00FFFF0000000000000000000000000000FFFF0000FF00FF0000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF0080808000FFFF
      FF000000000000000000FFFFFF00FFFFFF0000FF00000000000000000000FFFF
      FF0080808000C0C0C0000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000000000000000FF00C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C0000000FF0000000000000000000000000000000000FF00FF00FF00
      FF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FF00
      FF00FF00FF000000000000000000000000000000000000000000C0C0C0000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000C0C0C000000000000000000000000000000000000000000000000000C0C0
      C000000000000000000000000000FFFF000000000000FFFF000000000000C0C0
      C0000000000000000000000000000000000000000000000000000000FF00FFFF
      FF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFF
      FF000000FF000000000000000000000000000000000000000000FF00FF00FFFF
      0000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      0000FF00FF000000000000000000000000000000000000000000FFFFFF00C0C0
      C00000000000FFFFFF0000FF0000FFFFFF0000FF0000FFFFFF0000000000C0C0
      C000C0C0C000000000000000000000000000000000000000000000000000C0C0
      C00000000000000000000000000000000000000000000000000000000000C0C0
      C0000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000080808000C0C0C000C0C0
      C00000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      FF000000FF00C0C0C000FFFFFF00FF000000FFFFFF00C0C0C0000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      000000000000000000000000000000007F7F7F00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E00FFFFF8000FF00E00FFC7B55550000
      E00FF8370000FF00E00FF03E76BCFF00E00FE01DB6D8FF00E00FE01B86C20000
      E00F8017CEE60000A00B001FCAA60000C007001086C0BF00E00F001F4EF6BF00
      E00F8017E6F2BF00C007E01BE6F2BF00C007E01DFEFEBF00C007F03E00000000
      F83FF83755550000F83FFC7B00000000F81FBDFFFFFFFC00300739FFF83FFC00
      00033000E00FFC0000012000C007000003E000008003000107F0200080030003
      03F030000001000701FF39EF00010007FFC03DC7000100231F803F8300010001
      1FC0FF01000100000F80FE00800300230000FF83800300238000FF83C0070023
      C00DFF83E00F0007F03FFF83F83F003FFC00FFFF8381FE7FF000FFFF0381FC1F
      C000FFFF0381F83F000000000381FC1F000000000381F83F000000000381FC1F
      000000000381F83F000000000381FC1F000000000381F83F000000000381F81F
      000100000381F00F000300000381E007000700000381C003001FFFFF03818001
      007FFFFF0381000001FFFFFF03810080C007FFFFC007FFFFC007F83FC007F83F
      E00FE00FC007E00FC007C007C007C00780038003C007800380038003C0078003
      00010001C007000100010001C007000100010001C007000100010001C0070001
      00010001C007000180038003C007800380038003C0078003C007C007C007C007
      E00FE00FC007E00FF83FF83FC007F83F00000000000000000000000000000000
      000000000000}
  end
  object SessionS: TSession
    SessionName = 'SearchSess'
    Left = 424
    Top = 448
  end
  object dsSearch: TDataSource
    AutoEdit = False
    DataSet = SearchQuery
    Left = 488
    Top = 448
  end
  object SearchQuery: TQuery
    DatabaseName = 'DBSearch'
    SessionName = 'SearchSess'
    Left = 456
    Top = 448
  end
  object DatabaseS: TDatabase
    DatabaseName = 'DBSearch'
    DriverName = 'STANDARD'
    ReadOnly = True
    SessionName = 'SearchSess'
    Left = 392
    Top = 448
  end
  object tblArtistUpd: TTable
    DatabaseName = 'Studio19'
    SessionName = 'Default'
    IndexFieldNames = 'ArtistCode'
    TableName = 'Artists.DB'
    Left = 560
    Top = 448
  end
  object tblTitlesUpd: TTable
    DatabaseName = 'Studio19'
    SessionName = 'Default'
    IndexFieldNames = 'TitleCode'
    TableName = 'Songs.DB'
    Left = 592
    Top = 448
  end
  object ActionList1: TActionList
    Left = 392
    Top = 480
    object PlayAction: TAction
      Caption = 'Play First Available'
      ShortCut = 112
      OnExecute = PlayActionExecute
    end
    object MoveToAirAction: TAction
      Caption = 'Move to Air list'
      ShortCut = 116
      OnExecute = MoveToAirActionExecute
    end
    object PlayNextAction: TAction
      Caption = 'Play next'
      ShortCut = 120
      OnExecute = PlayNextActionExecute
    end
    object FadePlayingAction: TAction
      Caption = 'Fade out playing'
      ShortCut = 121
      OnExecute = FadePlayingActionExecute
    end
    object StopAirAction: TAction
      Caption = 'FadeOut'
      ShortCut = 113
      OnExecute = StopAirActionExecute
    end
    object LiveModeAction: TAction
      Caption = 'LiveModeAction'
      ShortCut = 122
      OnExecute = LiveModeActionExecute
    end
    object AutoModeAction: TAction
      Caption = 'AutoModeAction'
      ShortCut = 123
      OnExecute = AutoModeActionExecute
    end
  end
  object tblSpots: TTable
    DatabaseName = 'Studio19'
    SessionName = 'Default'
    IndexFieldNames = 'Code'
    TableName = 'Spots.DB'
    Left = 528
    Top = 448
  end
  object JvCaptionButton1: TJvCaptionButton
    ButtonWidth = 100
    Caption = 'Refresh Directories'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Shell Dlg 2'
    Font.Style = []
    OnClick = JvCaptionButton1Click
    Left = 424
    Top = 480
  end
  object JvBrowseFolder1: TJvBrowseForFolderDialog
    Options = [odBrowseForComputer, odOnlyDirectory, odStatusAvailable, odNewDialogStyle, odNoNewButtonFolder]
    Left = 456
    Top = 480
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 544
    Top = 240
  end
  object JvDragDrop1: TJvDragDrop
    DropTarget = HardDiscFilesList1
    OnDrop = JvDragDrop1Drop
    Left = 552
    Top = 480
  end
end
