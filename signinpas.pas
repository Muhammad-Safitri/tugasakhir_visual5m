unit signinpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tsignin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    txtusername: TEdit;
    txtpassword: TEdit;
    login: TButton;
    txtpassword2: TEdit;
    ZQuery1: TZQuery;
    Label3: TLabel;
    txtnama: TEdit;
    procedure loginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  signin: Tsignin;

implementation

uses
  loginpas;

{$R *.dfm}

procedure Tsignin.loginClick(Sender: TObject);
var
  cek : Boolean;
begin
ZQuery1.SQL.Text := '';
ZQuery1.SQL.Text := 'SELECT * FROM login WHERE Username = :Username';
ZQuery1.ParamByName('Username').Value := txtusername.Text;
ZQuery1.Open;

cek := not ZQuery1.IsEmpty;

if not cek then
begin
  if txtpassword = txtpassword2 then
  begin
    ShowMessage('cek ulang password anda');
  end
  else
  begin
    ZQuery1.SQL.Text := '';
    ZQuery1.SQL.Text := 'INSERT INTO login (Username, Password, Nama) VALUES (:Username, :Password, :Nama)';
    ZQuery1.ParamByName('Username').Value := txtusername.Text;
    ZQuery1.ParamByName('Password').Value := txtpassword2.Text;
    ZQuery1.ParamByName('Nama').Value := txtnama.Text;
  end;
end
else
begin
  ShowMessage('Username sudah ada');
end;

end;

end.
