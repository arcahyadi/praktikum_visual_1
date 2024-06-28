unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZAbstractConnection, ZConnection,
  Vcl.StdCtrls, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    NamaInput: TEdit;
    Label3: TLabel;
    EmailInput: TEdit;
    SimpanBT: TButton;
    EditBT: TButton;
    HapusBT: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZQuery1id_author: TZIntegerField;
    ZQuery1name: TZUnicodeStringField;
    ZQuery1email: TZUnicodeStringField;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    idInput: TEdit;
    procedure SimpanBTClick(Sender: TObject);
    procedure EditBTClick(Sender: TObject);
    procedure HapusBTClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.EditBTClick(Sender: TObject);
begin
  if idInput.Text = '' then
  begin
    MessageDlg('ID Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    idInput.SetFocus;
  end
  else if NamaInput.Text = '' then
  begin
    MessageDlg('Nama Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    NamaInput.SetFocus;
  end
  else if EmailInput.Text = '' then
  begin
    MessageDlg('Email Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    EmailInput.SetFocus;
  end
  else
  begin
    ZQuery1.Edit;
    ZQuery1.FieldByName('id_author').AsString := idInput.Text;
    ZQuery1.FieldByName('name').AsString := NamaInput.Text;
    ZQuery1.FieldByName('email').AsString := EmailInput.Text;
    ZQuery1.Post;
    ShowMessage('Data Berhasil diupdate');

    // Membersihkan input setelah penyimpanan
    idInput.Text := '';
    NamaInput.Text := '';
    EmailInput.Text := '';
    idInput.SetFocus;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ZConnection1.Connect;
  ZQuery1.Open;
end;

procedure TForm1.HapusBTClick(Sender: TObject);
begin
if ZQuery1.RecordCount <=0 then
MessageDlg('Data tidak ada', TMsgDlgType.mtWarning,[MBOK],0) else
ZQuery1.Delete;
ShowMessage('Data dihapus');
end;

procedure TForm1.SimpanBTClick(Sender: TObject);
begin
  if idInput.Text = '' then
  begin
    MessageDlg('ID Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    idInput.SetFocus;
  end
  else if NamaInput.Text = '' then
  begin
    MessageDlg('Nama Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    NamaInput.SetFocus;
  end
  else if EmailInput.Text = '' then
  begin
    MessageDlg('Email Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    EmailInput.SetFocus;
  end
  else
  begin
    ZQuery1.Append;
    ZQuery1.FieldByName('id_author').AsString := idInput.Text;
    ZQuery1.FieldByName('name').AsString := NamaInput.Text;
    ZQuery1.FieldByName('email').AsString := EmailInput.Text;
    ZQuery1.Post;
    // Membersihkan input setelah penyimpanan
    idInput.Text := '';
    NamaInput.Text := '';
    EmailInput.Text := '';
    idInput.SetFocus;
    ShowMessage('Data berhasil disimpan');

  end;
end;


end.
