object Login: TLogin
  Left = 169
  Top = 220
  Width = 366
  Height = 480
  Caption = 'Login'
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
    Left = 144
    Top = 96
    Width = 47
    Height = 13
    Caption = 'username'
  end
  object Label2: TLabel
    Left = 144
    Top = 152
    Width = 46
    Height = 13
    Caption = 'password'
  end
  object txtusername: TEdit
    Left = 16
    Top = 120
    Width = 313
    Height = 21
    TabOrder = 0
  end
  object txtpassword: TEdit
    Left = 16
    Top = 176
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object login: TButton
    Left = 128
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = loginClick
  end
  object signin: TButton
    Left = 128
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Sign In'
    TabOrder = 3
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    Port = 0
    Database = 'database_fitri'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\TugasSafitri\lib' +
      'mysql.dll'
    Left = 32
    Top = 344
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from Login')
    Params = <>
    Left = 128
    Top = 376
  end
end
