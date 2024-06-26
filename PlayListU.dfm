object Form1: TForm1
  Left = 308
  Top = 115
  AutoScroll = False
  Caption = 'Week program / Playlist construction'
  ClientHeight = 535
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TJvPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 535
    MultiLine = False
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 685
      Height = 533
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = '&Playlists'
        object Panel2: TJvPanel
          Left = 0
          Top = 0
          Width = 677
          Height = 505
          MultiLine = False
          Align = alClient
          BorderWidth = 2
          TabOrder = 0
          object PrgPanel: TJvPanel
            Left = 3
            Top = 3
            Width = 671
            Height = 126
            HotColor = clTeal
            MultiLine = False
            Align = alTop
            Alignment = taLeftJustify
            BorderWidth = 2
            BorderStyle = bsSingle
            Color = clTeal
            TabOrder = 0
            object Panel3: TJvPanel
              Left = 409
              Top = 3
              Width = 255
              Height = 116
              MultiLine = False
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              object btnNewPrgHour: TSpeedButton
                Left = 8
                Top = 20
                Width = 161
                Height = 25
                Caption = 'New Hour / PlayList'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
                  0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
                  33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = btnNewPrgHourClick
              end
              object btnCopyPrgHour: TSpeedButton
                Left = 8
                Top = 52
                Width = 161
                Height = 25
                Caption = 'Copy Hour / Playlist'
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
                  FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
                  FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
                  007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
                  7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
                  99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
                  99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
                  99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
                  93337FFFF7737777733300000033333333337777773333333333}
                NumGlyphs = 2
                OnClick = btnCopyPrgHourClick
              end
              object btnDeletePrgHour: TSpeedButton
                Left = 8
                Top = 84
                Width = 161
                Height = 25
                Caption = 'Delete Hour / Playlist'
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
                OnClick = btnDeletePrgHourClick
              end
              object btnCheck: TSpeedButton
                Left = 176
                Top = 20
                Width = 73
                Height = 25
                Caption = 'Check'
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
                OnClick = btnCheckClick
              end
              object btnSavePrg: TJvSpeedButton
                Left = 176
                Top = 52
                Width = 73
                Height = 57
                Caption = 'Save'#13#10'Changes'
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
                HotTrackFont.Charset = DEFAULT_CHARSET
                HotTrackFont.Color = clWindowText
                HotTrackFont.Height = -11
                HotTrackFont.Name = 'Tahoma'
                HotTrackFont.Style = []
                NumGlyphs = 2
                OnClick = btnSavePrgClick
              end
            end
            object Panel14: TJvPanel
              Left = 81
              Top = 3
              Width = 328
              Height = 116
              MultiLine = False
              Align = alClient
              BevelOuter = bvNone
              BorderWidth = 4
              Caption = 'Panel14'
              TabOrder = 1
              object Label9: TLabel
                Left = 4
                Top = 4
                Width = 320
                Height = 13
                Align = alTop
                Caption = 'Hour / Playlist'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ProgramsListBox: TListBox
                Left = 4
                Top = 17
                Width = 320
                Height = 95
                Style = lbOwnerDrawFixed
                Align = alClient
                ItemHeight = 13
                Sorted = True
                TabOrder = 0
                OnClick = ProgramsListBoxClick
                OnDrawItem = ProgramsListBoxDrawItem
              end
            end
            object Panel15: TJvPanel
              Left = 3
              Top = 3
              Width = 78
              Height = 116
              MultiLine = False
              Align = alLeft
              BevelOuter = bvNone
              BorderWidth = 4
              TabOrder = 2
              object Label8: TLabel
                Left = 4
                Top = 4
                Width = 70
                Height = 13
                Align = alTop
                Caption = 'Day'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DaysListBox: TListBox
                Left = 4
                Top = 17
                Width = 70
                Height = 95
                Align = alClient
                ItemHeight = 13
                PopupMenu = WeekPopup1
                TabOrder = 0
                OnClick = DaysListBoxClick
              end
            end
          end
          object Panel7: TJvPanel
            Left = 549
            Top = 129
            Width = 125
            Height = 373
            MultiLine = False
            Align = alRight
            BorderStyle = bsSingle
            TabOrder = 1
            object btnLoad: TSpeedButton
              Left = 8
              Top = 8
              Width = 105
              Height = 65
              Caption = 'Load list'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              Layout = blGlyphTop
              NumGlyphs = 2
              OnClick = btnLoadClick
            end
            object btnSave: TSpeedButton
              Left = 8
              Top = 88
              Width = 105
              Height = 65
              Caption = 'Save list'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
                7700333333337777777733333333008088003333333377F73377333333330088
                88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
                000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
                FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
                99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
                99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
                99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
                93337FFFF7737777733300000033333333337777773333333333}
              Layout = blGlyphTop
              NumGlyphs = 2
              OnClick = btnSaveClick
            end
            object btnClear: TSpeedButton
              Left = 8
              Top = 192
              Width = 105
              Height = 25
              Caption = 'New list'
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
              NumGlyphs = 2
              OnClick = btnClearClick
            end
            object Panel16: TJvPanel
              Left = 1
              Top = 323
              Width = 119
              Height = 45
              MultiLine = False
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'Panel16'
              TabOrder = 0
              object btnExit: TBitBtn
                Left = 8
                Top = 4
                Width = 105
                Height = 37
                Caption = 'E&xit'
                ModalResult = 2
                TabOrder = 0
                OnClick = btnExitClick
                Glyph.Data = {
                  DE010000424DDE01000000000000760000002800000024000000120000000100
                  0400000000006801000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
                  F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
                  000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
                  338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
                  45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
                  3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
                  F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
                  000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
                  338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
                  4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
                  8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
                  333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
                  0000}
                NumGlyphs = 2
              end
            end
          end
          object Panel8: TJvPanel
            Left = 3
            Top = 129
            Width = 546
            Height = 373
            MultiLine = False
            Align = alClient
            BorderStyle = bsSingle
            TabOrder = 2
            object TitlePanel: TJvPanel
              Left = 1
              Top = 1
              Width = 540
              Height = 19
              MultiLine = False
              Align = alTop
              BevelInner = bvLowered
              Color = clAqua
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object Panel9: TJvPanel
              Left = 1
              Top = 20
              Width = 540
              Height = 348
              MultiLine = False
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel9'
              TabOrder = 1
              object Panel6: TJvPanel
                Left = 0
                Top = 0
                Width = 540
                Height = 120
                MultiLine = False
                Align = alTop
                BorderWidth = 2
                TabOrder = 0
                object Label2: TLabel
                  Left = 8
                  Top = 10
                  Width = 45
                  Height = 13
                  Caption = 'BPM from'
                end
                object Label3: TLabel
                  Left = 104
                  Top = 10
                  Width = 33
                  Height = 13
                  Caption = 'BPM to'
                end
                object Label4: TLabel
                  Left = 200
                  Top = 10
                  Width = 47
                  Height = 13
                  Caption = 'BPM delta'
                end
                object Label5: TLabel
                  Left = 312
                  Top = 10
                  Width = 41
                  Height = 13
                  Caption = 'Duration'
                end
                object BeatFrom: TMaskEdit
                  Left = 56
                  Top = 8
                  Width = 26
                  Height = 21
                  EditMask = '999;1;0'
                  MaxLength = 3
                  TabOrder = 0
                  Text = '   '
                end
                object BeatTo: TMaskEdit
                  Left = 160
                  Top = 8
                  Width = 26
                  Height = 21
                  EditMask = '999;1;0'
                  MaxLength = 3
                  TabOrder = 1
                  Text = '25 '
                end
                object BeatDelta: TMaskEdit
                  Left = 272
                  Top = 8
                  Width = 26
                  Height = 21
                  EditMask = '999;1;0'
                  MaxLength = 3
                  TabOrder = 2
                  Text = ' 3 '
                end
                object Duration: TMaskEdit
                  Left = 360
                  Top = 8
                  Width = 26
                  Height = 21
                  EditMask = '999;1;0'
                  MaxLength = 3
                  TabOrder = 3
                  Text = '   '
                end
                object Panel12: TJvPanel
                  Left = 3
                  Top = 32
                  Width = 534
                  Height = 85
                  MultiLine = False
                  Align = alBottom
                  Caption = 'Panel12'
                  TabOrder = 4
                  object Label1: TLabel
                    Left = 1
                    Top = 1
                    Width = 532
                    Height = 13
                    Align = alTop
                    Caption = 'Program start'
                  end
                  object StartListBox: TJvTextListBox
                    Left = 1
                    Top = 14
                    Width = 411
                    Height = 70
                    Align = alClient
                    ItemHeight = 13
                    TabOrder = 0
                    OnKeyUp = StartListBoxKeyUp
                  end
                  object Panel13: TJvPanel
                    Left = 412
                    Top = 14
                    Width = 121
                    Height = 70
                    MultiLine = False
                    Align = alRight
                    BevelOuter = bvNone
                    TabOrder = 1
                    object btnStart: TSpeedButton
                      Left = 48
                      Top = 2
                      Width = 65
                      Height = 57
                      Caption = 'Select'
                      Glyph.Data = {
                        76010000424D7601000000000000760000002800000020000000100000000100
                        04000000000000010000120B0000120B00001000000000000000000000000000
                        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                        555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
                        0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
                        B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
                        FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
                        FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
                        FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
                        0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
                        0555555555777777755555555555555555555555555555555555}
                      Layout = blGlyphTop
                      NumGlyphs = 2
                      OnClick = btnStartClick
                    end
                    object SpinButton1: TSpinButton
                      Left = 8
                      Top = 2
                      Width = 33
                      Height = 57
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
                      OnDownClick = SpinButton1DownClick
                      OnUpClick = SpinButton1UpClick
                    end
                  end
                end
              end
              object Panel5: TJvPanel
                Left = 0
                Top = 120
                Width = 540
                Height = 140
                MultiLine = False
                Align = alClient
                BorderWidth = 2
                Caption = 'Panel5'
                TabOrder = 1
                object Label6: TLabel
                  Left = 3
                  Top = 3
                  Width = 534
                  Height = 13
                  Align = alTop
                  Caption = 'Main program'
                end
                object BodyListBox: TJvTextListBox
                  Left = 3
                  Top = 16
                  Width = 413
                  Height = 121
                  Align = alClient
                  ItemHeight = 13
                  TabOrder = 0
                  OnKeyUp = StartListBoxKeyUp
                end
                object Panel10: TJvPanel
                  Left = 416
                  Top = 16
                  Width = 121
                  Height = 121
                  MultiLine = False
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object btnBody: TSpeedButton
                    Left = 48
                    Top = 2
                    Width = 65
                    Height = 57
                    Caption = 'Select'
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000120B0000120B00001000000000000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                      555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
                      0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
                      B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
                      FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
                      FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
                      FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
                      0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
                      0555555555777777755555555555555555555555555555555555}
                    Layout = blGlyphTop
                    NumGlyphs = 2
                    OnClick = btnStartClick
                  end
                  object SpinButton2: TSpinButton
                    Left = 8
                    Top = 2
                    Width = 33
                    Height = 57
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
                    OnDownClick = SpinButton1DownClick
                    OnUpClick = SpinButton1UpClick
                  end
                  object RepeatCheck: TCheckBox
                    Left = 24
                    Top = 80
                    Width = 81
                    Height = 17
                    Caption = 'Repeat'
                    Checked = True
                    Enabled = False
                    State = cbChecked
                    TabOrder = 1
                  end
                end
              end
              object Panel4: TJvPanel
                Left = 0
                Top = 260
                Width = 540
                Height = 88
                MultiLine = False
                Align = alBottom
                BorderWidth = 2
                TabOrder = 2
                object Label7: TLabel
                  Left = 3
                  Top = 3
                  Width = 534
                  Height = 13
                  Align = alTop
                  Caption = 'Program end'
                end
                object EndListBox: TJvTextListBox
                  Left = 3
                  Top = 16
                  Width = 413
                  Height = 69
                  Align = alClient
                  ItemHeight = 13
                  TabOrder = 0
                  OnKeyUp = StartListBoxKeyUp
                end
                object Panel11: TJvPanel
                  Left = 416
                  Top = 16
                  Width = 121
                  Height = 69
                  MultiLine = False
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object btnEnd: TSpeedButton
                    Left = 48
                    Top = 2
                    Width = 65
                    Height = 57
                    Caption = 'Select'
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000120B0000120B00001000000000000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                      555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
                      0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
                      B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
                      FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
                      FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
                      FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
                      0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
                      0555555555777777755555555555555555555555555555555555}
                    Layout = blGlyphTop
                    NumGlyphs = 2
                    OnClick = btnStartClick
                  end
                  object SpinButton3: TSpinButton
                    Left = 8
                    Top = 2
                    Width = 33
                    Height = 57
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
                    OnDownClick = SpinButton1DownClick
                    OnUpClick = SpinButton1UpClick
                  end
                end
              end
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = '&Weekly program'
        ImageIndex = 1
        object Splitter1: TSplitter
          Left = 0
          Top = 0
          Width = 677
          Height = 3
          Cursor = crVSplit
          Align = alTop
          AutoSnap = False
        end
        object Panel19: TJvPanel
          Left = 0
          Top = 3
          Width = 677
          Height = 502
          MultiLine = False
          Align = alClient
          TabOrder = 0
          object Panel20: TJvPanel
            Left = 1
            Top = 1
            Width = 675
            Height = 32
            MultiLine = False
            Align = alTop
            BevelInner = bvLowered
            TabOrder = 0
            object MinuteButton1: TJvSpeedButton
              Left = 4
              Top = 4
              Width = 85
              Height = 25
              Caption = '30 minutes'
              DropDownMenu = MinutesPopUp1
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
                003337777777777777F330FFFFFFFFFFF03337F333FFFFF337F330FFF70007FF
                F03337F33777773F37F330FF08FFF80FF03337F373333373F7F330F78FFFFF87
                F03337F7F3333337F7F330F0FFFFFFF0F03337F7F333FFF7F7F330F0FFF900F0
                F03337F7F3377737F7F330F0FFF0FFF0F03337F7F337F337F7F330F78FF0FF87
                F03337F73F37F33737F330FF08F0F80FF03337F373F7FF7337F330FFF70007FF
                F03337F33777773FF7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
                F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
                333337FFFFFFFF77333330000000000333333777777777733333}
              HotTrackFont.Charset = DEFAULT_CHARSET
              HotTrackFont.Color = clWindowText
              HotTrackFont.Height = -11
              HotTrackFont.Name = 'Tahoma'
              HotTrackFont.Style = []
              Layout = blGlyphLeft
              NumGlyphs = 2
              WordWrap = True
            end
          end
          object ProgramGrid1: TJvStringGrid
            Left = 1
            Top = 33
            Width = 675
            Height = 468
            Align = alClient
            ColCount = 8
            DefaultColWidth = 85
            DefaultRowHeight = 20
            RowCount = 10
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing]
            TabOrder = 1
            Alignment = taLeftJustify
            FixedFont.Charset = DEFAULT_CHARSET
            FixedFont.Color = clWindowText
            FixedFont.Height = -11
            FixedFont.Name = 'MS Shell Dlg 2'
            FixedFont.Style = []
          end
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'pll'
    Filter = 'Play List files|*.pll|Program files|*.prg|All Files|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 512
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'pll'
    Filter = 'Play List Files|*.pll|All Files|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 544
    Top = 8
  end
  object FormStorage1: TJvFormStorage
    AppStoragePath = '%FORM_NAME%\'
    MinMaxInfo.MinTrackHeight = 509
    MinMaxInfo.MinTrackWidth = 540
    StoredProps.Strings = (
      'N1Hour1.Checked'
      'N30Minutes1.Checked'
      'N15Minutes1.Checked')
    StoredValues = <>
    Left = 576
    Top = 8
  end
  object WeekPopup1: TPopupMenu
    Left = 472
    Top = 8
    object LoadWeek1: TMenuItem
      Caption = 'Load Week'
      OnClick = LoadWeek1Click
    end
    object LoadDay1: TMenuItem
      Caption = 'Load Day'
      OnClick = LoadDay1Click
    end
    object SaveWeek1: TMenuItem
      Caption = 'Save Week'
      OnClick = SaveWeek1Click
    end
    object SaveDay1: TMenuItem
      Caption = 'Save Day'
      OnClick = SaveDay1Click
    end
  end
  object OpenDialog2: TOpenDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 207
    Top = 9
  end
  object SaveDialog2: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 239
    Top = 9
  end
  object MinutesPopUp1: TPopupMenu
    Left = 440
    Top = 8
    object N1Hour1: TMenuItem
      Caption = '&1 Hour'
      Checked = True
      GroupIndex = 1
      RadioItem = True
      OnClick = MinutesPopUpChange1
    end
    object N30Minutes1: TMenuItem
      Caption = '&30 Minutes'
      GroupIndex = 1
      RadioItem = True
      OnClick = MinutesPopUpChange1
    end
    object N15Minutes1: TMenuItem
      Caption = '1&5 Minutes'
      GroupIndex = 1
      RadioItem = True
      OnClick = MinutesPopUpChange1
    end
  end
end
