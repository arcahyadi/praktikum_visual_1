unit Peminjaman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ZAbstractConnection,
  ZConnection, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.Grids, Vcl.DBGrids, System.UITypes;

type
  TForm5 = class(TForm)
    PeminjamanCon: TZConnection;
    ComboBox1: TComboBox;
    ZQuery2: TZQuery;
    ZQuery2id_buku: TZIntegerField;
    ZQuery2title: TZUnicodeStringField;
    ZQuery2publication_year: TZIntegerField;
    ZQuery2genre: TZUnicodeStringField;
    ZQuery2author_id: TZIntegerField;
    ComboBox2: TComboBox;
    ZQuery1: TZQuery;
    idPeminjaman: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    QueryPeminjaman: TZQuery;
    SimpanBTPeminjaman: TButton;
    EditBTPeminjaman: TButton;
    HapusBTPeminjaman: TButton;
    DBGrid1: TDBGrid;
    SourcePeminjaman: TDataSource;
    ReportPeminjaman: TButton;
    QueryPeminjamanid_peminjaman: TZIntegerField;
    QueryPeminjamannama_member: TZUnicodeStringField;
    QueryPeminjamanjudul_buku: TZUnicodeStringField;
    procedure FormCreate(Sender: TObject);
    procedure SimpanBTPeminjamanClick(Sender: TObject);
    procedure HapusBTPeminjamanClick(Sender: TObject);
    procedure EditBTPeminjamanClick(Sender: TObject);
    procedure ReportPeminjamanClick(Sender: TObject);
  private

  public
    procedure isiComboBox;
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Member, Unit1, Unit2, Unit3, ReportBuku;

procedure TForm5.SimpanBTPeminjamanClick(Sender: TObject);
var
  id_buku: Integer;
  id_member: Integer;
begin
  if idPeminjaman.Text = '' then
  begin
    MessageDlg('ID Peminjaman Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    idPeminjaman.SetFocus;
  end
  else if ComboBox1.ItemIndex = -1 then
  begin
    MessageDlg('Pilih Buku', mtInformation, [mbOK], 0);
    ComboBox1.SetFocus;
  end
  else if ComboBox2.ItemIndex = -1 then
  begin
    MessageDlg('Pilih Member', mtInformation, [mbOK], 0);
    ComboBox2.SetFocus;
  end
  else
  begin
    // Retrieve selected book and member IDs
    id_buku := Integer(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);
    id_member := Integer(ComboBox2.Items.Objects[ComboBox2.ItemIndex]);
    // Insert the loan record into the database
    try
      ZQuery1.SQL.Text := 'INSERT INTO peminjaman (id_peminjaman, buku_id, member_id) ' +
                          'VALUES (:id_peminjaman, :buku_id, :member_id)';
      ZQuery1.Params.ParamByName('id_peminjaman').AsString := idPeminjaman.Text;
      ZQuery1.Params.ParamByName('buku_id').AsInteger := id_buku;
      ZQuery1.Params.ParamByName('member_id').AsInteger := id_member;
      ZQuery1.ExecSQL;
      // Provide user feedback
      ShowMessage('Data peminjaman berhasil disimpan.');
      QueryPeminjaman.Close;
      QueryPeminjaman.Open;
      // Clear input fields after successful insertion
      idPeminjaman.Text := '';
      ComboBox1.ItemIndex := -1;
      ComboBox2.ItemIndex := -1;
      idPeminjaman.SetFocus;
    except
      on E: Exception do
        MessageDlg('Error: ' + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TForm5.ReportPeminjamanClick(Sender: TObject);
begin
  Form6.QuickRep1.Preview;
end;

procedure TForm5.EditBTPeminjamanClick(Sender: TObject);
var
  id_buku: Integer;
  id_member: Integer;
begin
  if idPeminjaman.Text = '' then
  begin
    MessageDlg('ID Peminjaman Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    idPeminjaman.SetFocus;
  end
  else if ComboBox1.ItemIndex = -1 then
  begin
    MessageDlg('Pilih Buku', mtInformation, [mbOK], 0);
    ComboBox1.SetFocus;
  end
  else if ComboBox2.ItemIndex = -1 then
  begin
    MessageDlg('Pilih Member', mtInformation, [mbOK], 0);
    ComboBox2.SetFocus;
  end
  else
  begin
    // Retrieve selected book and member IDs
    id_buku := Integer(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);
    id_member := Integer(ComboBox2.Items.Objects[ComboBox2.ItemIndex]);
    // Update the loan record in the database
    try
      ZQuery1.SQL.Text := 'UPDATE peminjaman SET buku_id = :buku_id, member_id = :member_id ' +
                          'WHERE id_peminjaman = :id_peminjaman';
      ZQuery1.Params.ParamByName('id_peminjaman').AsString := idPeminjaman.Text;
      ZQuery1.Params.ParamByName('buku_id').AsInteger := id_buku;
      ZQuery1.Params.ParamByName('member_id').AsInteger := id_member;
      ZQuery1.ExecSQL;

      // Provide user feedback
      ShowMessage('Data peminjaman berhasil diupdate.');

      // Clear input fields after successful update
      idPeminjaman.Text := '';
      ComboBox1.ItemIndex := -1;
      ComboBox2.ItemIndex := -1;
      idPeminjaman.SetFocus;

      // Refresh the data in the grid
      QueryPeminjaman.Close;
      QueryPeminjaman.Open;
    except
      on E: Exception do
        MessageDlg('Error: ' + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;


procedure TForm5.FormCreate(Sender: TObject);
begin
    isiComboBox();
end;

procedure TForm5.HapusBTPeminjamanClick(Sender: TObject);
begin
  if QueryPeminjaman.RecordCount <= 0 then
  begin
    MessageDlg('Data tidak ada', TMsgDlgType.mtWarning, [MBOK], 0);
  end
  else if MessageDlg('Apakah Anda yakin ingin menghapus data ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      ZQuery1.SQL.Text := 'DELETE FROM peminjaman WHERE id_peminjaman = :id_peminjaman';
      ZQuery1.Params.ParamByName('id_peminjaman').AsString := QueryPeminjaman.FieldByName('id_peminjaman').AsString;
      ZQuery1.ExecSQL;
      // Provide user feedback
      ShowMessage('Data peminjaman berhasil dihapus.');
      // Refresh the data in the grid
      QueryPeminjaman.Close;
      QueryPeminjaman.Open;
    except
      on E: Exception do
        MessageDlg('Error: ' + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TForm5.isiComboBox;
begin
 // Buku
  ComboBox1.Items.Clear;

  ZQuery2.Close;
  ZQuery2.SQL.Text := 'SELECT * FROM buku ORDER BY title';
  ZQuery2.Open;

  while not ZQuery2.Eof do
  begin
    ComboBox1.Items.AddObject(ZQuery2.FieldByName('title').AsString, TObject(ZQuery2.FieldByName('id_buku').AsInteger));
    ZQuery2.Next;
  end;
  ZQuery2.Close;


  //Member
  ComboBox2.Items.Clear;

  ZQuery1.Close;
  ZQuery1.SQL.Text := 'SELECT * FROM member ORDER BY name';
  ZQuery1.Open;

  while not ZQuery1.Eof do
  begin
    ComboBox2.Items.AddObject(ZQuery1.FieldByName('name').AsString, TObject(ZQuery1.FieldByName('id_member').AsInteger));
    ZQuery1.Next;
  end;
  ZQuery1.Close;
end;

end.

