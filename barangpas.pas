unit barangpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  Tbarang = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    kdbarang: TEdit;
    namabarang: TEdit;
    hargabeli: TEdit;
    harga: TEdit;
    jumlah: TEdit;
    kodejenis: TEdit;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    DataSource1: TDataSource;
    simpan: TButton;
    ubah: TButton;
    hapus: TButton;
    DBGrid1: TDBGrid;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    report: TButton;
    procedure simpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ubahClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure reportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  barang: Tbarang;

implementation

uses
  loginpas, supplierpas;

{$R *.dfm}

procedure Tbarang.simpanClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'INSERT INTO barang (KodeBarang, NamaBarang, HargaBeli, Harga, Jumlah, KodeJenis) VALUES (:KodeBarang, :NamaBarang, :HargaBeli, :Harga, :Jumlah, :KodeJenis)';

ZQuery1.ParamByName('KodeBarang').Value := kdbarang.Text;
ZQuery1.ParamByName('NamaBarang').Value := namabarang.Text;
ZQuery1.ParamByName('HargaBeli').Value := hargabeli.Text;
ZQuery1.ParamByName('Harga').Value := harga.Text;
ZQuery1.ParamByName('Jumlah').Value := jumlah.Text;
ZQuery1.ParamByName('KodeJenis').Value := kodejenis.Text;

ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure Tbarang.DBGrid1CellClick(Column: TColumn);
begin
kdbarang.Text := ZQuery2.Fields[0].AsString;
namabarang.Text := ZQuery2.Fields[1].AsString;
hargabeli.Text := ZQuery2.Fields[2].AsString;
harga.Text := ZQuery2.Fields[3].AsString;
jumlah.Text := ZQuery2.Fields[4].AsString;
kodejenis.Text := ZQuery2.Fields[5].AsString;
end;

procedure Tbarang.ubahClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'UPDATE barang SET NamaBarang = :NamaBarang, HargaBeli = :HargaBeli, Harga = :Harga, Jumlah = :Jumlah, KodeJenis = :KodeJenis WHERE KodeBarang = :KodeBarang';

ZQuery1.ParamByName('KodeBarang').Value := kdbarang.Text;
ZQuery1.ParamByName('NamaBarang').Value := namabarang.Text;
ZQuery1.ParamByName('HargaBeli').Value := hargabeli.Text;
ZQuery1.ParamByName('Harga').Value := harga.Text;
ZQuery1.ParamByName('Jumlah').Value := jumlah.Text;
ZQuery1.ParamByName('KodeJenis').Value := kodejenis.Text;

ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure Tbarang.hapusClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'DELETE FROM barang WHERE KodeBarang = :KodeBarang';
ZQuery1.ParamByName('KodeBarang').Value := kdbarang.Text;
ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure Tbarang.reportClick(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
