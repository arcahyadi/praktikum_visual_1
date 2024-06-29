unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    Author1: TMenuItem;
    Author2: TMenuItem;
    Buku1: TMenuItem;
    ManajemenBuku1: TMenuItem;
    Member1: TMenuItem;
    Label1: TLabel;
    Peminjaman1: TMenuItem;
    Image1: TImage;
    procedure Author2Click(Sender: TObject);
    procedure ManajemenBuku1Click(Sender: TObject);
    procedure Member1Click(Sender: TObject);
    procedure Peminjaman1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1, Unit2, Member, Peminjaman;

procedure TForm3.Author2Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TForm3.ManajemenBuku1Click(Sender: TObject);
begin
 Form2.Show;
end;

procedure TForm3.Member1Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm3.Peminjaman1Click(Sender: TObject);
begin
  Form5.Show;
end;

end.
