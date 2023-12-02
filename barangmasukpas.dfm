object barang_masuk: Tbarang_masuk
  Left = 211
  Top = 179
  Width = 928
  Height = 478
  Caption = 'Barang Masuk'
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
    Top = 16
    Width = 46
    Height = 13
    Caption = 'No Masuk'
  end
  object Label2: TLabel
    Left = 40
    Top = 56
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label3: TLabel
    Left = 40
    Top = 96
    Width = 61
    Height = 13
    Caption = 'Kode Barang'
  end
  object Label4: TLabel
    Left = 40
    Top = 136
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object Label5: TLabel
    Left = 40
    Top = 176
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object Label6: TLabel
    Left = 40
    Top = 216
    Width = 65
    Height = 13
    Caption = 'Kode Supplier'
  end
  object simpan: TButton
    Left = 40
    Top = 256
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 0
    OnClick = simpanClick
  end
  object nomasuk: TEdit
    Left = 136
    Top = 16
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object kdbarang: TEdit
    Left = 136
    Top = 96
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object jumlah: TEdit
    Left = 136
    Top = 136
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object total: TEdit
    Left = 136
    Top = 176
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object kdsupplier: TEdit
    Left = 136
    Top = 216
    Width = 145
    Height = 21
    TabOrder = 5
  end
  object tgl: TDateTimePicker
    Left = 136
    Top = 56
    Width = 145
    Height = 21
    Date = 45262.645446608800000000
    Time = 45262.645446608800000000
    TabOrder = 6
  end
  object ubah: TButton
    Left = 120
    Top = 256
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 7
    OnClick = ubahClick
  end
  object hapus: TButton
    Left = 200
    Top = 256
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = hapusClick
  end
  object DBGrid1: TDBGrid
    Left = 416
    Top = 32
    Width = 449
    Height = 217
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
    Left = 296
    Top = 288
    Width = 201
    Height = 120
    DataSource = Jenis.DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid3: TDBGrid
    Left = 512
    Top = 288
    Width = 393
    Height = 120
    DataSource = Barang.DataSource1
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
      'select * from barang_masuk')
    Params = <>
    Left = 64
    Top = 320
  end
  object ZQuery2: TZQuery
    Connection = Login.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from barang_masuk')
    Params = <>
    Left = 64
    Top = 376
  end
  object DataSource1: TDataSource
    DataSet = ZQuery2
    Left = 144
    Top = 344
  end
end
