unit barangkeluarpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids;

type
  Tbarang_keluar = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    nokeluar: TEdit;
    tgl: TDateTimePicker;
    kdbarang: TEdit;
    jumlah: TEdit;
    total: TEdit;
    tujuan: TEdit;
    simpan: TButton;
    ubah: TButton;
    hapus: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    DataSource1: TDataSource;
    procedure simpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure hapusClick(Sender: TObject);
    procedure ubahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  barang_keluar: Tbarang_keluar;

implementation

uses
  loginpas, barangpas, jenisbahanpas;

{$R *.dfm}

procedure Tbarang_keluar.simpanClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'INSERT INTO barang_keluar (NoKeluar, Tanggal, KodeBarang, Jumlah, Total, Tujuan) VALUES (:NoMasuk, :Tanggal, :KodeBarang, :Jumlah, :Total, :Tujuan)';

ZQuery1.ParamByName('NoKeluar').Value := nokeluar.Text;
ZQuery1.ParamByName('Tanggal').Value := tgl.Date;
ZQuery1.ParamByName('KodeBarang').Value := kdbarang.Text;
ZQuery1.ParamByName('Jumlah').Value := jumlah.Text;
ZQuery1.ParamByName('Total').Value := total.Text;
ZQuery1.ParamByName('Tujuan').Value := tujuan.Text;
end;

procedure Tbarang_keluar.DBGrid1CellClick(Column: TColumn);
var
  date : TDateTime;
begin
nokeluar.Text := ZQuery2.Fields[0].AsString;
if (DBGrid1.DataSource.DataSet <> nil) and (DBGrid1.DataSource.DataSet.RecNo > 0) then
  begin
    date := DBGrid1.DataSource.DataSet.FieldByName('Tanggal').AsDateTime;
    tgl.Date := date;
  end;
kdbarang.Text := ZQuery2.Fields[2].AsString;
jumlah.Text := ZQuery2.Fields[3].AsString;
total.Text := ZQuery2.Fields[4].AsString;
tujuan.Text := ZQuery2.Fields[5].AsString;

end;

procedure Tbarang_keluar.hapusClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'DELETE FROM barang_keluar WHERE NoKeluar = :NoKeluar';
ZQuery1.ParamByName('NoKeluar').Value := nokeluar.Text;
ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure Tbarang_keluar.ubahClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'UPDATE barang_keluar SET Tanggal = :Tanggal, KodeBarang = :KodeBarang, Jumlah = :Jumlah, Total = :Total, Tujuan = :Tujuan WHERE NoKeluar = :NoKeluar';

ZQuery1.ParamByName('NoMasuk').Value := nokeluar.Text;
ZQuery1.ParamByName('Tanggal').Value := tgl.Date;
ZQuery1.ParamByName('KodeBarang').Value := kdbarang.Text;
ZQuery1.ParamByName('Jumlah').Value := jumlah.Text;
ZQuery1.ParamByName('Total').Value := total.Text;
ZQuery1.ParamByName('Tujuan').Value := tujuan.Text;

ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

end.
