object DaysSpotsForm1: TDaysSpotsForm1
  Left = 125
  Top = 181
  Width = 545
  Height = 464
  Caption = 'DaysSpotsForm1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TJvPanel
    Left = 0
    Top = 0
    Width = 354
    Height = 430
    MultiLine = False
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 2
    Caption = 'Panel1'
    TabOrder = 0
    object SpotsList1: TListBox
      Left = 4
      Top = 21
      Width = 346
      Height = 386
      Style = lbOwnerDrawFixed
      Align = alClient
      ItemHeight = 13
      PopupMenu = PopupMenu1
      Sorted = True
      TabOrder = 0
      OnDrawItem = SpotsList1DrawItem
    end
    object HeaderControl1: THeaderControl
      Left = 4
      Top = 4
      Width = 346
      Height = 17
      HotTrack = True
      Sections = <
        item
          AllowClick = False
          ImageIndex = -1
          Text = #911#961#945
          Width = 50
        end
        item
          AllowClick = False
          ImageIndex = -1
          Text = #928#961#959
          Width = 32
        end
        item
          AllowClick = False
          AutoSize = True
          ImageIndex = -1
          Text = #916#953#945#966#942#956#953#963#951
          Width = 194
        end
        item
          AllowClick = False
          ImageIndex = -1
          Text = #916#953#940#961#954#949#953#945
          Width = 70
        end>
      Style = hsFlat
      OnSectionResize = HeaderControl1SectionResize
    end
    object StatusBar2: TStatusBar
      Left = 4
      Top = 407
      Width = 346
      Height = 19
      Panels = <
        item
          Alignment = taCenter
          Text = #913#961#953#952#956#972#962' '#956#951#957#965#956#940#964#969#957
          Width = 110
        end
        item
          Alignment = taCenter
          Width = 50
        end
        item
          Alignment = taCenter
          Text = #916#953#940#961#954#949#953#945' '#963#973#957#959#955#959
          Width = 100
        end
        item
          Alignment = taCenter
          Width = 50
        end>
    end
  end
  object Panel2: TJvPanel
    Left = 354
    Top = 0
    Width = 183
    Height = 430
    MultiLine = False
    Align = alRight
    BevelInner = bvLowered
    BorderWidth = 2
    TabOrder = 1
    object Panel3: TJvPanel
      Left = 4
      Top = 377
      Width = 175
      Height = 49
      MultiLine = False
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 0
      object btnOk1: TBitBtn
        Left = 88
        Top = 4
        Width = 85
        Height = 41
        Caption = #917#957#964#940#958#949#953
        TabOrder = 0
        OnClick = btnOk1Click
        Kind = bkOK
      end
      object btnCancel1: TBitBtn
        Left = 2
        Top = 4
        Width = 85
        Height = 41
        Caption = #902#954#965#961#959
        TabOrder = 1
        Kind = bkCancel
      end
    end
    object Panel4: TJvPanel
      Left = 4
      Top = 4
      Width = 175
      Height = 213
      MultiLine = False
      Align = alTop
      BevelOuter = bvLowered
      BorderWidth = 2
      TabOrder = 1
      object Label2: TLabel
        Left = 16
        Top = 8
        Width = 141
        Height = 13
        Caption = #928#961#959#947#961#945#956#956#945#964#953#950#972#956#949#957#959' '#956#942#957#965#956#945
      end
      object Label3: TLabel
        Left = 87
        Top = 44
        Width = 78
        Height = 13
        Caption = #928'&'#961#959#964#949#961#945#953#972#964#951#964#945
        FocusControl = PrioEdit
      end
      object Label1: TLabel
        Left = 40
        Top = 44
        Width = 23
        Height = 13
        Caption = '&'#911#961#945
        FocusControl = TimeEdit
      end
      object AddBtn: TSpeedButton
        Left = 40
        Top = 92
        Width = 97
        Height = 33
        Caption = '&'#928#961#972#963#952#949#963#949
        Flat = True
        OnClick = AddBtnClick
      end
      object ChangeBtn: TSpeedButton
        Left = 40
        Top = 132
        Width = 97
        Height = 33
        Caption = '&'#932#961#959#960#959#960#959#943#951#963#949
        Enabled = False
        Flat = True
      end
      object DeleteBtn: TSpeedButton
        Left = 40
        Top = 172
        Width = 97
        Height = 33
        Caption = '&'#916#953#941#947#961#945#968#949
        Flat = True
        OnClick = DeleteBtnClick
      end
      object TimeEdit: TMaskEdit
        Left = 28
        Top = 60
        Width = 53
        Height = 28
        EditMask = '!99:99;1;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 5
        ParentFont = False
        TabOrder = 0
        Text = '  :  '
        OnExit = TimeEditExit
        OnKeyPress = TimeEditKeyPress
      end
      object PrioEdit: TMaskEdit
        Left = 104
        Top = 60
        Width = 37
        Height = 28
        EditMask = '999;1;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 3
        ParentFont = False
        TabOrder = 1
        Text = '5  '
        OnKeyPress = PrioEditKeyPress
      end
    end
    object Panel5: TJvPanel
      Left = 4
      Top = 217
      Width = 175
      Height = 160
      MultiLine = False
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 2
      object StatusBar1: TStatusBar
        Left = 1
        Top = 140
        Width = 173
        Height = 19
        Panels = <
          item
            Alignment = taCenter
            Text = #917#960#953#955#949#947#956#941#957#945' '#963#960#959#964
            Width = 100
          end
          item
            Alignment = taCenter
            Width = 50
          end>
      end
      object HeaderControl2: THeaderControl
        Left = 1
        Top = 1
        Width = 173
        Height = 17
        HotTrack = True
        Sections = <
          item
            AllowClick = False
            AutoSize = True
            ImageIndex = -1
            Text = #917#960#953#955#949#947#956#941#957#949#962' '#974#961#949#962
            Width = 123
          end
          item
            AllowClick = False
            ImageIndex = -1
            Text = #928#961#959#964'.'
            Width = 50
          end>
        Style = hsFlat
        OnSectionResize = HeaderControl2SectionResize
      end
      object SelectedList1: TListBox
        Left = 1
        Top = 18
        Width = 173
        Height = 122
        Style = lbOwnerDrawFixed
        Align = alClient
        ItemHeight = 16
        Sorted = True
        TabOrder = 2
        OnDrawItem = SelectedList1DrawItem
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 366
    Top = 100
    object Savetotxtfile1: TMenuItem
      Caption = 'Save to txt file'
      OnClick = Savetotxtfile1Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text files|*.txt|All Files|*.*'
    Left = 366
    Top = 132
  end
end
