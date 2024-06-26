object DataForm1: TDataForm1
  Left = 300
  Top = 168
  ActiveControl = FileNameEdit
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Title info'
  ClientHeight = 478
  ClientWidth = 532
  Color = clBtnFace
  Font.Charset = GREEK_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TJvPanel
    Left = 0
    Top = 0
    Width = 532
    Height = 478
    HotColor = clSilver
    MultiLine = False
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    BorderWidth = 2
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 4
      Width = 52
      Height = 13
      Caption = 'File on disk'
      OnClick = Label1Click
    end
    object Label2: TLabel
      Left = 8
      Top = 84
      Width = 26
      Height = 13
      Caption = 'Artist'
    end
    object Label3: TLabel
      Left = 8
      Top = 124
      Width = 20
      Height = 13
      Caption = 'Title'
    end
    object Label4: TLabel
      Left = 8
      Top = 204
      Width = 63
      Height = 13
      Caption = 'Release date'
    end
    object Label6: TLabel
      Left = 292
      Top = 192
      Width = 35
      Height = 26
      Caption = 'Title'#13#10'Repeat'
    end
    object Label7: TLabel
      Left = 12
      Top = 247
      Width = 20
      Height = 13
      Caption = 'BPM'
    end
    object Label8: TLabel
      Left = 376
      Top = 203
      Width = 31
      Height = 13
      Caption = 'Rating'
    end
    object Label9: TLabel
      Left = 204
      Top = 192
      Width = 35
      Height = 26
      Caption = 'Artist'#13#10'Repeat'
    end
    object Label10: TLabel
      Left = 432
      Top = 203
      Width = 18
      Height = 13
      Caption = 'Sex'
    end
    object btnNewStyle: TSpeedButton
      Left = 356
      Top = 100
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337FF3333333333330003333333333333777F333333333333080333
        3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
        33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
        B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
        BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
        B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
        3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
        333333333337F33333333333333B333333333333333733333333}
      NumGlyphs = 2
      OnClick = btnNewStyleClick
    end
    object btnOpenFile: TSpeedButton
      Left = 356
      Top = 20
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
        B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
        B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
        0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
        55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
        55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
        55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
        5555575FFF755555555557000075555555555577775555555555}
      NumGlyphs = 2
      OnClick = btnOpenFileClick
    end
    object SpeedButton3: TSpeedButton
      Left = 180
      Top = 180
      Width = 23
      Height = 21
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337FF3333333333330003333333333333777F333333333333080333
        3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
        33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
        B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
        BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
        B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
        3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
        333333333337F33333333333333B333333333333333733333333}
      NumGlyphs = 2
      OnClick = SpeedButton3Click
    end
    object Label5: TLabel
      Left = 8
      Top = 164
      Width = 36
      Height = 13
      Caption = 'Subject'
    end
    object Label19: TLabel
      Left = 64
      Top = 264
      Width = 48
      Height = 13
      Caption = 'Promotion'
    end
    object Label20: TLabel
      Left = 152
      Top = 260
      Width = 48
      Height = 26
      Caption = 'Promotion'#13#10'Repeat'
    end
    object Label21: TLabel
      Left = 420
      Top = 248
      Width = 56
      Height = 13
      Caption = 'Delete date'
    end
    object Label24: TLabel
      Left = 8
      Top = 44
      Width = 29
      Height = 13
      Caption = 'Album'
    end
    object btnNewCD: TSpeedButton
      Left = 356
      Top = 60
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337FF3333333333330003333333333333777F333333333333080333
        3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
        33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
        B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
        BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
        B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
        3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
        333333333337F33333333333333B333333333333333733333333}
      NumGlyphs = 2
      OnClick = btnNewCDClick
    end
    object DBText1: TDBText
      Left = 223
      Top = 126
      Width = 72
      Height = 17
      DataField = 'Category1'
      DataSource = dsStyles
      OnClick = DBTextClick
    end
    object DBText2: TDBText
      Left = 223
      Top = 143
      Width = 72
      Height = 17
      DataField = 'Category2'
      DataSource = dsStyles
      OnClick = DBTextClick
    end
    object DBText3: TDBText
      Left = 223
      Top = 158
      Width = 72
      Height = 17
      DataField = 'Category3'
      DataSource = dsStyles
      OnClick = DBTextClick
    end
    object DBText4: TDBText
      Left = 223
      Top = 174
      Width = 72
      Height = 17
      DataField = 'Category4'
      DataSource = dsStyles
      OnClick = DBTextClick
    end
    object DBText5: TDBText
      Left = 311
      Top = 126
      Width = 85
      Height = 17
      DataField = 'Category5'
      DataSource = dsStyles
      OnClick = DBTextClick
    end
    object DBText6: TDBText
      Left = 311
      Top = 143
      Width = 85
      Height = 17
      DataField = 'Category6'
      DataSource = dsStyles
      OnClick = DBTextClick
    end
    object DBText7: TDBText
      Left = 311
      Top = 158
      Width = 85
      Height = 17
      DataField = 'Category7'
      DataSource = dsStyles
      OnClick = DBTextClick
    end
    object DBText8: TDBText
      Left = 311
      Top = 174
      Width = 85
      Height = 17
      DataField = 'Category8'
      DataSource = dsStyles
      OnClick = DBTextClick
    end
    object FileNameEdit: TEdit
      Left = 8
      Top = 20
      Width = 345
      Height = 21
      TabOrder = 0
    end
    object EnabledCheck: TCheckBox
      Left = 432
      Top = 168
      Width = 57
      Height = 17
      Caption = 'Enabled'
      TabOrder = 22
    end
    object OpenerCheck: TCheckBox
      Left = 96
      Top = 224
      Width = 105
      Height = 17
      Alignment = taLeftJustify
      BiDiMode = bdLeftToRight
      Caption = 'Opener'
      ParentBiDiMode = False
      TabOrder = 11
    end
    object QualityCombo: TComboBox
      Left = 376
      Top = 220
      Width = 41
      Height = 21
      Style = csDropDownList
      DropDownCount = 10
      ItemHeight = 13
      TabOrder = 14
      Items.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9')
    end
    object ArtistRepeatMaskEdit: TMaskEdit
      Left = 204
      Top = 220
      Width = 73
      Height = 21
      EditMask = '!99d/99h:99m;1;0'
      MaxLength = 11
      TabOrder = 12
      Text = '  d/  h:  m'
    end
    object TitleRepeatMaskEdit: TMaskEdit
      Left = 292
      Top = 220
      Width = 73
      Height = 21
      EditMask = '!99d/99h:99m;1;0'
      MaxLength = 11
      TabOrder = 13
      Text = '  d/  h:  m'
    end
    object SexCombo: TComboBox
      Left = 432
      Top = 220
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 15
      Items.Strings = (
        #902#957#948#961#945#962
        #915#965#957#945#943#954#945
        'Group')
    end
    object CheckCat1: TCheckBox
      Left = 208
      Top = 124
      Width = 15
      Height = 17
      Caption = 'CheckCat1'
      TabOrder = 2
    end
    object CheckCat2: TCheckBox
      Left = 208
      Top = 140
      Width = 15
      Height = 17
      Caption = 'CheckCat2'
      TabOrder = 3
    end
    object CheckCat3: TCheckBox
      Left = 208
      Top = 156
      Width = 15
      Height = 17
      Caption = 'CheckCat3'
      TabOrder = 4
    end
    object CheckCat4: TCheckBox
      Left = 208
      Top = 172
      Width = 15
      Height = 17
      Caption = 'CheckCat4'
      TabOrder = 5
    end
    object CheckCat5: TCheckBox
      Left = 296
      Top = 124
      Width = 15
      Height = 17
      Caption = 'CheckCat5'
      TabOrder = 6
    end
    object CheckCat6: TCheckBox
      Left = 296
      Top = 140
      Width = 15
      Height = 17
      Caption = 'CheckCat6'
      TabOrder = 7
    end
    object CheckCat7: TCheckBox
      Left = 296
      Top = 156
      Width = 15
      Height = 17
      Caption = 'CheckCat7'
      TabOrder = 8
    end
    object CheckCat8: TCheckBox
      Left = 296
      Top = 172
      Width = 15
      Height = 17
      Caption = 'CheckCat8'
      TabOrder = 9
    end
    object GroupBox1: TGroupBox
      Left = 396
      Top = 16
      Width = 125
      Height = 65
      Caption = 'Artist'
      TabOrder = 24
      object Label11: TLabel
        Left = 3
        Top = 16
        Width = 50
        Height = 13
        Caption = 'Play count'
      end
      object Label13: TLabel
        Left = 3
        Top = 32
        Width = 43
        Height = 13
        Caption = 'Last play'
      end
      object ArtistLastPlayed: TLabel
        Left = 3
        Top = 48
        Width = 84
        Height = 13
        Caption = 'Artist Played Last'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ArtistCount: TLabel
        Left = 72
        Top = 16
        Width = 46
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'ArtistCount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 396
      Top = 84
      Width = 125
      Height = 65
      Caption = 'Title'
      TabOrder = 26
      object Label12: TLabel
        Left = 3
        Top = 16
        Width = 50
        Height = 13
        Caption = 'Play count'
      end
      object Label14: TLabel
        Left = 3
        Top = 32
        Width = 43
        Height = 13
        Caption = 'Last play'
      end
      object TitleLastPlayed: TLabel
        Left = 3
        Top = 48
        Width = 72
        Height = 13
        Caption = 'TitleLastPlayed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object TitleCount: TLabel
        Left = 73
        Top = 16
        Width = 45
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'TitleCount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel8: TJvPanel
      Left = 404
      Top = 292
      Width = 125
      Height = 161
      MultiLine = False
      BevelInner = bvLowered
      BevelOuter = bvSpace
      TabOrder = 21
      object btnDelete: TSpeedButton
        Left = 8
        Top = 8
        Width = 109
        Height = 45
        Caption = 'Delete title'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          300033FFFFFF3333377739999993333333333777777F3333333F399999933333
          3300377777733333337733333333333333003333333333333377333333333333
          3333333333333333333F333333333333330033333F33333333773333C3333333
          330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
          333333377F33333333FF3333C333333330003333733333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
        OnClick = btnDeleteClick
      end
      object btnSave: TBitBtn
        Left = 8
        Top = 104
        Width = 109
        Height = 49
        Caption = 'Save / Exit'
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
          00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
          00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
          00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
          0003737FFFFFFFFF7F7330099999999900333777777777777733}
        NumGlyphs = 2
      end
      object btnCancel: TBitBtn
        Left = 8
        Top = 56
        Width = 109
        Height = 45
        TabOrder = 1
        Kind = bkCancel
      end
    end
    object SubjectLookupCombo: TDBLookupComboBox
      Left = 8
      Top = 180
      Width = 169
      Height = 21
      DropDownRows = 10
      KeyField = 'SubjectName'
      ListField = 'SubjectName'
      ListSource = dsSubjects
      TabOrder = 1
    end
    object BPMEdit: TBPMEdit
      Left = 16
      Top = 264
      Width = 33
      Height = 21
      MaxLength = 3
      TabOrder = 16
      Text = 'BPMEdit'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 8
      Top = 220
      Width = 85
      Height = 21
      Date = 0.547300694401201000
      Time = 0.547300694401201000
      TabOrder = 10
    end
    object PromoMaskEdit1: TMaskEdit
      Left = 212
      Top = 264
      Width = 73
      Height = 21
      EditMask = '!99d/99h:99m;1;0'
      MaxLength = 11
      TabOrder = 18
      Text = '  d/  h:  m'
    end
    object PromoTimesEdit1: TMaskEdit
      Left = 120
      Top = 264
      Width = 26
      Height = 21
      EditMask = '999;1;0'
      MaxLength = 3
      TabOrder = 17
      Text = '   '
    end
    object AutoDeleteCheck1: TCheckBox
      Left = 292
      Top = 264
      Width = 121
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Auto Delete'
      Enabled = False
      TabOrder = 19
    end
    object AutoDeleteTimePicker: TDateTimePicker
      Left = 420
      Top = 264
      Width = 85
      Height = 21
      Date = 36214.593285532400000000
      Time = 36214.593285532400000000
      Enabled = False
      TabOrder = 20
    end
    object XAudioPanel: TJvPanel
      Left = 8
      Top = 295
      Width = 393
      Height = 158
      HotColor = clBlack
      MultiLine = False
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clBlack
      TabOrder = 23
      object StartButton: TSpeedButton
        Left = 10
        Top = 8
        Width = 50
        Height = 29
        Caption = 'Start'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = StartButtonClick
      end
      object IntroButton: TSpeedButton
        Left = 10
        Top = 40
        Width = 50
        Height = 29
        Caption = '&Intro'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = IntroButtonClick
      end
      object MixButton: TSpeedButton
        Left = 240
        Top = 40
        Width = 50
        Height = 29
        Caption = 'Mix'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
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
        NumGlyphs = 2
        OnClick = MixButtonClick
      end
      object StartTime: TTimeLabel
        Left = 60
        Top = 8
        Width = 77
        Height = 29
        Cursor = crHandPoint
        Time = 0
        ShowMSec = True
        ShowHours = False
        ShowMinutes = True
        ShowZeros = True
        IsMSec = False
        Minus = False
        Caption = '00:00.0'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        OnClick = StartTimeClick
      end
      object IntroTime: TTimeLabel
        Left = 60
        Top = 40
        Width = 77
        Height = 29
        Cursor = crHandPoint
        Time = 0
        ShowMSec = True
        ShowHours = False
        ShowMinutes = True
        ShowZeros = True
        IsMSec = False
        Minus = False
        Caption = '00:00.0'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        OnClick = IntroTimeClick
      end
      object FadeInTime: TTimeLabel
        Left = 208
        Top = 8
        Width = 45
        Height = 29
        Time = 0
        ShowMSec = True
        ShowHours = False
        ShowMinutes = False
        ShowZeros = True
        IsMSec = False
        Minus = False
        Caption = '00.0'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object LengthTime: TTimeLabel
        Left = 228
        Top = 116
        Width = 77
        Height = 29
        Time = 0
        ShowMSec = True
        ShowHours = False
        ShowMinutes = True
        ShowZeros = True
        IsMSec = False
        Minus = False
        Caption = '00:00.0'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object PositionTime: TTimeLabel
        Left = 160
        Top = 40
        Width = 77
        Height = 29
        Time = 0
        ShowMSec = True
        ShowHours = False
        ShowMinutes = True
        ShowZeros = True
        IsMSec = False
        Minus = False
        Caption = '00:00.0'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object FadeOutTime: TTimeLabel
        Left = 322
        Top = 8
        Width = 45
        Height = 29
        Cursor = crHandPoint
        Time = 0
        ShowMSec = True
        ShowHours = False
        ShowMinutes = False
        ShowZeros = True
        IsMSec = False
        Minus = False
        Caption = '00.0'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        OnClick = FadeOutTimeClick
        OnDblClick = FadeOutTimeDblClick
      end
      object MixTime: TTimeLabel
        Left = 290
        Top = 40
        Width = 77
        Height = 29
        Cursor = crHandPoint
        Time = 0
        ShowMSec = True
        ShowHours = False
        ShowMinutes = True
        ShowZeros = True
        IsMSec = False
        Minus = False
        Caption = '00:00.0'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        OnClick = MixTimeClick
      end
      object Label15: TLabel
        Left = 168
        Top = 8
        Width = 37
        Height = 13
        Caption = 'Fade In'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 230
        Top = 103
        Width = 41
        Height = 13
        Caption = 'Duration'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 160
        Top = 27
        Width = 37
        Height = 13
        Caption = 'Position'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 277
        Top = 8
        Width = 45
        Height = 13
        Caption = 'Fade Out'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object PlayButton: TSpeedButton
        Left = 10
        Top = 108
        Width = 62
        Height = 40
        Caption = '&Play'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333C0333333333333333333333333333333CC033333
          333333337F33333333333333CCC033333333333377F3333333333333CCCC0333
          33333333777F333333333333CCCCC033333333337777F33333333333CCCCCC03
          3333333377777F3333333333CCCCCCC033333333777777F333333333CCCCCCCC
          033333337777777F33333333CCCCCCCE333333337777777333333333CCCCCCE3
          333333337777773333333333CCCCCE33333333337777733333333333CCCCE333
          333333337777333333333333CCCE3333333333337773333333333333CCE33333
          333333337733333333333333CE33333333333333333333333333}
        NumGlyphs = 2
        OnClick = PlayButtonClick
      end
      object PauseButton: TSpeedButton
        Left = 80
        Top = 108
        Width = 62
        Height = 40
        Caption = 'P&ause'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333333333333333333E44443E444
          433333FFFFF3FFFFF33333ECCC43ECCC4333337777F37777F33333ECCC43ECCC
          4333337777F37777F33333ECCC43ECCC4333337777F37777F33333ECCC43ECCC
          4333337777F37777F33333ECCC43ECCC4333337777F37777F33333ECCC43ECCC
          4333337777F37777F33333ECCC43ECCC4333337777F37777F33333ECCC43ECCC
          4333337777F37777F33333ECCC43ECCC4333337777F37777F33333ECCC43ECCC
          4333337777F37777F33333ECCC43ECCC4333337777F37777F33333EEEEE3EEEE
          E333337777F37777F33333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = PauseButtonClick
      end
      object StopButton: TSpeedButton
        Left = 152
        Top = 108
        Width = 62
        Height = 40
        Caption = 'S&top'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333E4444444443333337FFFFFFFFF333333ECCCCCCCC4
          333333777777777F333333ECCCCCCCC4333333777777777F333333ECCCCCCCC4
          333333777777777F333333ECCCCCCCC4333333777777777F333333ECCCCCCCC4
          333333777777777F333333ECCCCCCCC4333333777777777F333333ECCCCCCCC4
          333333777777777F333333ECCCCCCCC4333333777777777F333333ECCCCCCCC4
          333333777777777F333333EEEEEEEEEE33333377777777773333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = StopButtonClick
      end
      object VolumeLabel: TLabel
        Left = 320
        Top = 116
        Width = 39
        Height = 29
        Caption = '000'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label23: TLabel
        Left = 320
        Top = 103
        Width = 34
        Height = 13
        Caption = 'Volume'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object StartSpin1: TSpinButton
        Left = 138
        Top = 8
        Width = 20
        Height = 29
        DownGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080000080800000808000000000000000000000000000000000000000
          0000008080000080800000808000000000000000000000000000000000000000
          0000000000000000000000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        TabOrder = 0
        UpGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000000000000000000000000000000000000000000000000000000000000080
          8000008080000080800000000000000000000000000000000000000000000080
          8000008080000080800000808000008080000000000000000000000000000080
          8000008080000080800000808000008080000080800000808000000000000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        OnDownClick = SpinDownClick
        OnUpClick = SpinUpClick
      end
      object IntroSpin1: TSpinButton
        Left = 138
        Top = 40
        Width = 20
        Height = 29
        DownGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080000080800000808000000000000000000000000000000000000000
          0000008080000080800000808000000000000000000000000000000000000000
          0000000000000000000000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        TabOrder = 1
        UpGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000000000000000000000000000000000000000000000000000000000000080
          8000008080000080800000000000000000000000000000000000000000000080
          8000008080000080800000808000008080000000000000000000000000000080
          8000008080000080800000808000008080000080800000808000000000000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        OnDownClick = SpinDownClick
        OnUpClick = SpinUpClick
      end
      object FadeInSpin1: TSpinButton
        Left = 254
        Top = 8
        Width = 20
        Height = 29
        DownGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080000080800000808000000000000000000000000000000000000000
          0000008080000080800000808000000000000000000000000000000000000000
          0000000000000000000000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        TabOrder = 2
        UpGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000000000000000000000000000000000000000000000000000000000000080
          8000008080000080800000000000000000000000000000000000000000000080
          8000008080000080800000808000008080000000000000000000000000000080
          8000008080000080800000808000008080000080800000808000000000000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        OnDownClick = SpinDownClick
        OnUpClick = SpinUpClick
      end
      object FadeOutSpin1: TSpinButton
        Left = 368
        Top = 8
        Width = 20
        Height = 29
        DownGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080000080800000808000000000000000000000000000000000000000
          0000008080000080800000808000000000000000000000000000000000000000
          0000000000000000000000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        TabOrder = 3
        UpGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000000000000000000000000000000000000000000000000000000000000080
          8000008080000080800000000000000000000000000000000000000000000080
          8000008080000080800000808000008080000000000000000000000000000080
          8000008080000080800000808000008080000080800000808000000000000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        OnDownClick = SpinDownClick
        OnUpClick = SpinUpClick
      end
      object MixSpin1: TSpinButton
        Left = 368
        Top = 40
        Width = 20
        Height = 29
        DownGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080000080800000808000000000000000000000000000000000000000
          0000008080000080800000808000000000000000000000000000000000000000
          0000000000000000000000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        TabOrder = 4
        UpGlyph.Data = {
          0E010000424D0E01000000000000360000002800000009000000060000000100
          200000000000D800000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000000000000000000000000000000000000000000000000000000000000080
          8000008080000080800000000000000000000000000000000000000000000080
          8000008080000080800000808000008080000000000000000000000000000080
          8000008080000080800000808000008080000080800000808000000000000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000}
        OnDownClick = SpinDownClick
        OnUpClick = SpinUpClick
      end
      object PositionSlider: JTrackBar
        Left = 4
        Top = 72
        Width = 360
        Height = 25
        LineSize = 10
        PageSize = 100
        TabOrder = 5
        TickStyle = tsManual
        OnChange = PositionSliderChange
        OnMouseUp = PositionSliderMouseUp
        OnMouseDown = PositionSliderMouseDown
        SelEndIsPos = False
      end
      object VolumeSlider: JTrackBar
        Left = 365
        Top = 72
        Width = 20
        Height = 78
        Max = 0
        Min = -100
        Orientation = trVertical
        PageSize = 10
        Frequency = 10
        Position = -100
        TabOrder = 6
        ThumbLength = 15
        OnChange = VolumeSliderChange
        SelEndIsPos = False
      end
    end
    object StatusBar1: TStatusBar
      Left = 3
      Top = 456
      Width = 526
      Height = 19
      Panels = <
        item
          Width = 60
        end
        item
          Width = 50
        end>
    end
    object ArtistLookupEdit: TEdit
      Left = 8
      Top = 96
      Width = 185
      Height = 21
      TabOrder = 27
    end
    object SongLookupEdit: TEdit
      Left = 8
      Top = 136
      Width = 185
      Height = 21
      TabOrder = 28
    end
    object CDsLookupCombo: TDBLookupComboBox
      Left = 8
      Top = 56
      Width = 345
      Height = 21
      KeyField = 'DiscTitle'
      ListField = 'DiscTitle'
      ListSource = dsCDs
      TabOrder = 29
    end
    object StylesLookupCombo: TJvDBLookupCombo
      Left = 208
      Top = 100
      Width = 145
      Height = 21
      LookupField = 'Name'
      LookupDisplay = 'Name'
      LookupSource = dsStyles
      TabOrder = 30
    end
  end
  object tblCDs: TTable
    BeforePost = tblCDsBeforePost
    BeforeDelete = tblCDsBeforeDelete
    DatabaseName = 'DB'
    SessionName = 'DefSess1'
    FieldDefs = <
      item
        Name = 'CDCode'
        DataType = ftInteger
      end
      item
        Name = 'Group'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DiscTitle'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ReleaseDate'
        DataType = ftDate
      end
      item
        Name = 'Composer'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Tmp1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Company'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tracks'
        DataType = ftSmallint
      end
      item
        Name = 'JukeBox'
        DataType = ftSmallint
      end
      item
        Name = 'Position'
        DataType = ftSmallint
      end
      item
        Name = 'Directory'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 'tblCDsIndex1'
        Fields = 'CDCode'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idxDiscTitle'
        Fields = 'DiscTitle'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'idxDiscTitle'
    StoreDefs = True
    TableName = 'CDs.DB'
    Left = 524
    Top = 8
  end
  object dsCDs: TDataSource
    DataSet = tblCDs
    Left = 524
    Top = 40
  end
  object tblAllArtists: TTable
    DatabaseName = 'DB'
    SessionName = 'DefSess1'
    FieldDefs = <
      item
        Name = 'ArtistCode'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'LastPlayed'
        DataType = ftDateTime
      end
      item
        Name = 'Repeat'
        DataType = ftDateTime
      end
      item
        Name = 'PlayAgain'
        DataType = ftDateTime
      end
      item
        Name = 'PlayCount'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'tblAllArtistsIndex1'
        Fields = 'ArtistCode'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'ArtistNameIndex'
        Fields = 'Name'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'ArtistNameIndex'
    StoreDefs = True
    TableName = 'Artists.DB'
    Left = 556
    Top = 8
  end
  object dsAllArtists: TDataSource
    DataSet = tblAllArtists
    Left = 556
    Top = 40
  end
  object tblAllSongs: TTable
    DatabaseName = 'DB'
    SessionName = 'DefSess1'
    FieldDefs = <
      item
        Name = 'TitleCode'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'CDCode'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Title'
        Attributes = [faRequired]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SLength'
        DataType = ftInteger
      end
      item
        Name = 'Start'
        DataType = ftInteger
      end
      item
        Name = 'Style'
        DataType = ftSmallint
      end
      item
        Name = 'SYear'
        DataType = ftDate
      end
      item
        Name = 'Quality'
        DataType = ftSmallint
      end
      item
        Name = 'ArtistCode'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Category1'
        DataType = ftBoolean
      end
      item
        Name = 'Category2'
        DataType = ftBoolean
      end
      item
        Name = 'Category3'
        DataType = ftBoolean
      end
      item
        Name = 'Category4'
        DataType = ftBoolean
      end
      item
        Name = 'Category5'
        DataType = ftBoolean
      end
      item
        Name = 'Category6'
        DataType = ftBoolean
      end
      item
        Name = 'Category7'
        DataType = ftBoolean
      end
      item
        Name = 'Category8'
        DataType = ftBoolean
      end
      item
        Name = 'Category9'
        DataType = ftBoolean
      end
      item
        Name = 'Category10'
        DataType = ftBoolean
      end
      item
        Name = 'BPM'
        DataType = ftSmallint
      end
      item
        Name = 'PlayedLast'
        DataType = ftDateTime
      end
      item
        Name = 'SongRepeat'
        DataType = ftDateTime
      end
      item
        Name = 'PlayAgain'
        DataType = ftDateTime
      end
      item
        Name = 'Opener'
        DataType = ftBoolean
      end
      item
        Name = 'Sex'
        DataType = ftSmallint
      end
      item
        Name = 'FadeIn'
        DataType = ftSmallint
      end
      item
        Name = 'FadeOut'
        DataType = ftSmallint
      end
      item
        Name = 'MixPosition'
        DataType = ftInteger
      end
      item
        Name = 'Intro'
        DataType = ftInteger
      end
      item
        Name = 'Volume'
        DataType = ftSmallint
      end
      item
        Name = 'PlayCounter'
        DataType = ftInteger
      end
      item
        Name = 'FileName'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Enabled'
        DataType = ftBoolean
      end
      item
        Name = 'Subject'
        DataType = ftInteger
      end
      item
        Name = 'AutoDelete'
        DataType = ftBoolean
      end
      item
        Name = 'DeleteDate'
        DataType = ftDateTime
      end
      item
        Name = 'PromoCount'
        DataType = ftSmallint
      end
      item
        Name = 'PromoRotation'
        DataType = ftDateTime
      end>
    IndexDefs = <
      item
        Name = 'tblAllSongsIndex1'
        Fields = 'TitleCode'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idxCDCode'
        Fields = 'CDCode'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idxTitle'
        Fields = 'Title'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idxArtCodeTitle'
        Fields = 'ArtistCode;Title'
        Options = [ixCaseInsensitive]
      end>
    IndexFieldNames = 'TitleCode'
    StoreDefs = True
    TableName = 'Songs.DB'
    Left = 588
    Top = 8
  end
  object dsAllSongs: TDataSource
    DataSet = tblAllSongs
    Left = 588
    Top = 40
  end
  object QSongs: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    SessionName = 'DefSess1'
    SQL.Strings = (
      'select distinct title from songs.db order by title')
    Left = 684
    Top = 8
  end
  object dsQSongs: TDataSource
    DataSet = QSongs
    Left = 684
    Top = 40
  end
  object dsStyles: TDataSource
    DataSet = tblStyles1
    Left = 620
    Top = 40
  end
  object dsSubjects: TDataSource
    DataSet = tblSubjects1
    Left = 652
    Top = 40
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SessionName = 'DefSess1'
    DataSource = dsAllSongs
    SQL.Strings = (
      
        'Select Count(ArtistCode) as ArtistsAtSongs from Songs.db where A' +
        'rtistCode = :ArtistCode')
    Left = 716
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ArtistCode'
        ParamType = ptUnknown
      end>
  end
  object Database1: TDatabase
    DatabaseName = 'DB'
    DriverName = 'STANDARD'
    SessionName = 'DefSess1'
    TransIsolation = tiDirtyRead
    Left = 384
    Top = 4
  end
  object OpenDialog1: TOpenDialog
    Left = 116
    Top = 4
  end
  object tblStyles1: TTable
    DatabaseName = 'DB'
    SessionName = 'DefSess1'
    IndexName = 'idxStyleName'
    TableName = 'Styles.db'
    Left = 616
    Top = 8
  end
  object tblSubjects1: TTable
    DatabaseName = 'DB'
    SessionName = 'DefSess1'
    IndexName = 'idxSubjectName'
    TableName = 'Subjects.db'
    Left = 648
    Top = 8
  end
end
