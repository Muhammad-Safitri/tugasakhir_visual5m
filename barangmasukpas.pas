unit barangmasukpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ComCtrls, StdCtrls;

type
  Tbarang_masuk = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    simpan: TButton;
    Label5: TLabel;
    Label6: TLabel;
    nomasuk: TEdit;
    kdbarang: TEdit;
    jumlah: TEdit;
    total: TEdit;
    kdsupplier: TEdit;
    tgl: TDateTimePicker;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    DataSource1: TDataSource;
    ubah: TButton;
    hapus: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    procedure simpanClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ubahClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  barang_masuk: Tbarang_masuk;

implementation

uses
  barangpas, jenisbahanpas, loginpas;

{$R *.dfm}

procedure Tbarang_masuk.simpanClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'INSERT INTO barang_masuk (NoMasuk, Tanggal, KodeBarang, Jumlah, Total, KodeSupplier) VALUES (:NoMasuk, :Tanggal, :KodeBarang, :Jumlah, :Total, :KodeSupplier)';

ZQuery1.ParamByName('NoMasuk').Value := nomasuk.Text;
ZQuery1.ParamByName('Tanggal').Value := tgl.Date;
ZQuery1.ParamByName('KodeBarang').Value := kdbarang.Text;
ZQuery1.ParamByName('Jumlah').Value := jumlah.Text;
ZQuery1.ParamByName('Total').Value := total.Text;
ZQuery1.ParamByName('KodeSupplier').Value := kdsupplier.Text;

ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure Tbarang_masuk.DBGrid1CellClick(Column: TColumn);
var
  date : TDateTime;
begin
nomasuk.Text := ZQuery2.Fields[0].AsString;
if (DBGrid1.DataSource.DataSet <> nil) and (DBGrid1.DataSource.DataSet.RecNo > 0) then
  begin
    date := DBGrid1.DataSource.DataSet.FieldByName('Tanggal').AsDateTime;
    tgl.Date := date;
  end;
kdbarang.Text := ZQuery2.Fields[2].AsString;
jumlah.Text := ZQuery2.Fields[3].AsString;
total.Text := ZQuery2.Fields[4].AsString;
kdsupplier.Text := ZQuery2.Fields[5].AsString;
end;

procedure Tbarang_masuk.ubahClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'UPDATE barang_masuk SET Tanggal = :Tanggal, KodeBarang = :KodeBarang, Jumlah = :Jumlah, Total = :Total, KodeSupplier = :KodeSupplier WHERE NoMasuk = :NoMasuk';

ZQuery1.ParamByName('NoMasuk').Value := nomasuk.Text;
ZQuery1.ParamByName('Tanggal').Value := tgl.Date;
ZQuery1.ParamByName('KodeBarang').Value := kdbarang.Text;
ZQuery1.ParamByName('Jumlah').Value := jumlah.Text;
ZQuery1.ParamByName('Total').Value := total.Text;
ZQuery1.ParamByName('KodeSupplier').Value := kdsupplier.Text;

ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure Tbarang_masuk.hapusClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'DELETE FROM barang_masuk WHERE NoMasuk = :NoMasuk';
ZQuery1.ParamByName('NoMasuk').Value := nomasuk.Text;
ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

end.
