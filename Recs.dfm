object Form1: TForm1
  Left = 191
  Top = 111
  Width = 800
  Height = 570
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'RadioStudio '#919#967#959#947#961#945#966#942#963#949#953#962
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TJvPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 536
    MultiLine = False
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Panel2: TJvPanel
      Left = 2
      Top = 173
      Width = 788
      Height = 361
      MultiLine = False
      Align = alClient
      BorderWidth = 2
      Color = clBlue
      TabOrder = 0
      object Panel5: TJvPanel
        Left = 3
        Top = 3
        Width = 782
        Height = 41
        MultiLine = False
        Align = alTop
        BevelInner = bvLowered
        BorderWidth = 2
        Color = clSilver
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 508
          Top = 4
          Width = 269
          Height = 33
          Caption = #928#961#959#947#961#945#956#956#945#964#953#963#956#972#962' '#951#967#959#947#961#940#966#951#963#951#962
          OnClick = SpeedButton1Click
        end
        object LoadFileBtn: TSpeedButton
          Left = 364
          Top = 4
          Width = 85
          Height = 33
          Caption = #902#954#959#965#963#949
          Transparent = False
          OnClick = LoadFileBtnClick
        end
        object DBNavigator1: TDBNavigator
          Left = 4
          Top = 4
          Width = 189
          Height = 33
          DataSource = dsSpots
          VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete, nbPost]
          Align = alLeft
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object Panel6: TJvPanel
        Left = 3
        Top = 44
        Width = 782
        Height = 314
        MultiLine = False
        Align = alClient
        BevelInner = bvLowered
        BorderWidth = 2
        Color = clGreen
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 4
          Top = 4
          Width = 774
          Height = 306
          Align = alClient
          DataSource = dsSpots
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEditButtonClick = DBGrid1EditButtonClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Code'
              ReadOnly = True
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name'
              Width = 232
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'FileName'
              Width = 196
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ScheduleDate'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProgramFrom'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProgramTo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SpotsCount'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustomerCode'
              Visible = True
            end>
        end
      end
    end
    object Panel4: TJvPanel
      Left = 2
      Top = 2
      Width = 788
      Height = 171
      MultiLine = False
      Align = alTop
      TabOrder = 1
      object Panel3: TJvPanel
        Left = 1
        Top = 1
        Width = 281
        Height = 169
        MultiLine = False
        Align = alLeft
        BorderWidth = 4
        Color = clMaroon
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 5
          Top = 35
          Width = 271
          Height = 129
          Align = alClient
          DataSource = dsKinds
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Name'
              Title.Alignment = taCenter
              Title.Caption = #917#943#948#951' '#951#967#959#947#961#945#966#942#963#949#969#957
              Width = 235
              Visible = True
            end>
        end
        object DBNavigator2: TDBNavigator
          Left = 5
          Top = 5
          Width = 271
          Height = 30
          DataSource = dsKinds
          VisibleButtons = [nbInsert, nbDelete, nbPost]
          Align = alTop
          Flat = True
          TabOrder = 1
        end
      end
      object ShowAllCheck1: TCheckBox
        Left = 294
        Top = 8
        Width = 97
        Height = 17
        Caption = #917#956#966#940#957#953#963#951' '#972#955#969#957
        TabOrder = 1
        OnClick = ShowAllCheck1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'mp3 files|*.mp3|File Packs|*.pls|Play Lists|*.pll|All Files|*.*'
    Left = 620
    Top = 4
  end
  object tblAllSpots: TTable
    DatabaseName = 'Studio19'
    IndexFieldNames = 'Code'
    ReadOnly = True
    TableName = 'Spots.DB'
    Left = 404
    Top = 4
  end
  object tblSpots: TTable
    BeforeInsert = tblSpotsBeforeInsert
    BeforePost = tblSpotsBeforePost
    AfterPost = tblSpotsAfterPost
    AfterScroll = tblSpotsAfterScroll
    DatabaseName = 'Studio19'
    IndexFieldNames = 'Type'
    MasterFields = 'Code'
    MasterSource = dsKinds
    TableName = 'Spots.DB'
    Left = 480
    Top = 4
    object tblSpotsCode: TIntegerField
      FieldName = 'Code'
    end
    object tblSpotsType: TIntegerField
      FieldName = 'Type'
    end
    object tblSpotsName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object tblSpotsLength: TIntegerField
      FieldName = 'Length'
    end
    object tblSpotsFileName: TStringField
      FieldName = 'FileName'
      Size = 80
    end
    object tblSpotsSpotsCount: TIntegerField
      FieldName = 'SpotsCount'
    end
    object tblSpotsProgramFrom: TDateField
      FieldName = 'ProgramFrom'
    end
    object tblSpotsProgramTo: TDateField
      FieldName = 'ProgramTo'
    end
    object tblSpotsScheduleDate: TDateTimeField
      FieldName = 'ScheduleDate'
    end
    object tblSpotsCustomerCode: TIntegerField
      FieldName = 'CustomerCode'
    end
  end
  object tblKinds: TTable
    BeforeInsert = tblKindsBeforeInsert
    BeforePost = tblKindsBeforePost
    AfterPost = tblKindsAfterPost
    BeforeDelete = tblKindsBeforeDelete
    AfterScroll = tblKindsAfterScroll
    DatabaseName = 'Studio19'
    IndexFieldNames = 'Name'
    TableName = 'SpotKind.DB'
    Left = 552
    Top = 4
  end
  object dsAllSpots: TDataSource
    DataSet = tblAllSpots
    Left = 436
    Top = 4
  end
  object dsSpots: TDataSource
    DataSet = tblSpots
    Left = 508
    Top = 4
  end
  object dsKinds: TDataSource
    DataSet = tblKinds
    Left = 584
    Top = 4
  end
end
