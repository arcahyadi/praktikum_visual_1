unit Member;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm4 = class(TForm)
    QueryMember: TZQuery;
    SourceMember: TDataSource;
    Label1: TLabel;
    idMember: TEdit;
    Label2: TLabel;
    NamaInput: TEdit;
    EmailInput: TEdit;
    Label3: TLabel;
    SimpanBTMember: TButton;
    EditBTMember: TButton;
    Label4: TLabel;
    HapusBTMember: TButton;
    DBGrid1: TDBGrid;
    procedure SimpanBTMemberClick(Sender: TObject);
    procedure EditBTMemberClick(Sender: TObject);
    procedure HapusBTMemberClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Peminjaman;

procedure TForm4.EditBTMemberClick(Sender: TObject);
begin
  if idMember.Text = '' then
  begin
    MessageDlg('ID Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    idMember.SetFocus;
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
    // Update the record in the database using parameters
    try
      QueryMember.Edit;
      QueryMember.FieldByName('id_member').AsString := idMember.Text;
      QueryMember.FieldByName('name').AsString := NamaInput.Text;
      QueryMember.FieldByName('email').AsString := EmailInput.Text;
      QueryMember.Post;
      ShowMessage('Data Berhasil diupdate');
      Form5.isiComboBox;
      // Clear input fields after successful update
      idMember.Text := '';
      NamaInput.Text := '';
      EmailInput.Text := '';
      idMember.SetFocus;
      // Refresh the data in the grid
      QueryMember.Close;
      QueryMember.Open;
    except
      on E: Exception do
        MessageDlg('Error: ' + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TForm4.HapusBTMemberClick(Sender: TObject);
begin
  if QueryMember.RecordCount <=0 then
  MessageDlg('Data tidak ada', TMsgDlgType.mtWarning,[MBOK],0) else
  QueryMember.Delete;
  Form5.isiComboBox;
  ShowMessage('Data dihapus');

end;

procedure TForm4.SimpanBTMemberClick(Sender: TObject);
begin
  if idMember.Text = '' then
  begin
    MessageDlg('ID Tidak Boleh Kosong', mtInformation, [mbOK], 0);
    idMember.SetFocus;
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
    // Insert the new record into the database using parameters
    try
      QueryMember.Append;
      QueryMember.FieldByName('id_member').AsString := idMember.Text;
      QueryMember.FieldByName('name').AsString := NamaInput.Text;
      QueryMember.FieldByName('email').AsString := EmailInput.Text;
      QueryMember.Post;
      ShowMessage('Data berhasil disimpan.');
      Form5.isiComboBox;

      // Clear input fields after successful insertion
      idMember.Text := '';
      NamaInput.Text := '';
      EmailInput.Text := '';
      idMember.SetFocus;

      // Refresh the data in the grid
      QueryMember.Close;
      QueryMember.Open;
    except
      on E: Exception do
        MessageDlg('Error: ' + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;

end.
