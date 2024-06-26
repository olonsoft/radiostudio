object Form1: TForm1
  Left = 210
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ρυθμίσεις'
  ClientHeight = 404
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 459
    Height = 365
    ActivePage = TabSheet5
    Align = alTop
    HotTrack = True
    Images = ImageList1
    MultiLine = True
    TabOrder = 0
    object TabSheet5: TTabSheet
      Caption = 'Database'
      object Label18: TLabel
        Left = 12
        Top = 100
        Width = 108
        Height = 13
        Caption = 'Επιλογή της Database'
      end
      object btnNetDir: TSpeedButton
        Left = 152
        Top = 96
        Width = 161
        Height = 25
        Caption = 'Common Network Directory'
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
        NumGlyphs = 2
        OnClick = btnNetDirClick
      end
      object cbxAliases: TComboBox
        Left = 0
        Top = 128
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbxAliasesChange
      end
      object CheckBox1: TCheckBox
        Left = 32
        Top = 48
        Width = 97
        Height = 17
        Caption = 'Auto Configure'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 1
      end
      object NetDirLabel: TEdit
        Left = 152
        Top = 128
        Width = 297
        Height = 21
        TabOrder = 2
      end
      object StartupRadioGroup: TRadioGroup
        Left = 8
        Top = 176
        Width = 97
        Height = 97
        Caption = 'Startup mode'
        Items.Strings = (
          'Last tate'
          'Auto'
          'Live')
        TabOrder = 3
        OnClick = StartupRadioGroupClick
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Γενικά'
      ImageIndex = 1
      object Label8: TLabel
        Left = 4
        Top = 148
        Width = 60
        Height = 26
        Alignment = taCenter
        Caption = 'Max Screen '#13#10'Log lines'
      end
      object DataDirButton1: TSpeedButton
        Left = 8
        Top = 8
        Width = 125
        Height = 22
        Caption = 'Κατάλογος Data'
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
        NumGlyphs = 2
        OnClick = DataDirButton1Click
      end
      object AudioFilesDirButton1: TSpeedButton
        Left = 8
        Top = 104
        Width = 125
        Height = 22
        Caption = 'Κατάλογος Audio'
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
        NumGlyphs = 2
        OnClick = AudioFilesDirButton1Click
      end
      object Label5: TLabel
        Left = 4
        Top = 180
        Width = 285
        Height = 13
        Caption = 'Κατάλογοι με αρχεία ήχου (θα ψάξει και υποκαταλόγους)'
      end
      object AddButton1: TSpeedButton
        Left = 360
        Top = 244
        Width = 80
        Height = 26
        Caption = 'Πρόσθεσε'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333333333333333333333333333333333FF333333333333
          3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
          E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
          E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
          E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
          000033333373FF77777733333330003333333333333777333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = AddButton1Click
      end
      object DeleteButton1: TSpeedButton
        Left = 360
        Top = 188
        Width = 80
        Height = 26
        Caption = 'Διαγραφή'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFF333333333333000333333333
          3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
          3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
          0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
          BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
          33337777773FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = DeleteButton1Click
      end
      object UpdateButton1: TSpeedButton
        Left = 360
        Top = 216
        Width = 80
        Height = 26
        Caption = 'Αλλαγή'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
        OnClick = UpdateButton1Click
      end
      object BrowseButton1: TSpeedButton
        Left = 360
        Top = 280
        Width = 80
        Height = 26
        Caption = 'Ψάξε'
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
        NumGlyphs = 2
        OnClick = BrowseButton1Click
      end
      object TrafficDirButton1: TSpeedButton
        Left = 8
        Top = 32
        Width = 125
        Height = 22
        Caption = 'Κατάλογος Τraffic'
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
        NumGlyphs = 2
        OnClick = TrafficDirButton1Click
      end
      object PlayListsDirButton1: TSpeedButton
        Left = 8
        Top = 80
        Width = 125
        Height = 22
        Caption = 'Κατάλογος Play lists'
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
        NumGlyphs = 2
        OnClick = PlayListsDirButton1Click
      end
      object btnPrograms: TSpeedButton
        Left = 8
        Top = 56
        Width = 125
        Height = 22
        Caption = 'Κατάλογος Programs'
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
        NumGlyphs = 2
        OnClick = btnProgramsClick
      end
      object LogLines: TMaskEdit
        Left = 68
        Top = 152
        Width = 33
        Height = 21
        EditMask = '9999;1;0'
        MaxLength = 4
        TabOrder = 0
        Text = '    '
        OnChange = LogLinesChange
      end
      object SearchDirEdit1: THEdit
        Left = 0
        Top = 280
        Width = 350
        Height = 21
        TabOrder = 1
        SpHint = True
      end
      object AutoPlayCheck1: TCheckBox
        Left = 204
        Top = 152
        Width = 149
        Height = 17
        Caption = 'Αυτόματο PLAY στο Cue'
        TabOrder = 2
        OnClick = AutoPlayCheck1Click
      end
      object DataDir1: TEdit
        Left = 136
        Top = 8
        Width = 300
        Height = 21
        TabOrder = 3
      end
      object TrafficDir1: TEdit
        Left = 136
        Top = 32
        Width = 300
        Height = 21
        TabOrder = 4
      end
      object ProgramsDirLabel: TEdit
        Left = 136
        Top = 56
        Width = 300
        Height = 21
        TabOrder = 5
      end
      object PlayListsDirLabel1: TEdit
        Left = 136
        Top = 80
        Width = 300
        Height = 21
        TabOrder = 7
      end
      object AudioFilesDir1: TEdit
        Left = 136
        Top = 104
        Width = 300
        Height = 21
        TabOrder = 6
      end
      object SearchDirsList: TListBox
        Left = 0
        Top = 192
        Width = 345
        Height = 81
        ItemHeight = 13
        TabOrder = 8
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Κατηγορίες σποτ'
      ImageIndex = 2
      object AddButton2: TSpeedButton
        Left = 136
        Top = 236
        Width = 89
        Height = 37
        Caption = 'Add Category'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          333333777777777F33333330B00000003333337F7777777F3333333000000000
          333333777777777F333333330EEEEEE033333337FFFFFF7F3333333300000000
          333333377777777F3333333330BFBFB03333333373333373F33333330BFBFBFB
          03333337F33333F7F33333330FBFBF0F03333337F33337F7F33333330BFBFB0B
          03333337F3F3F7F7333333330F0F0F0033333337F7F7F773333333330B0B0B03
          3333333737F7F7F333333333300F0F03333333337737F7F33333333333300B03
          333333333377F7F33333333333330F03333333333337F7F33333333333330B03
          3333333333373733333333333333303333333333333373333333}
        Layout = blGlyphTop
        NumGlyphs = 2
        OnClick = AddButton2Click
      end
      object Label9: TLabel
        Left = 8
        Top = 228
        Width = 73
        Height = 13
        Caption = 'Category Name'
      end
      object Label10: TLabel
        Left = 8
        Top = 268
        Width = 76
        Height = 13
        Caption = 'Stored Directory'
      end
      object UpdateButton2: TSpeedButton
        Left = 228
        Top = 236
        Width = 93
        Height = 37
        Caption = 'Update Category'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        Layout = blGlyphTop
        NumGlyphs = 2
        OnClick = UpdateButton2Click
      end
      object BrowseButton2: TSpeedButton
        Left = 300
        Top = 280
        Width = 117
        Height = 29
        Caption = 'Browse'
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
        NumGlyphs = 2
        OnClick = BrowseButton2Click
      end
      object DeleteButton2: TSpeedButton
        Left = 324
        Top = 236
        Width = 93
        Height = 37
        Caption = 'Delete Category'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFF333333333333000333333333
          3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
          3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
          0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
          BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
          33337777773FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
        OnClick = DeleteButton2Click
      end
      object Panel1: TJvPanel
        Left = 4
        Top = 4
        Width = 437
        Height = 217
        BevelOuter = bvLowered
        BorderWidth = 2
        Caption = 'Panel1'
        TabOrder = 0
        object CategoriesList1: TListBox
          Left = 3
          Top = 21
          Width = 431
          Height = 193
          Align = alClient
          ItemHeight = 16
          Sorted = True
          Style = lbOwnerDrawFixed
          TabOrder = 0
          OnClick = CategoriesList1Click
          OnDrawItem = CategoriesList1DrawItem
        end
        object HeaderControl1: THeaderControl
          Left = 3
          Top = 3
          Width = 431
          Height = 18
          BorderWidth = 1
          DragReorder = False
          Sections = <
            item
              ImageIndex = -1
              Text = 'Category Name'
              Width = 150
            end
            item
              ImageIndex = -1
              Text = 'Stored Directory'
              Width = 280
            end>
          OnSectionResize = HeaderControl1SectionResize
        end
      end
      object CategoryEdit1: THEdit
        Left = 8
        Top = 244
        Width = 121
        Height = 21
        TabOrder = 1
        SpHint = True
      end
      object CategoryDirEdit1: THEdit
        Left = 8
        Top = 284
        Width = 281
        Height = 21
        TabOrder = 2
        SpHint = True
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Διαφημιστικά'
      ImageIndex = 3
      object Label1: TLabel
        Left = 8
        Top = 10
        Width = 92
        Height = 13
        Caption = 'Check spots before'
      end
      object Label2: TLabel
        Left = 144
        Top = 10
        Width = 102
        Height = 13
        Caption = 'minutes of actual time'
      end
      object Label4: TLabel
        Left = 144
        Top = 34
        Width = 102
        Height = 13
        Caption = 'minutes of actual time'
      end
      object Label3: TLabel
        Left = 16
        Top = 34
        Width = 85
        Height = 13
        Caption = 'Load spots before'
      end
      object CheckBeforeSpin: TSpinEdit
        Left = 104
        Top = 8
        Width = 36
        Height = 22
        EditorEnabled = False
        MaxValue = 10
        MinValue = 0
        TabOrder = 0
        Value = 0
        OnChange = CheckBeforeSpinChange
      end
      object LoadBeforeSpin: TSpinEdit
        Left = 104
        Top = 32
        Width = 36
        Height = 22
        EditorEnabled = False
        MaxValue = 10
        MinValue = 0
        TabOrder = 1
        Value = 0
        OnChange = LoadBeforeSpinChange
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Random Play'
      ImageIndex = 4
      object Label6: TLabel
        Left = 48
        Top = 184
        Width = 91
        Height = 13
        Caption = 'Διάρκεια Fade Out'
      end
      object Label11: TLabel
        Left = 184
        Top = 184
        Width = 25
        Height = 13
        Caption = 'msec'
      end
      object GroupBox1: TGroupBox
        Left = 40
        Top = 44
        Width = 345
        Height = 125
        Caption = 'Εάν δεν έχει οριστεί από την database ή το cue τότε'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label12: TLabel
          Left = 8
          Top = 28
          Width = 177
          Height = 13
          Caption = 'Εάν η διάρκεια είναι μικρότερη από'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 8
          Top = 60
          Width = 190
          Height = 13
          Caption = 'Θεώρησε σημείο μίξης με το επόμενο '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 240
          Top = 60
          Width = 96
          Height = 13
          Caption = 'msec πριν το τέλος'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 220
          Top = 92
          Width = 96
          Height = 13
          Caption = 'msec πριν το τέλος'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 8
          Top = 92
          Width = 159
          Height = 13
          Caption = 'Αλλιώς το σημείο μίξης θα είναι'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 232
          Top = 28
          Width = 30
          Height = 13
          Caption = 'λεπτά'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object AudioTime: TMaskEdit
          Left = 192
          Top = 24
          Width = 33
          Height = 21
          EditMask = '!99:99;1;0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 0
          Text = '  :  '
          OnChange = AudioTimeChange
        end
        object JinglesMix: TMaskEdit
          Left = 200
          Top = 56
          Width = 33
          Height = 21
          EditMask = '9999;1;0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 4
          ParentFont = False
          TabOrder = 1
          Text = '    '
          OnChange = JinglesMixChange
        end
        object SongsMix: TMaskEdit
          Left = 172
          Top = 88
          Width = 41
          Height = 21
          EditMask = '99999;1;0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentFont = False
          TabOrder = 2
          Text = '     '
          OnChange = SongsMixChange
        end
      end
      object DefFadeOut: TMaskEdit
        Left = 144
        Top = 180
        Width = 33
        Height = 21
        EditMask = '9999;1;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 1
        Text = '    '
        OnChange = DefFadeOutChange
      end
    end
    object AudioTab: TTabSheet
      BorderWidth = 2
      Caption = 'Ήχος'
      ImageIndex = 5
      object Label7: TLabel
        Left = 0
        Top = 4
        Width = 105
        Height = 13
        Caption = 'Επιλογή κάρτας ήχου'
      end
      object PlayButton1: TSpeedButton
        Left = 0
        Top = 164
        Width = 185
        Height = 22
        Caption = 'Kάρτα ήχου που θα παίζει'
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
        NumGlyphs = 2
        OnClick = PlayButton1Click
      end
      object CueButton1: TSpeedButton
        Left = 0
        Top = 220
        Width = 185
        Height = 22
        Caption = 'Κάρτα ήχου για CUE'
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
        NumGlyphs = 2
        OnClick = CueButton1Click
      end
      object TreeView1: TTreeView
        Left = 0
        Top = 20
        Width = 441
        Height = 137
        Indent = 19
        TabOrder = 0
        OnChange = TreeView1Change
      end
      object PlayPanel1: TJvPanel
        Left = 0
        Top = 188
        Width = 329
        Height = 21
        Caption = 'PlayPanel1'
        TabOrder = 1
      end
      object CuePanel1: TJvPanel
        Left = 0
        Top = 244
        Width = 329
        Height = 21
        Caption = 'CuePanel1'
        TabOrder = 2
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Χρονικοί περίοδοι'
      ImageIndex = 6
      object Panel2: TJvPanel
        Left = 44
        Top = 4
        Width = 357
        Height = 309
        BevelOuter = bvLowered
        Caption = 'Panel2'
        TabOrder = 0
        object ReplaceButton: TSpeedButton
          Left = 188
          Top = 188
          Width = 153
          Height = 25
          Caption = 'Αντικατέστησε'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF33339993707399933333773337F3777FF3399933000339
            9933377333777F3377F3399333707333993337733337333337FF993333333333
            399377F33333F333377F993333303333399377F33337FF333373993333707333
            333377F333777F333333993333101333333377F333777F3FFFFF993333000399
            999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
            99933773FF777F3F777F339993707399999333773F373F77777F333999999999
            3393333777333777337333333999993333333333377777333333}
          NumGlyphs = 2
          OnClick = ReplaceButtonClick
        end
        object Header1: THeaderControl
          Left = 1
          Top = 1
          Width = 449
          Height = 17
          Align = alNone
          DragReorder = False
          Sections = <
            item
              ImageIndex = -1
              Text = 'Ονομασία'
              Width = 150
            end
            item
              ImageIndex = -1
              Text = 'Ημερομηνία από'
              Width = 100
            end
            item
              ImageIndex = -1
              Text = 'Ημερομηνία έως'
              Width = 100
            end>
          Style = hsFlat
          OnSectionResize = Header1SectionResize
        end
        object ListBox1: TListBox
          Left = 4
          Top = 20
          Width = 349
          Height = 165
          ItemHeight = 16
          Style = lbOwnerDrawFixed
          TabOrder = 1
          OnClick = ListBox1Click
          OnDrawItem = ListBox1DrawItem
        end
        object NameEdit1: TEdit
          Left = 4
          Top = 192
          Width = 145
          Height = 21
          MaxLength = 17
          TabOrder = 2
        end
        object GroupBox2: TGroupBox
          Left = 24
          Top = 220
          Width = 149
          Height = 85
          Caption = 'Από'
          TabOrder = 3
          object Label19: TLabel
            Left = 69
            Top = 36
            Width = 64
            Height = 13
            Caption = 'Ημέρες πίσω'
          end
          object Label20: TLabel
            Left = 68
            Top = 60
            Width = 37
            Height = 13
            Caption = 'Χρόνος'
          end
          object RadioFrom1: TRadioButton
            Left = 12
            Top = 16
            Width = 65
            Height = 17
            Caption = 'Σήμερα'
            TabOrder = 0
          end
          object RadioFrom2: TRadioButton
            Left = 13
            Top = 36
            Width = 20
            Height = 17
            Caption = 'RadioFrom2'
            TabOrder = 1
          end
          object RadioFrom3: TRadioButton
            Left = 13
            Top = 56
            Width = 48
            Height = 17
            Caption = 'RadioFrom3'
            TabOrder = 2
          end
          object DaysEdit1: TMaskEdit
            Left = 32
            Top = 32
            Width = 33
            Height = 21
            EditMask = '999;0;_'
            MaxLength = 3
            TabOrder = 3
            Text = 'DaysEdit1'
          end
          object YearsEdit1: TMaskEdit
            Left = 32
            Top = 56
            Width = 33
            Height = 21
            EditMask = '9999;0;_'
            MaxLength = 4
            TabOrder = 4
            Text = 'YearsEdit1'
          end
        end
        object GroupBox3: TGroupBox
          Left = 188
          Top = 220
          Width = 149
          Height = 85
          Caption = 'Έως'
          TabOrder = 4
          object Label21: TLabel
            Left = 69
            Top = 36
            Width = 64
            Height = 13
            Caption = 'Ημέρες πίσω'
          end
          object Label22: TLabel
            Left = 68
            Top = 60
            Width = 37
            Height = 13
            Caption = 'Χρόνος'
          end
          object RadioTo1: TRadioButton
            Left = 12
            Top = 16
            Width = 65
            Height = 17
            Caption = 'Σήμερα'
            TabOrder = 0
          end
          object RadioTo2: TRadioButton
            Left = 13
            Top = 36
            Width = 20
            Height = 17
            Caption = 'RadioTo2'
            TabOrder = 1
          end
          object RadioTo3: TRadioButton
            Left = 13
            Top = 56
            Width = 20
            Height = 17
            Caption = 'RadioTo3'
            TabOrder = 2
          end
          object DaysEdit2: TMaskEdit
            Left = 32
            Top = 32
            Width = 33
            Height = 21
            EditMask = '999;0;_'
            MaxLength = 3
            TabOrder = 3
            Text = 'DaysEdit2'
          end
          object YearsEdit2: TMaskEdit
            Left = 32
            Top = 56
            Width = 33
            Height = 21
            EditMask = '9999;0;_'
            MaxLength = 4
            TabOrder = 4
            Text = 'YearsEdit2'
          end
        end
      end
    end
  end
  object CancelBtn: TBitBtn
    Left = 88
    Top = 368
    Width = 119
    Height = 33
    Caption = 'Έξοδος'
    TabOrder = 1
    OnClick = CancelBtnClick
    Kind = bkCancel
  end
  object OKbtn: TBitBtn
    Left = 336
    Top = 368
    Width = 119
    Height = 33
    Caption = 'Σώσε και έξοδος'
    TabOrder = 2
    OnClick = OKbtnClick
    Kind = bkOK
  end
  object SaveBtn: TBitBtn
    Left = 216
    Top = 368
    Width = 113
    Height = 33
    Caption = 'Σώσε'
    TabOrder = 3
    OnClick = SaveBtnClick
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
    NumGlyphs = 2
  end
  object ImageList1: TImageList
    Left = 428
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000028214E82D47544000401
      00000000000000000000FFFFFFE70000000000000000DC14B18100000000EC14
      B1815C224E8200000000050000000000000000000000000000000000000E0000
      0000DC14B1810000000011218A0ED414B181040100000500000000000000020E
      02028A0E0202000000000000000000000000EC14B181020E8A0E24EA0302BD40
      F7BF08040000010000008CEC0302FFFFFFFF90ED0302FFFFFFFFD47544002821
      4E82505260007800800101203000F64F800100000000362030000000F64F0100
      000430003620000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00007F7F00000000BFBF00BFBF00BF
      BF0000000000000000000000000000000000FF0000FF0000FF00000000FFFF00
      FFFF00FFFF000000000000000000000000000000000000000000000000000000
      00BFBF00BFBF00BFBF00000000FFFF00FFFF00FFFF00000000FFFF00FFFF00FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000007F7F007F7F007F7F0000000000FF0000FF0000FF00000000000000
      000000000000000000BFBF00BFBF00BFBF000000000000000000000000000000
      00BFBF00BFBF00BFBF00000000FFFF00FFFF00FFFF00000000FFFF00FFFF00FF
      FF000000000000000000000000000000007F7F007F7F007F7F00000000BFBF00
      BFBF00BFBF00000000FFFF00FFFF00FFFF00000000FFFF00FFFF00FFFF000000
      00FFFF00FFFF00FFFF000000007F7F007F7FFFFFFFFFFFFFFFFFFF000000FFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFC7BFF0000F000000F000
      0FFF837FF0000F000000FDFB7FFF03EFF0000F000000F9F82FFE01DFF0000F00
      0000FDFB7FFE01BFF0000F000000F0000FF8017FF0000F000000FDF1FFF001FF
      F0000F000000F9EAFFF0010FF0000F000000FDDB7FF001FFF0000F000000F000
      0FF8017FF0000F000000FDBBBFFE01BFF0000F000000F87BCFFE01DFF0000F00
      0000FDFBFFFF03EFF0000F000000F0000FFF837FF0000F000000FD555FFFC7BF
      F0000F000000FDDDDFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC07FFFC03FFF83FFF03F
      FFFC403FFF803FFE7CFFF0200FFE001FFE007FFDFF7FF0200FFF000FFC007FF8
      1FBFF0200FFF800FFC007FF818BFF0200FFE000FFE007FF4105FF0200FF0000F
      F8007FF4105FF0200FF0000FF8007FF4105FF0200FF0000FF8007FF7E8DFF020
      0FF0000FF8007FF7C7DFF03C7FF0000FF8007FFB83BFF0001FF0000FF8003FFB
      01BFF0000FF0000FFE003FFDFF7FF0000FF2000FFE007FFE7CFFF0001FFFC00F
      FC00FFFF83FFFE003FFFC00FFC01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000018001800040001012000D74F60000000000036200000004000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0000F00F0000F00F0000F00F000
      0F00F0000F00F0000F00F0000F00F0000F00F0000F00F0000F00F0000F00F000
      0F00F0000F00F0000F00F0000F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000600078000C0001012000FF4FA0050000000036200000551504000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF00FFFFFF7F7F7F
      7F000000FFFFFFFFFF007F7F7F000000FF00FFFFFF7F7F7F7F00FFFFFFFFFFFF
      FF007F7F7FFFFFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF7F7F7F
      7F00FFFFFFFFFFFFFF007F7F7FFFFFFFFF00FFFFFF7F7F7F7F00FFFFFFFFFFFF
      FF007F7F7FFFFFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF0000FFFF000000FF0000FFFF00
      00007F7F7FFFFFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000007F7F7F7F007F7F7F7F7F7F
      7F007F7F7F7F7F7F7F007F7F7F7F7F7F7F007F7F7F7F7F7F7F007F7F7F7F7F7F
      7F007F7F7F7F7F7F7F007F7F7F000000000000000000000000007F7F7F000000
      000000000000000000007F7F7F000000000000000000000000007F7F7F000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000007F7F7F00000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF0000000000000000007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF0000000000000000000000
      00000000FF00000000000000000000000000000000FFFFFFFF00FFFFFF7F7F7F
      7F00FFFFFFFFFFFFFF007F7F7FFFFFFFFF00FFFFFF7F7F7F7F00FFFFFFFFFFFF
      FF007F7F7FFFFFFFFF00FFFFFF0000000000000000BFBFBFBF00BFBFBFBFBFBF
      BF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFF
      FF00000000FFFFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000007F7F7F00BFBFBF007F7F7F00000000000000
      00000000000000000000000000000000FF00000000000000FF00FFFFFF7F7F7F
      7F000000FFFFFFFFFF007F7F7F000000FF00FFFFFF7F7F7F7F00FFFFFFFFFFFF
      FF007F7F7FFFFFFFFF00FFFFFF0000000000000000BFBFBFBF00BFBFBFBFBFBF
      BF00BFBFBF0000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF0000000000000000007F7F7F00000000000000
      FF000000FF0000000000000000000000000000000000FF000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      00007F7F7F007F7F7F0000000000BFBFBF00BFBFBF00BFBFBF00000000000000
      000000000000000000000000FF00000000000000007F7F7F7F007F7F7F7F7F7F
      7F007F7F7F7F7F7F7F007F7F7F7F7F7F7F007F7F7F7F7F7F7F007F7F7F7F7F7F
      7F007F7F7F7F7F7F7F007F7F7F0000000000000000BFBFBFBF00BFBFBFBFBFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF00000000000000000000000000FF000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F0000000000BFBFBF00BFBFBF00BFBFBF00000000000000
      0000000000000000FF000000000000000000000000FFFFFFFF00FFFFFF7F7F7F
      7F00FFFFFFFFFFFFFF007F7F7FFFFFFFFF00FFFFFF7F7F7F7F00FFFFFFFFFFFF
      FF007F7F7FFFFFFFFF00FFFFFF0000000000000000BFBFBFBF00BFBFBFBFBFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000FFFFFF
      FF00000000000000000000000000000000007F7F7F007F7F7F00000000007F7F
      7F007F7F7F007F7F7F000000FF007F7F7F007F7F7F00FF0000007F7F7F007F7F
      7F000000FF007F7F7F007F7F7F007F7F7F000000000000000000000000007F7F
      7F007F7F7F007F7F7F000000000000000000BFBFBF00BFBFBF00000000000000
      00000000FF00000000000000000000000000000000000000FF00FFFFFF7F7F7F
      7F000000FFFFFFFFFF007F7F7F000000FF00FFFFFF7F7F7F7F000000FFFFFFFF
      FF007F7F7F000000FF00FFFFFF0000000000000000BFBFBFBF00BFBFBFBFBFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000000000000000FF000000000000000000
      00000000FF00000000000000000000000000000000007F7F7F0000000000BFBF
      BF00BFBFBF00BFBFBF0000000000BFBFBF0000000000BFBFBF007F7F7F000000
      0000000000000000000000000000000000000000007F7F7F7F007F7F7F7F7F7F
      7F007F7F7F7F7F7F7F007F7F7F7F7F7F7F007F7F7F7F7F7F7F007F7F7F7F7F7F
      7F007F7F7F7F7F7F7F007F7F7F0000000000000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF00000000000000000000000000FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF0000000000000000007F7F7F00000000000000
      00000000000000000000000000000000FF0000000000FF000000000000000000
      FF0000000000000000000000000000000000000000007F7F7F00000000007F7F
      7F007F7F7F007F7F7F0000000000BFBFBF0000000000BFBFBF007F7F7F000000
      00000000FF000000FF000000FF000000FF00000000FFFFFFFF00FFFFFF7F7F7F
      7F00FFFFFFFFFFFFFF007F7F7FFFFFFFFF00FFFFFF7F7F7F7F00FFFFFFFFFFFF
      FF007F7F7FFFFFFFFF00FFFFFF0000000000000000BFBFBFBF00000000000000
      0000BFBFBF00000000000000000000000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000000000000000000000000000000000000000BFBFBF0000000000BFBF
      BF00BFBFBF00BFBFBF0000000000BFBFBF0000000000BFBFBF007F7F7F000000
      000000000000000000000000000000000000000000000000FF00FFFFFF7F7F7F
      7F000000FFFFFFFFFF007F7F7F000000FF00FFFFFF7F7F7F7F000000FFFFFFFF
      FF007F7F7F000000FF00FFFFFF0000000000000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF00000000000000000000000000FFFFFF000000000000FF000000FF
      0000FFFF000000000000FFFFFF00000000007F7F7F007F7F7F00000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FF0000007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF000000000000000000BFBFBF00BFBFBF00000000000000
      00000000FF000000000000000000000000000000007F7F7F7F007F7F7F7F7F7F
      7F007F7F7F7F7F7F7F007F7F7F7F7F7F7F007F7F7F7F7F7F7F007F7F7F7F7F7F
      7F007F7F7F7F7F7F7F007F7F7F0000000000000000BFBFBFBF00000000000000
      0000BFBFBF00000000000000000000000000FFFFFF0000000000FF00FF0000FF
      0000FF00FF0000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF00BFBFBF00000000007F7F7F00BFBFBF00BFBFBF00000000000000
      0000000000000000FF000000000000000000000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF007F7F7FFFFFFFFF00FFFFFF7F7F7F7F00FFFFFFFFFFFF
      FF007F7F7FFFFFFFFF00FFFFFF0000000000000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF00000000000000000000000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF0000000000000000007F7F7F00000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000BFBFBF00BFBFBF00000000007F7F7F007F7F7F00BFBFBF00000000000000
      000000000000000000000000FF0000000000000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF007F7F7F000000FF00FFFFFF7F7F7F7F000000FFFFFFFF
      FF007F7F7F000000FF00FFFFFF0000000000000000FFFFFFFF00FFFFFF000000
      FF00FFFFFF00000000000000000000000000FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF007F7F7F007F7F7F007F7F7F007F7F7F00000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F00000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      00000000000000000000BFBFBF00000000007F7F7F0000000000000000000000
      00000000FF00000000000000000000000000FF0000FFFF000000FF0000FFFF00
      0000FF0000FFFF000000BFBFBFBFBFBFBF00BFBFBFBFBFBFBF00FF0000FFFF00
      0000FF0000FFFF000000FF0000FFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000FF0000FFFF000000FF0000FFFF00
      0000FF0000FFFF000000FF0000FFFF000000FF0000FFFF000000FF0000FFFF00
      0000FF0000FFFF000000FF0000FFFF0000000000000000000000000000000000
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
      0000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000BFBFBFBF00BFBFBFBFBFBF
      BF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFF
      FF00000000FFFFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000BFBFBFBF00BFBFBFBFBFBF
      BF00BFBFBF0000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF0000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000FFFF0000000000000000000000000000FFFF0000000000007F7F000000
      0000BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000BFBFBFBF00BFBFBFBFBFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000007F7F00007F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000BFBFBFBF00BFBFBFBFBFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000FFFFFF
      FF0000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000007F7F00007F
      7F00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000BFBFBFBF00BFBFBFBFBFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF0000000000000000000000000000FFFF000000
      0000000000000000000000FFFF0000000000BFBFBF0000000000007F7F00007F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF00000000000000000000000000FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF0000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000BFBFBF0000000000007F7F00007F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000BFBFBFBF00000000000000
      0000BFBFBF00000000000000000000000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF0000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000007F7F00007F
      7F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F0000FFFF007F7F
      7F0000000000000000000000000000000000000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF00000000000000000000000000FFFFFF000000000000FF000000FF
      0000FFFF000000000000FFFFFF000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000007F7F00007F
      7F00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000000000BFBFBFBF00000000000000
      0000BFBFBF00000000000000000000000000FFFFFF0000000000FF00FF0000FF
      0000FF00FF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F0000000000007F7F00007F
      7F00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000000000000000000000007F7F7F0000FFFF007F7F
      7F0000000000000000000000000000000000000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF00000000000000000000000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000007F
      7F00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFFFF00FFFFFF000000
      FF00FFFFFF00000000000000000000000000FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000007F7F0000FFFF00007F7F0000FFFF00007F7F0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00007F7F0000FFFF00007F7F0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF004E616D6528275469204669656C644279
      FF202020202020203400000000000300742E546578743B64654E616D65456469
      67203A3D2046696C2E4173537472696E6C656E616D6527294E616D6528274669
      204669656C644279FF202020202020203E0000000000030020656469743B207D
      2020202020202020000000000300FF20DDDDFFFFFFFF1100D555FC7B00002020
      0000F83700000300DFBFF03E0000744C87BCE01D00002020DBBBE01B0000FF20
      0000801700001000DDB7001F0000655D9EAF001000007365DF1F001F00006C6F
      0000801700005465DFB7E01B00006B759F82E01D00002C53DFB7F03E00006973
      0000F8370000794FFFFFFC7B00002C56E003FC00C01FFFFF0001FC00C00FF83F
      00002000E007E7CF00000000E003DFF7000100008003B01B03C700008007B83B
      0200000080077C7D0200000080077E8D02000000800741050200000080074105
      0200E000E00741050200F800C007818B0200F000C00781FB0200E001E007DFF7
      03FFC403F803E7CFFFFFEC07FC03F83F00000000000000000000000000000000
      000000000000}
  end
  object rDragController1: TrDragController
    ListBox = SearchDirsList
    Left = 380
    Top = 188
  end
end
