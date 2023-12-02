unit jenisbahanpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Grids, DBGrids;

type
  Tjenis_bahan = class(TForm)
    Edit1: TLabel;
    Label1: TLabel;
    kdjenis: TEdit;
    namajenis: TEdit;
    DBGrid1: TDBGrid;
    simpan: TButton;
    ubah: TButton;
    hapus: TButton;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    DataSource1: TDataSource;
    procedure simpanClick(Sender: TObject);
    procedure ubahClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure hapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  jenis_bahan: Tjenis_bahan;

implementation

uses
  loginpas, supplierpas;

{$R *.dfm}

procedure Tjenis_bahan.simpanClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'INSERT INTO jenis_bahan (KodeJenis, NamaJenis) VALUES (:KodeJenis, :NamaJenis)';

ZQuery1.ParamByName('KodeJenis').Value := kdjenis.Text;
ZQuery1.ParamByName('NamaJenis').Value := namajenis.Text;

ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure Tjenis_bahan.ubahClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'UPDATE jenis_bahan SET NamaJenis = :NamaJenis WHERE KodeJenis = :KodeJenis';

ZQuery1.ParamByName('KodeJenis').Value := kdjenis.Text;
ZQuery1.ParamByName('NamaJenis').Value := namajenis.Text;

ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure Tjenis_bahan.DBGrid1CellClick(Column: TColumn);
begin
kdjenis.Text := ZQuery2.Fields[0].AsString;
namajenis.Text := ZQuery2.Fields[1].AsString;
end;

procedure Tjenis_bahan.hapusClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'DELETE FROM jenis_bahan WHERE KodeJenis = :KodeJenis';
ZQuery1.ParamByName('KodeJenis').Value := kdjenis.Text;
ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

end.
