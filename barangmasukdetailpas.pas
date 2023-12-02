unit barangmasukdetailpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tbarang_masuk_detail = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    id: TEdit;
    nomasuk: TEdit;
    kdbarang: TEdit;
    jumlah: TEdit;
    subtotal: TEdit;
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    simpan: TButton;
    ubah: TButton;
    hapus: TButton;
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
  barang_masuk_detail: Tbarang_masuk_detail;

implementation

uses
  loginpas, barangpas, barangmasukpas;

{$R *.dfm}

procedure Tbarang_masuk_detail.simpanClick(Sender: TObject);
begin
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'INSERT INTO barang_masuk_detail (Id, NoMasuk, KodeBarang, Jumlah, SubTotal) VALUES (:Id, :NoMasuk, :KodeBarang, :Jumlah, :SubTotal)';

ZQuery1.ParamByName('Id').Value := id.Text;
ZQuery1.ParamByName('NoMasuk').Value := nomasuk.Text;
ZQuery1.ParamByName('KodeBarang').Value := kdbarang.Text;
ZQuery1.ParamByName('Jumlah').Value := jumlah.Text;
ZQuery1.ParamByName('SubTotal').Value := subtotal.Text;

ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure Tbarang_masuk_detail.DBGrid1CellClick(Column: TColumn);
begin
id.Text := ZQuery2.Fields[0].AsString;
nomasuk.Text := ZQuery2.Fields[1].AsString;
kdbarang.Text := ZQuery2.Fields[2].AsString;
jumlah.Text := ZQuery2.Fields[3].AsString;
subtotal.Text := ZQuery2.Fields[4].AsString;
end;

procedure Tbarang_masuk_detail.ubahClick(Sender: TObject);
begin
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'UPDATE barang_masuk_detail SET NoMasuk = :NoMasuk, KodeBarang = :KodeBarang, Jumlah = :Jumlah, SubTotal = :SubTotal WHERE Id = :id';

ZQuery1.ParamByName('Id').Value := id.Text;
ZQuery1.ParamByName('NoMasuk').Value := nomasuk.Text;
ZQuery1.ParamByName('KodeBarang').Value := kdbarang.Text;
ZQuery1.ParamByName('Jumlah').Value := jumlah.Text;
ZQuery1.ParamByName('SubTotal').Value := subtotal.Text;

ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure Tbarang_masuk_detail.hapusClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'DELETE FROM barang_masuk_detail WHERE Id = :Idd';
ZQuery1.ParamByName('Id').Value := id.Text;
ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

end.
