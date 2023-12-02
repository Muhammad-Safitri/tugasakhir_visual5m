object barang: Tbarang
  Left = 199
  Top = 148
  Width = 928
  Height = 480
  Caption = 'barang'
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
    Width = 61
    Height = 13
    Caption = 'Kode Barang'
  end
  object Label2: TLabel
    Left = 40
    Top = 56
    Width = 64
    Height = 13
    Caption = 'Nama Barang'
  end
  object Label3: TLabel
    Left = 40
    Top = 96
    Width = 48
    Height = 13
    Caption = 'Harga Beli'
  end
  object Label4: TLabel
    Left = 40
    Top = 136
    Width = 29
    Height = 13
    Caption = 'Harga'
  end
  object Label5: TLabel
    Left = 40
    Top = 176
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object Label6: TLabel
    Left = 40
    Top = 216
    Width = 51
    Height = 13
    Caption = 'Kode Jenis'
  end
  object kdbarang: TEdit
    Left = 136
    Top = 16
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object namabarang: TEdit
    Left = 136
    Top = 56
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object hargabeli: TEdit
    Left = 136
    Top = 96
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object harga: TEdit
    Left = 136
    Top = 136
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object jumlah: TEdit
    Left = 136
    Top = 176
    Width = 185
    Height = 21
    TabOrder = 4
  end
  object kodejenis: TEdit
    Left = 136
    Top = 216
    Width = 185
    Height = 21
    TabOrder = 5
  end
  object simpan: TButton
    Left = 40
    Top = 256
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = simpanClick
  end
  object ubah: TButton
    Left = 136
    Top = 256
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 7
    OnClick = ubahClick
  end
  object hapus: TButton
    Left = 232
    Top = 256
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = hapusClick
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 16
    Width = 569
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
  object report: TButton
    Left = 328
    Top = 256
    Width = 75
    Height = 25
    Caption = 'REPORT'
    TabOrder = 10
    OnClick = reportClick
  end
  object ZQuery1: TZQuery
    Connection = Login.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 32
    Top = 376
  end
  object ZQuery2: TZQuery
    Connection = Login.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 32
    Top = 328
  end
  object DataSource1: TDataSource
    DataSet = ZQuery2
    Left = 88
    Top = 368
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataSource1
    BCDToCurrency = False
    Left = 88
    Top = 328
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45262.778188888890000000
    ReportOptions.LastChange = 45262.778188888890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 208
    Top = 336
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Left = 272.126160000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'BARANG')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'KODE BARANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 207.874150000000000000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA BARANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 302.362400000000000000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HARGA BELI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 396.850650000000000000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'HARGA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 491.338900000000000000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 49.133890000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataField = 'KodeBarang'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."KodeBarang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 207.874150000000000000
          Width = 94.488250000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataField = 'NamaBarang'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."NamaBarang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 302.362400000000000000
          Width = 94.488250000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataField = 'HargaBeli'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."HargaBeli"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 396.850650000000000000
          Width = 94.488250000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataField = 'Harga'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."Harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 491.338900000000000000
          Width = 94.488250000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataField = 'Jumlah'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."Jumlah"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
