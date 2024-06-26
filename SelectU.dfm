object SelectForm: TSelectForm
  Left = 290
  Top = 190
  Width = 791
  Height = 447
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Select / Edit titles'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TJvPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 413
    MultiLine = False
    Align = alClient
    TabOrder = 0
    object MainTab: TPageControl
      Left = 1
      Top = 1
      Width = 781
      Height = 354
      ActivePage = ArtistsTab
      Align = alClient
      TabOrder = 0
      TabWidth = 135
      OnChange = MainTabChange
      object HardDiscTab: TTabSheet
        Caption = 'Hard Disk files'
        object Panel20: TJvPanel
          Left = 0
          Top = 0
          Width = 773
          Height = 326
          MultiLine = False
          Align = alClient
          BevelOuter = bvLowered
          BorderWidth = 5
          TabOrder = 0
          object ListView1: TListView
            Left = 97
            Top = 6
            Width = 670
            Height = 314
            Align = alClient
            Columns = <>
            HideSelection = False
            ReadOnly = True
            SortType = stText
            TabOrder = 0
            ViewStyle = vsList
          end
          object Panel22: TJvPanel
            Left = 6
            Top = 6
            Width = 91
            Height = 314
            MultiLine = False
            Align = alLeft
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 1
            object btnDirectory: TSpeedButton
              Left = 8
              Top = 8
              Width = 73
              Height = 57
              Caption = 'Directory'
              OnClick = btnDirectoryClick
            end
          end
        end
      end
      object FilesPacksTab: TTabSheet
        Caption = 'File packets'
        ImageIndex = 1
        object Panel21: TJvPanel
          Left = 0
          Top = 0
          Width = 773
          Height = 326
          MultiLine = False
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          BorderStyle = bsSingle
          TabOrder = 0
          object Panel23: TJvPanel
            Left = 505
            Top = 2
            Width = 262
            Height = 318
            MultiLine = False
            Align = alRight
            BorderWidth = 5
            Caption = 'Panel23'
            TabOrder = 0
            object Panel27: TJvPanel
              Left = 6
              Top = 6
              Width = 250
              Height = 75
              MultiLine = False
              Align = alTop
              TabOrder = 0
              object btnAddFilesToPack: TSpeedButton
                Left = 8
                Top = 8
                Width = 100
                Height = 25
                Caption = 'Add Files'
                OnClick = btnAddFilesToPackClick
              end
              object btnSaveFilesPack: TSpeedButton
                Left = 8
                Top = 40
                Width = 100
                Height = 25
                Caption = 'Save'
                OnClick = btnSaveFilesPackClick
              end
              object Label1: TLabel
                Left = 160
                Top = 46
                Width = 77
                Height = 13
                Caption = 'Change position'
              end
              object SpinButton1: TSpinButton
                Left = 136
                Top = 40
                Width = 20
                Height = 25
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
              object SortedCheck1: TCheckBox
                Left = 139
                Top = 13
                Width = 97
                Height = 17
                Caption = 'Sorted'
                TabOrder = 1
                OnClick = SortedCheck1Click
              end
            end
            object TextListBox1: TListBox
              Left = 6
              Top = 81
              Width = 250
              Height = 231
              Align = alClient
              ItemHeight = 13
              MultiSelect = True
              TabOrder = 1
              OnKeyUp = TextListBox1KeyUp
            end
          end
          object Panel24: TJvPanel
            Left = 2
            Top = 2
            Width = 503
            Height = 318
            MultiLine = False
            Align = alClient
            BorderWidth = 5
            Caption = 'Panel24'
            TabOrder = 1
            object Panel26: TJvPanel
              Left = 6
              Top = 6
              Width = 91
              Height = 306
              MultiLine = False
              Align = alLeft
              BevelInner = bvRaised
              BevelOuter = bvLowered
              TabOrder = 0
              object btnPacksDir: TSpeedButton
                Left = 8
                Top = 8
                Width = 73
                Height = 57
                Caption = 'Directory'
                OnClick = btnPacksDirClick
              end
              object btnNewFilesPack: TSpeedButton
                Left = 8
                Top = 176
                Width = 73
                Height = 25
                Caption = 'New FilesList'
                OnClick = btnNewFilesPackClick
              end
              object btnDeleteFilesPack: TSpeedButton
                Left = 8
                Top = 224
                Width = 73
                Height = 25
                Caption = 'Delete'
                OnClick = btnDeleteFilesPackClick
              end
              object btnRenameFilesPack: TSpeedButton
                Left = 8
                Top = 272
                Width = 73
                Height = 25
                Caption = 'Rename'
                OnClick = btnRenameFilesPackClick
              end
            end
            object ListView2: TListView
              Left = 97
              Top = 6
              Width = 400
              Height = 306
              Align = alClient
              Columns = <>
              HideSelection = False
              ReadOnly = True
              SortType = stText
              TabOrder = 1
              ViewStyle = vsList
              OnChange = ListView2Change
              OnClick = ListView2Click
            end
          end
        end
      end
      object ArtistsTab: TTabSheet
        Caption = 'Artists'
        ImageIndex = 2
        object Panel5: TJvPanel
          Left = 0
          Top = 0
          Width = 773
          Height = 326
          MultiLine = False
          Align = alClient
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Panel5'
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 337
            Top = 2
            Height = 322
            Color = clBtnFace
            ParentColor = False
          end
          object Panel6: TJvPanel
            Left = 2
            Top = 2
            Width = 335
            Height = 322
            MultiLine = False
            Align = alLeft
            Caption = 'Panel6'
            TabOrder = 0
            object Panel7: TJvPanel
              Left = 1
              Top = 1
              Width = 333
              Height = 29
              MultiLine = False
              Align = alTop
              BorderWidth = 3
              Caption = #932#961#945#947#959#965#948#953#963#964#941#962
              TabOrder = 0
              object JvDBSearchEdit1: TJvDBSearchEdit
                Left = 4
                Top = 4
                Width = 325
                Height = 21
                DataSource = dsArtists1
                DataField = 'Name'
                Align = alClient
                TabOrder = 0
                Text = 'JvDBSearchEdit1'
              end
            end
            object Panel8: TJvPanel
              Left = 1
              Top = 30
              Width = 333
              Height = 291
              MultiLine = False
              Align = alClient
              BorderWidth = 2
              Caption = 'Panel8'
              TabOrder = 1
              object JvDBUltimGrid1: TJvDBUltimGrid
                Left = 3
                Top = 3
                Width = 327
                Height = 285
                Align = alClient
                DataSource = dsArtists1
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                SelectColumnsDialogStrings.Caption = 'Select columns'
                SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
                SelectColumnsDialogStrings.OK = '&OK'
                SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                EditControls = <>
                RowsHeight = 17
                TitleRowHeight = 17
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'Name'
                    Width = 150
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'LastPlayed'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PlayCount'
                    Title.Caption = 'Count'
                    Width = 32
                    Visible = True
                  end>
              end
            end
          end
          object Panel9: TJvPanel
            Left = 340
            Top = 2
            Width = 431
            Height = 322
            MultiLine = False
            Align = alClient
            BorderWidth = 2
            Caption = 'Panel9'
            TabOrder = 1
            object JvDBUltimGrid2: TJvDBUltimGrid
              Left = 3
              Top = 3
              Width = 425
              Height = 316
              Align = alClient
              DataSource = dsTitles1
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Title'
                  Width = 210
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Quality'
                  Width = 16
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BPM'
                  Width = 27
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PlayedLast'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PlayCounter'
                  Title.Caption = 'Count'
                  Width = 32
                  Visible = True
                end>
            end
          end
        end
      end
      object TitlesTab: TTabSheet
        Caption = 'Titles'
        ImageIndex = 3
        object Panel11: TJvPanel
          Left = 0
          Top = 0
          Width = 773
          Height = 326
          MultiLine = False
          Align = alClient
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'Panel11'
          TabOrder = 0
          object Splitter2: TSplitter
            Left = 417
            Top = 2
            Height = 322
          end
          object Panel3: TJvPanel
            Left = 2
            Top = 2
            Width = 415
            Height = 322
            MultiLine = False
            Align = alLeft
            Caption = 'Panel3'
            TabOrder = 0
            object Panel4: TJvPanel
              Left = 1
              Top = 1
              Width = 413
              Height = 29
              MultiLine = False
              Align = alTop
              BorderWidth = 3
              Caption = #932#961#945#947#959#973#948#953#945
              TabOrder = 0
              object JvDBSearchEdit2: TJvDBSearchEdit
                Left = 4
                Top = 4
                Width = 405
                Height = 21
                DataSource = dsTitles2
                DataField = 'Title'
                Align = alClient
                TabOrder = 0
                Text = 'JvDBSearchEdit2'
              end
            end
            object Panel10: TJvPanel
              Left = 1
              Top = 30
              Width = 413
              Height = 291
              MultiLine = False
              Align = alClient
              BorderWidth = 2
              Caption = 'Panel10'
              TabOrder = 1
              object JvDBUltimGrid3: TJvDBUltimGrid
                Left = 3
                Top = 3
                Width = 407
                Height = 285
                Align = alClient
                DataSource = dsTitles2
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                SelectColumnsDialogStrings.Caption = 'Select columns'
                SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
                SelectColumnsDialogStrings.OK = '&OK'
                SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
                EditControls = <>
                RowsHeight = 17
                TitleRowHeight = 17
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'Title'
                    Width = 187
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Quality'
                    Width = 16
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PlayedLast'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'BPM'
                    Width = 27
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PlayCounter'
                    Title.Caption = 'Count'
                    Width = 31
                    Visible = True
                  end>
              end
            end
          end
          object Panel12: TJvPanel
            Left = 420
            Top = 2
            Width = 351
            Height = 322
            MultiLine = False
            Align = alClient
            BorderWidth = 2
            Caption = 'Panel12'
            TabOrder = 1
            object JvDBUltimGrid4: TJvDBUltimGrid
              Left = 3
              Top = 3
              Width = 345
              Height = 316
              Align = alClient
              DataSource = dsArtists2
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Name'
                  Width = 187
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LastPlayed'
                  Title.Caption = 'PlayedLast'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PlayCount'
                  Title.Caption = 'Count'
                  Width = 32
                  Visible = True
                end>
            end
          end
        end
      end
      object FiltersTab: TTabSheet
        Caption = 'Filters'
        ImageIndex = 4
        object Panel13: TJvPanel
          Left = 0
          Top = 0
          Width = 773
          Height = 326
          MultiLine = False
          Align = alClient
          BevelInner = bvLowered
          BevelOuter = bvLowered
          BorderWidth = 2
          TabOrder = 0
          object Panel25: TJvPanel
            Left = 4
            Top = 4
            Width = 765
            Height = 133
            MultiLine = False
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvLowered
            BorderWidth = 2
            TabOrder = 0
            object Label2: TLabel
              Left = 16
              Top = 8
              Width = 45
              Height = 13
              Caption = 'Category'
            end
            object Label6: TLabel
              Left = 252
              Top = 80
              Width = 24
              Height = 13
              Caption = 'From'
            end
            object Label7: TLabel
              Left = 252
              Top = 104
              Width = 12
              Height = 13
              Caption = 'To'
            end
            object Label8: TLabel
              Left = 336
              Top = 32
              Width = 24
              Height = 13
              Caption = 'From'
            end
            object Label9: TLabel
              Left = 336
              Top = 56
              Width = 12
              Height = 13
              Caption = 'To'
            end
            object ExecuteButton1: TSpeedButton
              Left = 400
              Top = 52
              Width = 161
              Height = 69
              Caption = 'Find titles'
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
                0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
                00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
                00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
                F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
                F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
                FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
                0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
                00337777FFFF77FF7733EEEE0000000003337777777777777333}
              NumGlyphs = 2
              OnClick = ExecuteButton1Click
            end
            object SongsCountLabel: TLabel
              Left = 572
              Top = 52
              Width = 3
              Height = 13
            end
            object DateCheck1: TCheckBox
              Left = 196
              Top = 8
              Width = 101
              Height = 17
              Caption = 'Date from-to'
              TabOrder = 0
            end
            object QualityCheck1: TCheckBox
              Left = 192
              Top = 78
              Width = 57
              Height = 17
              Caption = 'Rating'
              TabOrder = 1
            end
            object QualityFrom1: TComboBox
              Left = 276
              Top = 76
              Width = 37
              Height = 21
              Style = csDropDownList
              DropDownCount = 10
              ItemHeight = 13
              TabOrder = 2
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
            object QualityTo1: TComboBox
              Left = 276
              Top = 100
              Width = 37
              Height = 21
              Style = csDropDownList
              DropDownCount = 10
              ItemHeight = 13
              TabOrder = 3
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
            object BeatCheck1: TCheckBox
              Left = 328
              Top = 8
              Width = 57
              Height = 17
              Caption = 'BPM'
              TabOrder = 4
            end
            object BeatFrom1: TBPMEdit
              Left = 360
              Top = 28
              Width = 29
              Height = 21
              MaxLength = 3
              TabOrder = 5
              Text = '000'
            end
            object BeatTo1: TBPMEdit
              Left = 360
              Top = 52
              Width = 29
              Height = 21
              MaxLength = 3
              TabOrder = 6
              Text = '250'
            end
            object SexCombo1: TComboBox
              Left = 328
              Top = 100
              Width = 61
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 7
              Items.Strings = (
                'Male'
                'Female'
                'Group')
            end
            object SexCheck1: TCheckBox
              Left = 328
              Top = 80
              Width = 53
              Height = 17
              Caption = 'Sex'
              TabOrder = 8
            end
            object SubjectCheck1: TCheckBox
              Left = 400
              Top = 8
              Width = 61
              Height = 17
              Caption = 'Subject'
              TabOrder = 9
            end
            object SubjectCombo1: TDBLookupComboBox
              Left = 400
              Top = 28
              Width = 97
              Height = 21
              DropDownRows = 10
              KeyField = 'SubjectName'
              ListField = 'SubjectName'
              ListSource = dsSubject
              TabOrder = 10
            end
            object OpenerCheck1: TCheckBox
              Left = 508
              Top = 8
              Width = 57
              Height = 17
              Caption = 'Opener'
              TabOrder = 11
            end
            object OpenerCombo1: TComboBox
              Left = 508
              Top = 28
              Width = 53
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 12
              Items.Strings = (
                'Yes'
                'No')
            end
            object PeriodFrom1: TComboBox
              Left = 191
              Top = 28
              Width = 122
              Height = 21
              Style = csDropDownList
              DropDownCount = 10
              ItemHeight = 13
              TabOrder = 13
            end
            object PeriodTo1: TComboBox
              Left = 191
              Top = 52
              Width = 122
              Height = 21
              Style = csDropDownList
              DropDownCount = 10
              ItemHeight = 13
              TabOrder = 14
            end
            object Panel14: TJvPanel
              Left = 8
              Top = 52
              Width = 177
              Height = 73
              MultiLine = False
              TabOrder = 15
              object DBText1: TDBText
                Left = 24
                Top = 6
                Width = 65
                Height = 17
                DataField = 'Category1'
                DataSource = dsStyle
                OnClick = DBTextClick
              end
              object DBText2: TDBText
                Left = 24
                Top = 22
                Width = 65
                Height = 17
                DataField = 'Category2'
                DataSource = dsStyle
                OnClick = DBTextClick
              end
              object DBText3: TDBText
                Left = 24
                Top = 38
                Width = 65
                Height = 17
                DataField = 'Category3'
                DataSource = dsStyle
                OnClick = DBTextClick
              end
              object DBText4: TDBText
                Left = 24
                Top = 54
                Width = 65
                Height = 17
                DataField = 'Category4'
                DataSource = dsStyle
                OnClick = DBTextClick
              end
              object DBText5: TDBText
                Left = 108
                Top = 6
                Width = 65
                Height = 17
                DataField = 'Category5'
                DataSource = dsStyle
                OnClick = DBTextClick
              end
              object DBText6: TDBText
                Left = 108
                Top = 22
                Width = 65
                Height = 17
                DataField = 'Category6'
                DataSource = dsStyle
                OnClick = DBTextClick
              end
              object DBText7: TDBText
                Left = 108
                Top = 38
                Width = 65
                Height = 17
                DataField = 'Category7'
                DataSource = dsStyle
                OnClick = DBTextClick
              end
              object DBText8: TDBText
                Left = 108
                Top = 54
                Width = 65
                Height = 17
                DataField = 'Category8'
                DataSource = dsStyle
                OnClick = DBTextClick
              end
              object CheckBox1: TCheckBox
                Left = 8
                Top = 4
                Width = 14
                Height = 17
                Caption = 'CheckBox1'
                TabOrder = 0
              end
              object CheckBox2: TCheckBox
                Left = 8
                Top = 19
                Width = 14
                Height = 21
                Caption = 'CheckBox2'
                TabOrder = 1
              end
              object CheckBox3: TCheckBox
                Left = 8
                Top = 36
                Width = 14
                Height = 17
                Caption = 'CheckBox3'
                TabOrder = 2
              end
              object CheckBox4: TCheckBox
                Left = 8
                Top = 52
                Width = 14
                Height = 17
                Caption = 'CheckBox4'
                TabOrder = 3
              end
              object CheckBox5: TCheckBox
                Left = 92
                Top = 4
                Width = 14
                Height = 17
                Caption = 'CheckBox5'
                TabOrder = 4
              end
              object CheckBox6: TCheckBox
                Left = 92
                Top = 20
                Width = 14
                Height = 17
                Caption = 'CheckBox6'
                TabOrder = 5
              end
              object CheckBox7: TCheckBox
                Left = 92
                Top = 36
                Width = 14
                Height = 17
                Caption = 'CheckBox7'
                TabOrder = 6
              end
              object CheckBox8: TCheckBox
                Left = 92
                Top = 52
                Width = 14
                Height = 17
                Caption = 'CheckBox8'
                TabOrder = 7
              end
            end
            object StylesLookup: TJvDBLookupCombo
              Left = 8
              Top = 24
              Width = 177
              Height = 21
              LookupField = 'Name'
              LookupDisplay = 'Name'
              LookupSource = dsStyle
              TabOrder = 16
            end
          end
          object JvDBUltimGrid5: TJvDBUltimGrid
            Left = 4
            Top = 137
            Width = 765
            Height = 185
            Align = alClient
            DataSource = dsQuery
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'Name'
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LastPlayed'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Title'
                Width = 199
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PlayedLast'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BPM'
                Width = 26
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Quality'
                Width = 13
                Visible = True
              end>
          end
        end
      end
      object NewRecordsTab: TTabSheet
        Caption = 'Insert new titles'
        ImageIndex = 5
        object Panel15: TJvPanel
          Left = 0
          Top = 0
          Width = 773
          Height = 326
          MultiLine = False
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 0
          object Panel16: TJvPanel
            Left = 1
            Top = 1
            Width = 512
            Height = 324
            MultiLine = False
            Align = alClient
            BorderWidth = 2
            Caption = 'Panel16'
            TabOrder = 0
            object Panel18: TJvPanel
              Left = 3
              Top = 3
              Width = 506
              Height = 26
              MultiLine = False
              Align = alTop
              BevelInner = bvRaised
              BevelOuter = bvLowered
              BorderWidth = 2
              Caption = 'Files to insert into database'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object Panel19: TJvPanel
              Left = 3
              Top = 29
              Width = 506
              Height = 45
              MultiLine = False
              Align = alTop
              BevelOuter = bvLowered
              BorderWidth = 2
              TabOrder = 1
              object btnAddFiles: TSpeedButton
                Left = 4
                Top = 4
                Width = 141
                Height = 37
                Caption = 'Add files'
                OnClick = btnAddFilesClick
              end
              object btnLoadList: TSpeedButton
                Left = 148
                Top = 4
                Width = 133
                Height = 37
                Caption = 'Load list'
                OnClick = btnLoadListClick
              end
              object btnSaveList: TSpeedButton
                Left = 284
                Top = 4
                Width = 117
                Height = 37
                Caption = 'Save list'
                OnClick = btnSaveListClick
              end
            end
            object FilesListBox1: TListBox
              Left = 3
              Top = 74
              Width = 506
              Height = 247
              Align = alClient
              ItemHeight = 13
              MultiSelect = True
              TabOrder = 2
              OnDblClick = btnInsertFileClick
              OnKeyDown = FilesListBox1KeyUp
            end
          end
          object Panel17: TJvPanel
            Left = 513
            Top = 1
            Width = 259
            Height = 324
            MultiLine = False
            Align = alRight
            BorderWidth = 2
            TabOrder = 1
            object Panel28: TJvPanel
              Left = 3
              Top = 3
              Width = 253
              Height = 46
              MultiLine = False
              Align = alTop
              TabOrder = 0
              object btnInsertFile: TSpeedButton
                Left = 20
                Top = 4
                Width = 205
                Height = 37
                Caption = 'Add to database'
                OnClick = btnInsertFileClick
              end
            end
            object FilesListBox2: TListBox
              Left = 3
              Top = 49
              Width = 253
              Height = 272
              Align = alClient
              ItemHeight = 13
              TabOrder = 1
              OnKeyUp = FilesListBox1KeyUp
            end
          end
        end
      end
    end
    object Panel2: TJvPanel
      Left = 1
      Top = 355
      Width = 781
      Height = 57
      MultiLine = False
      Align = alBottom
      BevelInner = bvLowered
      BorderWidth = 2
      TabOrder = 1
      object btnEdit: TSpeedButton
        Left = 8
        Top = 8
        Width = 189
        Height = 38
        Caption = '&Show edit title'
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
        OnClick = btnEditClick
      end
      object btnCue: TSpeedButton
        Left = 204
        Top = 8
        Width = 181
        Height = 38
        Caption = '&Listen'
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
        OnClick = btnCueClick
      end
      object btnCancel: TBitBtn
        Left = 412
        Top = 8
        Width = 125
        Height = 37
        Caption = '&Cancel'
        TabOrder = 0
        Kind = bkCancel
      end
      object btnSelect: TBitBtn
        Left = 548
        Top = 8
        Width = 133
        Height = 37
        Caption = 'S&elect'
        Default = True
        TabOrder = 1
        OnClick = btnSelectClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
  end
  object tblArtists1: TTable
    DatabaseName = 'Studio19'
    SessionName = 'DefSess1'
    IndexName = 'ArtistNameIndex'
    ReadOnly = True
    TableName = 'Artists.DB'
    Left = 616
    Top = 8
  end
  object dsArtists1: TDataSource
    DataSet = tblArtists1
    Left = 616
    Top = 48
  end
  object tblTitles1: TTable
    DatabaseName = 'Studio19'
    SessionName = 'DefSess1'
    IndexFieldNames = 'ArtistCode;Title'
    MasterFields = 'ArtistCode'
    MasterSource = dsArtists1
    ReadOnly = True
    TableName = 'Songs.DB'
    Left = 648
    Top = 8
  end
  object dsTitles1: TDataSource
    DataSet = tblTitles1
    Left = 640
    Top = 48
  end
  object tblArtists2: TTable
    DatabaseName = 'Studio19'
    SessionName = 'DefSess1'
    IndexFieldNames = 'ArtistCode'
    MasterFields = 'ArtistCode'
    MasterSource = dsTitles2
    ReadOnly = True
    TableName = 'Artists.DB'
    Left = 616
    Top = 91
  end
  object dsArtists2: TDataSource
    DataSet = tblArtists2
    Left = 616
    Top = 123
  end
  object tblTitles2: TTable
    DatabaseName = 'Studio19'
    SessionName = 'DefSess1'
    IndexName = 'idxTitle'
    ReadOnly = True
    TableName = 'Songs.DB'
    Left = 648
    Top = 91
  end
  object dsTitles2: TDataSource
    DataSet = tblTitles2
    Left = 648
    Top = 123
  end
  object tblStyles: TTable
    DatabaseName = 'Studio19'
    SessionName = 'DefSess1'
    IndexName = 'idxStyleName'
    ReadOnly = True
    TableName = 'Styles.DB'
    Left = 617
    Top = 173
  end
  object dsStyle: TDataSource
    DataSet = tblStyles
    Left = 617
    Top = 205
  end
  object tblSubject: TTable
    DatabaseName = 'Studio19'
    SessionName = 'DefSess1'
    IndexName = 'idxSubjectName'
    ReadOnly = True
    TableName = 'Subjects.db'
    Left = 653
    Top = 173
  end
  object dsSubject: TDataSource
    DataSet = tblSubject
    Left = 653
    Top = 205
  end
  object Query1: TQuery
    DatabaseName = 'Studio19'
    SessionName = 'SQLSess1'
    SQL.Strings = (
      
        'Select A.*, B.* from Artists A, Songs B where (A.ArtistCode = B.' +
        'ArtistCode)')
    Left = 616
    Top = 248
  end
  object dsQuery: TDataSource
    DataSet = Query1
    Left = 616
    Top = 280
  end
  object Session1: TSession
    SessionName = 'SQLSess1'
    Left = 648
    Top = 248
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'sav'
    Filter = 'mp3 files|*.mp3|All files|*.*|Saved list files|*.sav'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 492
    Top = 4
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'sav'
    Filter = 'Saved Files|*.sav|All files|*.*'
    Left = 524
    Top = 4
  end
  object Session2: TSession
    SessionName = 'DefSess1'
    Left = 582
    Top = 51
  end
  object OpenDialog2: TOpenDialog
    Filter = 'mp3 files|*.mp3|All files|*.*'
    Options = [ofReadOnly, ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 585
    Top = 5
  end
  object JvFolderDialog1: TJvBrowseForFolderDialog
    Left = 29
    Top = 105
  end
end
