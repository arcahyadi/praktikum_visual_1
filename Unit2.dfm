object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form Buku'
  ClientHeight = 570
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 34
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 32
    Top = 82
    Width = 28
    Height = 15
    Caption = 'Judul'
  end
  object Label3: TLabel
    Left = 32
    Top = 130
    Width = 90
    Height = 15
    Caption = 'Publikasi (Tahun)'
  end
  object Label4: TLabel
    Left = 32
    Top = 178
    Width = 31
    Height = 15
    Caption = 'Genre'
  end
  object Label5: TLabel
    Left = 32
    Top = 226
    Width = 37
    Height = 15
    Caption = 'Author'
  end
  object Label6: TLabel
    Left = 32
    Top = 8
    Width = 67
    Height = 16
    Caption = 'Data Buku'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 144
    Top = 223
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object idBuku: TEdit
    Left = 144
    Top = 31
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object JudulInput: TEdit
    Left = 144
    Top = 79
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object PublikasiInput: TEdit
    Left = 144
    Top = 127
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object GenreInput: TEdit
    Left = 144
    Top = 175
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object SimpanBTBuku: TButton
    Left = 32
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = SimpanBTBukuClick
  end
  object EditBTBuku: TButton
    Left = 144
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 6
    OnClick = EditBTBukuClick
  end
  object HapusBTBuku: TButton
    Left = 249
    Top = 268
    Width = 75
    Height = 33
    Caption = 'Hapus'
    TabOrder = 7
    OnClick = HapusBTBukuClick
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 307
    Width = 513
    Height = 182
    DataSource = BukuSource
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_buku'
        Title.Caption = 'ID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'title'
        Title.Caption = 'Judul'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'publication_year'
        Title.Caption = 'Publikasi'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'genre'
        Title.Caption = 'Genre'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'author_name'
        Title.Caption = 'Nama Author'
        Width = 150
        Visible = True
      end>
  end
  object ZQuery2: TZQuery
    Connection = BukuCon
    Active = True
    SQL.Strings = (
      'SELECT * FROM author ORDER BY name')
    Params = <>
    Left = 304
    Top = 24
  end
  object BukuCon: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'latihan_visual_1'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'D:\Uniska semester 2\praktikum_visual_1\libmysql.dll'
    Left = 304
    Top = 88
  end
  object BukuSource: TDataSource
    DataSet = ZQuery1
    Left = 304
    Top = 144
  end
  object ZQuery1: TZQuery
    Connection = BukuCon
    Active = True
    SQL.Strings = (
      
        'SELECT buku.id_buku, buku.title, buku.publication_year, buku.gen' +
        're, author.name AS author_name  FROM buku LEFT JOIN author ON bu' +
        'ku.author_id = author.id_author')
    Params = <>
    Left = 376
    Top = 24
    object ZQuery1id_buku: TZIntegerField
      FieldName = 'id_buku'
      Required = True
    end
    object ZQuery1title: TZUnicodeStringField
      FieldName = 'title'
      Required = True
      Size = 255
    end
    object ZQuery1publication_year: TZIntegerField
      FieldName = 'publication_year'
      Required = True
    end
    object ZQuery1genre: TZUnicodeStringField
      FieldName = 'genre'
      Required = True
      Size = 255
    end
    object ZQuery1author_name: TZUnicodeStringField
      FieldName = 'author_name'
      Required = True
      Size = 255
    end
  end
end
