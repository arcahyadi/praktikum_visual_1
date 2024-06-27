unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ZAbstractConnection,
  ZConnection, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    ZQuery2: TZQuery;
    BukuCon: TZConnection;
    BukuSource: TDataSource;
    idBuku: TEdit;
    JudulInput: TEdit;
    PublikasiInput: TEdit;
    GenreInput: TEdit;
    SimpanBTBuku: TButton;
    ZQuery1: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure SimpanBTBukuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
  // Clear existing items
  ComboBox1.Items.Clear;

  // Open the query to fetch authors from the database
  ZQuery2.Close;
  ZQuery2.SQL.Text := 'SELECT name FROM author ORDER BY name';
  ZQuery2.Open;

  // Populate the combobox with author names
  while not ZQuery2.Eof do
  begin
    ComboBox1.Items.Add(ZQuery2.FieldByName('name').AsString);
    ZQuery2.Next;
  end;

  // Close the query after fetching data
  ZQuery2.Close;
end;

procedure TForm2.SimpanBTBukuClick(Sender: TObject);
var
  id_author: Integer;
begin
  if idBuku.Text = '' then
  begin
    MessageDlg('ID Buku Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    idBuku.SetFocus;
  end
  else if JudulInput.Text = '' then
  begin
    MessageDlg('Judul Buku Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    JudulInput.SetFocus;
  end
  else if PublikasiInput.Text = '' then
  begin
    MessageDlg('Tahun Publikasi Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    PublikasiInput.SetFocus;
  end
  else if GenreInput.Text = '' then
  begin
    MessageDlg('Genre Buku Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    GenreInput.SetFocus;
  end
  else if ComboBox1.ItemIndex = -1 then
  begin
    MessageDlg('Pilih Penulis (Author)', mtInformation, [mbOK], 0);
    ComboBox1.SetFocus;
  end
  else
  begin
    // Retrieve ID Author based on the selected name from ComboBox
    ZQuery2.Close;
    ZQuery2.SQL.Text := 'SELECT id_author FROM author WHERE name = :authorName';
    ZQuery2.Params.ParamByName('authorName').AsString := ComboBox1.Items[ComboBox1.ItemIndex];
    ZQuery2.Open;

    id_author := ZQuery2.FieldByName('id_author').AsInteger;

    // Insert the book record into the database
    try
      ZQuery1.SQL.Text := 'INSERT INTO buku (id_buku, title, publication_year, genre, id_author) ' +
                          'VALUES (:id_buku, :title, :publication_year, :genre, :id_author)';
      ZQuery1.Params.ParamByName('id_buku').AsString := idBuku.Text;
      ZQuery1.Params.ParamByName('title').AsString := JudulInput.Text;
      ZQuery1.Params.ParamByName('publication_year').AsInteger := StrToInt(PublikasiInput.Text);
      ZQuery1.Params.ParamByName('genre').AsString := GenreInput.Text;
      ZQuery1.Params.ParamByName('author_id').AsInteger := id_author;

      ZQuery1.ExecSQL;

      // Provide user feedback
      ShowMessage('Data buku berhasil disimpan.');

      // Clear input fields after successful insertion
      idBuku.Text := '';
      JudulInput.Text := '';
      PublikasiInput.Text := '';
      GenreInput.Text := '';
      ComboBox1.ItemIndex := -1;
      idBuku.SetFocus;

    except
      on E: Exception do
        MessageDlg('Error: ' + E.Message, mtError, [mbOK], 0);
    end;

    // Close the query after usage
    ZQuery2.Close;
  end;
end;

end.

