object Form1: TForm1
  Left = 881
  Top = 294
  Width = 641
  Height = 305
  Caption = 'Lab4 - '#8470'20'
  Color = clOlive
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 352
    Top = 8
    Width = 249
    Height = 241
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 24
    Top = 192
    Width = 265
    Height = 33
    Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 96
    Top = 152
    Width = 153
    Height = 25
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
    Checked = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    State = cbChecked
    TabOrder = 2
  end
  object StringGrid2: TStringGrid
    Left = 16
    Top = 8
    Width = 329
    Height = 129
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 3
    OnClick = StringGrid2Click
  end
end
