program utama;

uses
  Forms,
  loginpas in 'loginpas.pas' {Login},
  supplierpas in 'supplierpas.pas' {Supplier},
  barangpas in 'barangpas.pas' {barang},
  jenisbahanpas in 'jenisbahanpas.pas' {jenis_bahan},
  barangmasukpas in 'barangmasukpas.pas' {barang_masuk},
  barangkeluarpas in 'barangkeluarpas.pas' {barang_keluar},
  barangmasukdetailpas in 'barangmasukdetailpas.pas' {barang_masuk_detail},
  adminpas in 'adminpas.pas' {administrasi},
  signinpas in 'signinpas.pas' {signin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TSupplier, Supplier);
  Application.CreateForm(Tbarang, barang);
  Application.CreateForm(Tjenis_bahan, jenis_bahan);
  Application.CreateForm(Tbarang_masuk, barang_masuk);
  Application.CreateForm(Tbarang_keluar, barang_keluar);
  Application.CreateForm(Tbarang_masuk_detail, barang_masuk_detail);
  Application.CreateForm(Tadministrasi, administrasi);
  Application.CreateForm(Tsignin, signin);
  Application.Run;
end.
