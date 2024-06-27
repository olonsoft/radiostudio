object StylesForm: TStylesForm
  Left = 293
  Top = 170
  Width = 725
  Height = 304
  BorderIcons = [biSystemMenu]
  Caption = 'Categories'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TJvPanel
    Left = 0
    Top = 0
    Width = 717
    Height = 229
    MultiLine = False
    Align = alClient
    BorderWidth = 4
    Caption = 'Panel1'
    TabOrder = 0
    object JvDBUltimGrid1: TJvDBUltimGrid
      Left = 5
      Top = 5
      Width = 707
      Height = 219
      Align = alClient
      DataSource = DataForm1.dsStyles
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.RealNamesOption = '[With the real field name]'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
    end
  end
  object Panel2: TJvPanel
    Left = 0
    Top = 229
    Width = 717
    Height = 41
    MultiLine = False
    Align = alBottom
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 305
      Height = 39
      DataSource = DataForm1.dsStyles
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alLeft
      Flat = True
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Add Record'
        'Delete Record'
        'Edit Record'
        'Save Record'
        'Cancel Record'
        'Refresh data')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object Panel3: TJvPanel
      Left = 512
      Top = 1
      Width = 204
      Height = 39
      MultiLine = False
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 36
        Top = 4
        Width = 129
        Height = 32
        Cancel = True
        Caption = 'OK'
        Default = True
        ModalResult = 1
        TabOrder = 0
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
end
