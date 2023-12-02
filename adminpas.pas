unit adminpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tadministrasi = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    ZQuery2: TZQuery;
    DataSource2: TDataSource;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    Button8: TButton;
    Button9: TButton;
    DataSource3: TDataSource;
    ZQuery3: TZQuery;
    frxDBDataset3: TfrxDBDataset;
    frxReport3: TfrxReport;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  administrasi: Tadministrasi;

implementation

uses
  supplierpas, barangpas, jenisbahanpas, barangmasukpas, barangkeluarpas, barangmasukdetailpas, 
  loginpas;

{$R *.dfm}

procedure Tadministrasi.Button1Click(Sender: TObject);
begin
barang.ShowModal;
end;

procedure Tadministrasi.Button2Click(Sender: TObject);
begin
barang_masuk.ShowModal;
end;

procedure Tadministrasi.Button3Click(Sender: TObject);
begin
barang_masuk_detail.ShowModal;
end;

procedure Tadministrasi.Button4Click(Sender: TObject);
begin
barang_keluar.ShowModal;
end;

procedure Tadministrasi.Button5Click(Sender: TObject);
begin
jenis_bahan.ShowModal;
end;

procedure Tadministrasi.Button6Click(Sender: TObject);
begin
Supplier.ShowModal;
end;

procedure Tadministrasi.Button7Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure Tadministrasi.Button8Click(Sender: TObject);
begin
frxReport2.ShowReport();
end;

end.
