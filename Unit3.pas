unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    Author1: TMenuItem;
    Author2: TMenuItem;
    Buku1: TMenuItem;
    ManajemenBuku1: TMenuItem;
    procedure Author2Click(Sender: TObject);
    procedure ManajemenBuku1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1, Unit2;

procedure TForm3.Author2Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TForm3.ManajemenBuku1Click(Sender: TObject);
begin
 Form2.Show;
end;

end.
