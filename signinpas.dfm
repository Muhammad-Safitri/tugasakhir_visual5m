object signin: Tsignin
  Left = 150
  Top = 206
  Width = 341
  Height = 480
  Caption = 'Sign In'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 96
    Width = 47
    Height = 13
    Caption = 'username'
  end
  object Label2: TLabel
    Left = 136
    Top = 152
    Width = 46
    Height = 13
    Caption = 'password'
  end
  object Label3: TLabel
    Left = 144
    Top = 232
    Width = 26
    Height = 13
    Caption = 'nama'
  end
  object txtusername: TEdit
    Left = 4
    Top = 120
    Width = 313
    Height = 21
    TabOrder = 0
  end
  object txtpassword: TEdit
    Left = 4
    Top = 176
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object login: TButton
    Left = 120
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Sign In'
    TabOrder = 2
    OnClick = loginClick
  end
  object txtpassword2: TEdit
    Left = 4
    Top = 208
    Width = 313
    Height = 21
    TabOrder = 3
  end
  object txtnama: TEdit
    Left = 8
    Top = 256
    Width = 305
    Height = 21
    TabOrder = 4
  end
  object ZQuery1: TZQuery
    Connection = Login.ZConnection1
    SQL.Strings = (
      'select * from login')
    Params = <>
    Left = 40
    Top = 360
  end
end
