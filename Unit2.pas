unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ZAbstractConnection,
  ZConnection, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids;

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
    EditBTBuku: TButton;
    HapusBTBuku: TButton;
    DBGrid1: TDBGrid;
    ZQuery1id_buku: TZIntegerField;
    ZQuery1title: TZUnicodeStringField;
    ZQuery1publication_year: TZIntegerField;
    ZQuery1genre: TZUnicodeStringField;
    ZQuery1author_name: TZUnicodeStringField;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SimpanBTBukuClick(Sender: TObject);
    procedure EditBTBukuClick(Sender: TObject);
    procedure HapusBTBukuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Member, Peminjaman, Unit1, Unit3;

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

  // Open the ZQuery1 to display data in the grid with author name
  ZQuery1.Close;
  ZQuery1.SQL.Text := 'SELECT buku.id_buku, buku.title, buku.publication_year, buku.genre, author.name AS author_name ' +
                      'FROM buku ' +
                      'LEFT JOIN author ON buku.author_id = author.id_author';
  ZQuery1.Open;
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
      ZQuery1.SQL.Text := 'INSERT INTO buku (id_buku, title, publication_year, genre, author_id) ' +
                          'VALUES (:id_buku, :title, :publication_year, :genre, :author_id)';
      ZQuery1.Params.ParamByName('id_buku').AsString := idBuku.Text;
      ZQuery1.Params.ParamByName('title').AsString := JudulInput.Text;
      ZQuery1.Params.ParamByName('publication_year').AsInteger := StrToInt(PublikasiInput.Text);
      ZQuery1.Params.ParamByName('genre').AsString := GenreInput.Text;
      ZQuery1.Params.ParamByName('author_id').AsInteger := id_author;

      ZQuery1.ExecSQL;

      // Refresh the dataset to update the grid
      ZQuery1.Close;
      ZQuery1.SQL.Text := 'SELECT buku.id_buku, buku.title, buku.publication_year, buku.genre, author.name AS author_name ' +
                          'FROM buku ' +
                          'LEFT JOIN author ON buku.author_id = author.id_author';
      ZQuery1.Open;

      // Provide user feedback
      ShowMessage('Data buku berhasil disimpan.');

      // Clear input fields after successful insertion
      idBuku.Text := '';
      JudulInput.Text := '';
      PublikasiInput.Text := '';
      GenreInput.Text := '';
      ComboBox1.ItemIndex := -1;
      idBuku.SetFocus;
      Form5.isiComboBox;

    except
      on E: Exception do
        MessageDlg('Error: ' + E.Message, mtError, [mbOK], 0);
    end;

    // Close the query after usage
    ZQuery2.Close;
  end;
end;

procedure TForm2.EditBTBukuClick(Sender: TObject);
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

    // Update the book record in the database
    try
      ZQuery1.SQL.Text := 'UPDATE buku SET title = :title, publication_year = :publication_year, genre = :genre, author_id = :author_id ' +
                          'WHERE id_buku = :id_buku';
      ZQuery1.Params.ParamByName('id_buku').AsString := idBuku.Text;
      ZQuery1.Params.ParamByName('title').AsString := JudulInput.Text;
      ZQuery1.Params.ParamByName('publication_year').AsInteger := StrToInt(PublikasiInput.Text);
      ZQuery1.Params.ParamByName('genre').AsString := GenreInput.Text;
      ZQuery1.Params.ParamByName('author_id').AsInteger := id_author;

      ZQuery1.ExecSQL;
      // Refresh the dataset to update the grid
      ZQuery1.Close;
      ZQuery1.SQL.Text := 'SELECT buku.id_buku, buku.title, buku.publication_year, buku.genre, author.name AS author_name ' +
                          'FROM buku ' +
                          'LEFT JOIN author ON buku.author_id = author.id_author';
      ZQuery1.Open;

      // Provide user feedback
      ShowMessage('Data buku berhasil diupdate.');
      Form5.isiComboBox;

      // Clear input fields after successful update
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

procedure TForm2.HapusBTBukuClick(Sender: TObject);
begin
  if idBuku.Text = '' then
  begin
    MessageDlg('ID Buku Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    idBuku.SetFocus;
  end
  else
  begin
    // Check if the book ID exists
    ZQuery2.Close;
    ZQuery2.SQL.Text := 'SELECT id_buku FROM buku WHERE id_buku = :id_buku';
    ZQuery2.Params.ParamByName('id_buku').AsString := idBuku.Text;
    ZQuery2.Open;

    if ZQuery2.RecordCount = 0 then
    begin
      MessageDlg('ID Buku tidak ditemukan', mtInformation, [mbOK], 0);
      idBuku.SetFocus;
    end
    else
    begin
      // Delete the book record from the database
      try
        ZQuery1.SQL.Text := 'DELETE FROM buku WHERE id_buku = :id_buku';
        ZQuery1.Params.ParamByName('id_buku').AsString := idBuku.Text;

        ZQuery1.ExecSQL;

        // Refresh the dataset to update the grid
        ZQuery1.Close;
        ZQuery1.SQL.Text := 'SELECT buku.id_buku, buku.title, buku.publication_year, buku.genre, author.name AS author_name ' +
                            'FROM buku ' +
                            'LEFT JOIN author ON buku.author_id = author.id_author';
        ZQuery1.Open;

        // Provide user feedback
        ShowMessage('Data buku berhasil dihapus.');
        Form5.isiComboBox;

        // Clear input fields after successful deletion
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
    end;

    // Close the query after usage
    ZQuery2.Close;
  end;
end;

end.

