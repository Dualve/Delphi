object Form1: TForm1
  Left = 518
  Top = 83
  Width = 962
  Height = 641
  Caption = #1040#1074#1090#1086#1084#1072#1075#1072#1079#1080#1085
  Color = clOlive
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button2: TButton
    Left = 138
    Top = 16
    Width = 114
    Height = 29
    Caption = #1053#1086#1074#1099#1081' '#1092#1072#1081#1083
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 16
    Width = 114
    Height = 29
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
    TabOrder = 0
    OnClick = Button3Click
  end
  object Button5: TButton
    Left = 267
    Top = 16
    Width = 114
    Height = 29
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
    Enabled = False
    TabOrder = 2
    OnClick = Button5Click
  end
  object BitBtn1: TBitBtn
    Left = 398
    Top = 16
    Width = 114
    Height = 29
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Enabled = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 345
    Width = 937
    Height = 248
    Color = clInfoBk
    Enabled = False
    TabOrder = 4
    object Label20: TLabel
      Left = 8
      Top = 8
      Width = 158
      Height = 19
      Caption = #1052#1077#1085#1102' '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 12
      Top = 96
      Width = 85
      Height = 13
      Caption = #1056#1072#1089#1093#1086#1076' '#1090#1086#1087#1083#1080#1074#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 13
      Top = 128
      Width = 67
      Height = 13
      Caption = #1053#1072#1076#1105#1078#1085#1086#1089#1090#1100':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 13
      Top = 158
      Width = 78
      Height = 13
      Caption = #1050#1086#1084#1092#1086#1088#1090#1085#1086#1089#1090#1100':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 136
      Top = 66
      Width = 16
      Height = 13
      Caption = #1086#1090':'
    end
    object Label26: TLabel
      Left = 13
      Top = 66
      Width = 30
      Height = 13
      Caption = #1062#1077#1085#1072':'
    end
    object Label27: TLabel
      Left = 136
      Top = 96
      Width = 16
      Height = 13
      Caption = #1086#1090':'
    end
    object Label28: TLabel
      Left = 136
      Top = 128
      Width = 16
      Height = 13
      Caption = #1086#1090':'
    end
    object Label29: TLabel
      Left = 136
      Top = 158
      Width = 16
      Height = 13
      Caption = #1086#1090':'
    end
    object Label30: TLabel
      Left = 288
      Top = 66
      Width = 17
      Height = 13
      Caption = #1076#1086':'
    end
    object Label31: TLabel
      Left = 288
      Top = 96
      Width = 17
      Height = 13
      Caption = #1076#1086':'
    end
    object Label32: TLabel
      Left = 288
      Top = 128
      Width = 17
      Height = 13
      Caption = #1076#1086':'
    end
    object Label33: TLabel
      Left = 288
      Top = 158
      Width = 17
      Height = 13
      Caption = #1076#1086':'
    end
    object Memo1: TMemo
      Left = 437
      Top = 16
      Width = 463
      Height = 169
      TabStop = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 9
      WordWrap = False
    end
    object Button7: TButton
      Left = 280
      Top = 200
      Width = 121
      Height = 33
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Enabled = False
      TabOrder = 8
      OnClick = Button7Click
    end
    object Edit22: TEdit
      Left = 163
      Top = 89
      Width = 52
      Height = 21
      Hint = #1055#1077#1088#1074#1072#1103' '#1073#1091#1082#1074#1072' '#1076#1086#1083#1078#1085#1072' '#1073#1099#1090#1100' "'#1084'" '#1080#1083#1080' "'#1078'"'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      Text = '0'
    end
    object Edit23: TEdit
      Left = 163
      Top = 120
      Width = 52
      Height = 21
      Hint = #1047#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1075#1086#1076#1072#1093'. '#1053#1077' '#1084#1077#1085#1077#1077' 15.'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 4
      Text = '0'
    end
    object Edit21: TEdit
      Left = 163
      Top = 61
      Width = 52
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object ComboBox21: TComboBox
      Left = 160
      Top = 150
      Width = 121
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1072#1103
      Items.Strings = (
        #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1072#1103
        #1093#1086#1088#1086#1096#1072#1103
        #1086#1090#1083#1080#1095#1085#1072#1103)
    end
    object Edit32: TEdit
      Left = 315
      Top = 89
      Width = 52
      Height = 21
      Hint = #1055#1077#1088#1074#1072#1103' '#1073#1091#1082#1074#1072' '#1076#1086#1083#1078#1085#1072' '#1073#1099#1090#1100' "'#1084'" '#1080#1083#1080' "'#1078'"'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      Text = '10000'
    end
    object Edit33: TEdit
      Left = 315
      Top = 120
      Width = 52
      Height = 21
      Hint = #1047#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1075#1086#1076#1072#1093'. '#1053#1077' '#1084#1077#1085#1077#1077' 15.'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
      Text = '10000'
    end
    object Edit31: TEdit
      Left = 315
      Top = 61
      Width = 52
      Height = 21
      TabOrder = 1
      Text = '10000'
    end
    object ComboBox22: TComboBox
      Left = 315
      Top = 150
      Width = 118
      Height = 21
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 7
      Text = #1086#1090#1083#1080#1095#1085#1072#1103
      Items.Strings = (
        #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1072#1103
        #1093#1086#1088#1086#1096#1072#1103
        #1086#1090#1083#1080#1095#1085#1072#1103)
    end
    object Button4: TButton
      Left = 800
      Top = 200
      Width = 121
      Height = 33
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '
      TabOrder = 10
      OnClick = Button4Click
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 48
    Width = 937
    Height = 289
    Color = clInfoBk
    TabOrder = 5
    object Label2: TLabel
      Left = 8
      Top = 57
      Width = 99
      Height = 13
      Caption = #1052#1072#1088#1082#1072' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103':'
    end
    object Label3: TLabel
      Left = 8
      Top = 89
      Width = 30
      Height = 13
      Caption = #1062#1077#1085#1072':'
    end
    object Label4: TLabel
      Left = 9
      Top = 119
      Width = 85
      Height = 13
      Caption = #1056#1072#1089#1093#1086#1076' '#1090#1086#1087#1083#1080#1074#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 151
      Width = 67
      Height = 13
      Caption = #1053#1072#1076#1105#1078#1085#1086#1089#1090#1100':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 10
      Top = 181
      Width = 78
      Height = 13
      Caption = #1050#1086#1084#1092#1086#1088#1090#1085#1086#1089#1090#1100':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 138
      Height = 19
      Caption = #1052#1077#1085#1102' '#1084#1072#1075#1072#1079#1080#1085#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 112
      Top = 112
      Width = 52
      Height = 21
      Hint = #1055#1077#1088#1074#1072#1103' '#1073#1091#1082#1074#1072' '#1076#1086#1083#1078#1085#1072' '#1073#1099#1090#1100' "'#1084'" '#1080#1083#1080' "'#1078'"'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      Text = '0'
    end
    object Edit3: TEdit
      Left = 112
      Top = 143
      Width = 52
      Height = 21
      Hint = #1047#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1075#1086#1076#1072#1093'. '#1053#1077' '#1084#1077#1085#1077#1077' 15.'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      Text = '0'
    end
    object Button1: TButton
      Left = 328
      Top = 240
      Width = 129
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Enabled = False
      TabOrder = 5
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 112
      Top = 84
      Width = 52
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object ComboBox1: TComboBox
      Left = 112
      Top = 56
      Width = 200
      Height = 21
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 0
      Text = 'Lada'
      Items.Strings = (
        #1043#1040#1047
        'Lada'
        'Mercedes Benz'
        'Tesla'
        #1047#1048#1051
        #1059#1040#1047
        'Cadillac'
        'Chevrolet'
        'Shkoda'
        'Dodge'
        'Ford'
        'Jaguar'
        'Jeep'
        'Lincoln'
        'Honda'
        'BelGe'
        'Geele.Co'
        'Volkswagen'
        '')
    end
    object ComboBox2: TComboBox
      Left = 112
      Top = 173
      Width = 105
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1072#1103
      Items.Strings = (
        #1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1072#1103
        #1093#1086#1088#1086#1096#1072#1103
        #1086#1090#1083#1080#1095#1085#1072#1103)
    end
    object StringGrid1: TStringGrid
      Left = 322
      Top = 8
      Width = 609
      Height = 225
      TabStop = False
      ColCount = 6
      RowCount = 2
      TabOrder = 6
      ColWidths = (
        64
        210
        74
        50
        66
        126)
    end
    object Button6: TButton
      Left = 792
      Top = 240
      Width = 129
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      Enabled = False
      TabOrder = 7
      OnClick = Button6Click
    end
  end
  object BitBtn2: TBitBtn
    Left = 816
    Top = 8
    Width = 121
    Height = 33
    TabOrder = 6
    Kind = bkClose
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.dat'
    Filter = #1060#1072#1081#1083' '#1076#1072#1085#1085#1099#1093'|*.dat|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 568
    Top = 16
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.dat'
    Filter = #1060#1072#1081#1083' '#1076#1072#1085#1085#1099#1093'|*.dat|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 536
    Top = 16
  end
end
