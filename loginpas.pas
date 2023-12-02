unit loginpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TLogin = class(TForm)
    txtusername: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtpassword: TEdit;
    ZConnection1: TZConnection;
    login: TButton;
    ZQuery1: TZQuery;
    signin: TButton;
    procedure loginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

uses
  adminpas;

{$R *.dfm}

procedure TLogin.loginClick(Sender: TObject);
var
  usrname, pswd, kuerilogin :string;
begin
  usrname := txtusername.Text;
  pswd := txtpassword.Text;

  kuerilogin := 'SELECT * FROM login WHERE Username = :Username AND `Password` = :pswd';

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add(kuerilogin);

  ZQuery1.ParamByName('Username').AsString := usrname;
  ZQuery1.ParamByName('pswd').AsString := pswd;
  ZQuery1.Open;

  if (ZQuery1.RecordCount > 0) then
  begin
    ShowMessage('Selamat Datang, pengguna');
    administrasi.ShowModal;
  end
  else
  begin
    ShowMessage('Anda Belum Terdaftar!');
  end;
end;

end.
