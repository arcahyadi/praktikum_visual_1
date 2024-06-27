object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form Buku'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 72
    Top = 58
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 72
    Top = 106
    Width = 28
    Height = 15
    Caption = 'Judul'
  end
  object Label3: TLabel
    Left = 72
    Top = 154
    Width = 90
    Height = 15
    Caption = 'Publikasi (Tahun)'
  end
  object Label4: TLabel
    Left = 72
    Top = 202
    Width = 31
    Height = 15
    Caption = 'Genre'
  end
  object Label5: TLabel
    Left = 72
    Top = 250
    Width = 37
    Height = 15
    Caption = 'Author'
  end
  object ComboBox1: TComboBox
    Left = 184
    Top = 247
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object idBuku: TEdit
    Left = 184
    Top = 55
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object JudulInput: TEdit
    Left = 184
    Top = 103
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object PublikasiInput: TEdit
    Left = 184
    Top = 151
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object GenreInput: TEdit
    Left = 184
    Top = 199
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object SimpanBTBuku: TButton
    Left = 72
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = SimpanBTBukuClick
  end
  object ZQuery2: TZQuery
    Connection = BukuCon
    Active = True
    SQL.Strings = (
      'SELECT * FROM author ORDER BY name')
    Params = <>
    Left = 344
    Top = 48
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
    Left = 344
    Top = 112
  end
  object BukuSource: TDataSource
    DataSet = ZQuery2
    Left = 344
    Top = 168
  end
  object ZQuery1: TZQuery
    Connection = BukuCon
    Active = True
    SQL.Strings = (
      'SELECT *  FROM buku')
    Params = <>
    Left = 448
    Top = 56
  end
end
