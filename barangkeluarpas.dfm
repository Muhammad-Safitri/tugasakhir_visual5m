object barang_keluar: Tbarang_keluar
  Left = 204
  Top = 144
  Width = 928
  Height = 480
  Caption = 'Barang Keluar'
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
    Left = 48
    Top = 24
    Width = 46
    Height = 13
    Caption = 'No Keluar'
  end
  object Label2: TLabel
    Left = 48
    Top = 64
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label3: TLabel
    Left = 48
    Top = 104
    Width = 61
    Height = 13
    Caption = 'Kode Barang'
  end
  object Label4: TLabel
    Left = 48
    Top = 144
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object Label5: TLabel
    Left = 48
    Top = 184
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object Label6: TLabel
    Left = 48
    Top = 224
    Width = 33
    Height = 13
    Caption = 'Tujuan'
  end
  object nokeluar: TEdit
    Left = 160
    Top = 24
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object tgl: TDateTimePicker
    Left = 160
    Top = 64
    Width = 186
    Height = 21
    Date = 45262.693900810180000000
    Time = 45262.693900810180000000
    TabOrder = 1
  end
  object kdbarang: TEdit
    Left = 160
    Top = 104
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object jumlah: TEdit
    Left = 160
    Top = 144
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object total: TEdit
    Left = 160
    Top = 184
    Width = 185
    Height = 21
    TabOrder = 4
  end
  object tujuan: TEdit
    Left = 160
    Top = 224
    Width = 185
    Height = 21
    TabOrder = 5
  end
  object simpan: TButton
    Left = 48
    Top = 256
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = simpanClick
  end
  object ubah: TButton
    Left = 128
    Top = 256
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 7
    OnClick = ubahClick
  end
  object hapus: TButton
    Left = 208
    Top = 256
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = hapusClick
  end
  object DBGrid1: TDBGrid
    Left = 360
    Top = 24
    Width = 537
    Height = 225
    DataSource = DataSource1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DBGrid2: TDBGrid
    Left = 360
    Top = 272
    Width = 241
    Height = 120
    DataSource = jenis_bahan.DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 608
    Top = 272
    Width = 241
    Height = 120
    DataSource = barang.DataSource1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ZQuery1: TZQuery
    Connection = Login.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from barang_keluar')
    Params = <>
    Left = 88
    Top = 360
  end
  object ZQuery2: TZQuery
    Connection = Login.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from barang_keluar')
    Params = <>
    Left = 32
    Top = 352
  end
  object DataSource1: TDataSource
    DataSet = ZQuery2
    Left = 152
    Top = 360
  end
end
