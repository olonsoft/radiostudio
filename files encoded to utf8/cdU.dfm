object CDsForm: TCDsForm
  Left = 237
  Top = 184
  Width = 687
  Height = 261
  Caption = 'CD'#39's'
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
    Top = 0
    Width = 679
    Height = 182
    MultiLine = False
    Align = alClient
    BorderWidth = 2
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 3
      Top = 3
      Width = 673
      Height = 176
      Align = alClient
      DataSource = DataForm1.dsCDs
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CDCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Group'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DiscTitle'
          Title.Caption = 'Disc Title'
          Width = 196
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReleaseDate'
          Title.Caption = 'Release Date'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Composer'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Company'
          Title.Caption = 'Legend'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JukeBox'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Position'
          Width = 29
          Visible = True
        end>
    end
  end
  object Panel2: TJvPanel
    Left = 0
    Top = 182
    Width = 679
    Height = 45
    MultiLine = False
    Align = alBottom
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 296
      Height = 43
      DataSource = DataForm1.dsCDs
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
      Left = 493
      Top = 1
      Width = 185
      Height = 43
      MultiLine = False
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 32
        Top = 4
        Width = 129
        Height = 33
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
