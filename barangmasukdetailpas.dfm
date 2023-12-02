object barang_masuk_detail: Tbarang_masuk_detail
  Left = 306
  Top = 142
  Width = 928
  Height = 480
  Caption = 'Barang Masuk Detail'
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
    Left = 40
    Top = 24
    Width = 8
    Height = 13
    Caption = 'id'
  end
  object Label2: TLabel
    Left = 40
    Top = 64
    Width = 46
    Height = 13
    Caption = 'No Masuk'
  end
  object Label3: TLabel
    Left = 40
    Top = 104
    Width = 61
    Height = 13
    Caption = 'Kode Barang'
  end
  object Label4: TLabel
    Left = 40
    Top = 144
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object Label5: TLabel
    Left = 40
    Top = 184
    Width = 45
    Height = 13
    Caption = 'Sub Total'
  end
  object id: TEdit
    Left = 128
    Top = 24
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object nomasuk: TEdit
    Left = 128
    Top = 64
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object kdbarang: TEdit
    Left = 128
    Top = 104
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object jumlah: TEdit
    Left = 128
    Top = 144
    Width = 161
    Height = 21
    TabOrder = 3
  end
  object subtotal: TEdit
    Left = 128
    Top = 184
    Width = 161
    Height = 21
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 304
    Top = 24
    Width = 593
    Height = 177
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DBGrid2: TDBGrid
    Left = 280
    Top = 232
    Width = 297
    Height = 120
    DataSource = barang.DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 592
    Top = 232
    Width = 305
    Height = 120
    DataSource = barang_masuk.DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object simpan: TButton
    Left = 16
    Top = 216
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 8
    OnClick = simpanClick
  end
  object ubah: TButton
    Left = 96
    Top = 216
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 9
    OnClick = ubahClick
  end
  object hapus: TButton
    Left = 176
    Top = 216
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 10
    OnClick = hapusClick
  end
  object DataSource1: TDataSource
    DataSet = ZQuery2
    Left = 120
    Top = 368
  end
  object ZQuery1: TZQuery
    Connection = Login.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from barang_masuk_detail')
    Params = <>
    Left = 48
    Top = 392
  end
  object ZQuery2: TZQuery
    Connection = Login.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from barang_masuk_detail')
    Params = <>
    Left = 56
    Top = 344
  end
end
