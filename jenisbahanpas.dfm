object jenis_bahan: Tjenis_bahan
  Left = 418
  Top = 170
  Width = 683
  Height = 288
  Caption = 'jenis_bahan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TLabel
    Left = 32
    Top = 16
    Width = 51
    Height = 13
    Caption = 'Kode Jenis'
  end
  object Label1: TLabel
    Left = 32
    Top = 56
    Width = 54
    Height = 13
    Caption = 'Nama Jenis'
  end
  object kdjenis: TEdit
    Left = 104
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object namajenis: TEdit
    Left = 104
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 272
    Top = 16
    Width = 369
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object simpan: TButton
    Left = 24
    Top = 104
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = simpanClick
  end
  object ubah: TButton
    Left = 104
    Top = 104
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 4
    OnClick = ubahClick
  end
  object hapus: TButton
    Left = 184
    Top = 104
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = hapusClick
  end
  object ZQuery1: TZQuery
    Connection = Login.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from jenis_bahan')
    Params = <>
    Left = 56
    Top = 392
  end
  object ZQuery2: TZQuery
    Connection = Login.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from jenis_bahan')
    Params = <>
    Left = 40
    Top = 344
  end
  object DataSource1: TDataSource
    DataSet = ZQuery2
    Left = 112
    Top = 352
  end
end
