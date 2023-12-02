unit supplierpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TSupplier = class(TForm)
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    kdsupplier: TEdit;
    namasupplier: TEdit;
    alamat: TEdit;
    telpon: TEdit;
    kodepos: TEdit;
    simpan: TButton;
    ubah: TButton;
    DBGrid1: TDBGrid;
    hapus: TButton;
    ZQuery2: TZQuery;
    report: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
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
  Supplier: TSupplier;

implementation

uses
  loginpas;

{$R *.dfm}

procedure TSupplier.simpanClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'INSERT INTO supplier (KodeSupplier, NamaSupplier, Alamat, Telp, KodePos) VALUES (:KodeSupplier, :NamaSupplier, :Alamat, :Telp, :KodePos)';

ZQuery1.ParamByName('KodeSupplier').Value := kdsupplier.Text;
ZQuery1.ParamByName('NamaSupplier').Value := namasupplier.Text;
ZQuery1.ParamByName('Alamat').Value := alamat.Text;
ZQuery1.ParamByName('Telp').Value := telpon.Text;
ZQuery1.ParamByName('KodePos').Value := kodepos.Text;

ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure TSupplier.DBGrid1CellClick(Column: TColumn);
begin
kdsupplier.Text := ZQuery2.Fields[0].AsString;
namasupplier.Text := ZQuery2.Fields[1].AsString;
alamat.Text := ZQuery2.Fields[2].AsString;
telpon.Text := ZQuery2.Fields[3].AsString;
kodepos.Text := ZQuery2.Fields[4].AsString;
end;

procedure TSupplier.ubahClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'UPDATE supplier set NamaSupplier = :NamaSupplier, Alamat = :Alamat, Telp = :Telp, KodePos = :KodePos WHERE KodeSupplier = :KodeSupplier';

ZQuery1.ParamByName('KodeSupplier').Value := kdsupplier.Text;
ZQuery1.ParamByName('NamaSupplier').Value := namasupplier.Text;
ZQuery1.ParamByName('Alamat').Value := alamat.Text;
ZQuery1.ParamByName('Telp').Value := telpon.Text;
ZQuery1.ParamByName('KodePos').Value := kodepos.Text;

ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure TSupplier.hapusClick(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'DELETE FROM supplier WHERE KodeSupplier = :KodeSupplier';
ZQuery1.ParamByName('KodeSupplier').Value := kdsupplier.Text;
ZQuery1.ExecSQL;
DataSource1.DataSet.Refresh;
end;

procedure TSupplier.reportClick(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
