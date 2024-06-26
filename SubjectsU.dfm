object SubjectsForm: TSubjectsForm
  Left = 371
  Top = 154
  Width = 182
  Height = 368
  BorderIcons = [biSystemMenu]
  Caption = 'Subjects'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TJvPanel
    Left = 0
    Top = 245
    Width = 174
    Height = 89
    MultiLine = False
    Align = alBottom
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 7
      Top = 4
      Width = 152
      Height = 41
      DataSource = DataForm1.dsSubjects
      VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 20
      Top = 52
      Width = 133
      Height = 29
      Cancel = True
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 1
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
  object Panel2: TJvPanel
    Left = 0
    Top = 0
    Width = 174
    Height = 245
    MultiLine = False
    Align = alClient
    BorderWidth = 2
    Caption = 'Panel2'
    TabOrder = 1
    object Panel3: TJvPanel
      Left = 3
      Top = 3
      Width = 168
      Height = 29
      MultiLine = False
      Align = alTop
      TabOrder = 0
    end
    object JvDBUltimGrid1: TJvDBUltimGrid
      Left = 3
      Top = 32
      Width = 168
      Height = 210
      Align = alClient
      DataSource = DataForm1.dsSubjects
      TabOrder = 1
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
end
