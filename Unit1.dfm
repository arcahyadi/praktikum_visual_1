object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form Author'
  ClientHeight = 487
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Scaled = False
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 75
    Height = 16
    Caption = 'Data Author'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 33
    Top = 80
    Width = 32
    Height = 15
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 33
    Top = 120
    Width = 29
    Height = 15
    Caption = 'Email'
  end
  object Label4: TLabel
    Left = 33
    Top = 40
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object NamaInput: TEdit
    Left = 113
    Top = 77
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object EmailInput: TEdit
    Left = 113
    Top = 117
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object SimpanBT: TButton
    Left = 32
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = SimpanBTClick
  end
  object EditBT: TButton
    Left = 113
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 3
    OnClick = EditBTClick
  end
  object HapusBT: TButton
    Left = 194
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 4
    OnClick = HapusBTClick
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 207
    Width = 441
    Height = 218
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_author'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 224
        Visible = True
      end>
  end
  object idInput: TEdit
    Left = 113
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 6
  end
  object ReportAuthor: TButton
    Left = 275
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 7
    OnClick = ReportAuthorClick
  end
  object ZConnection1: TZConnection
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
    Left = 320
    Top = 48
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM author')
    Params = <>
    Left = 368
    Top = 112
    object ZQuery1id_author: TZIntegerField
      FieldName = 'id_author'
      Required = True
    end
    object ZQuery1name: TZUnicodeStringField
      DisplayLabel = 'Nama'
      DisplayWidth = 20
      FieldName = 'name'
      Required = True
      Size = 255
    end
    object ZQuery1email: TZUnicodeStringField
      DisplayLabel = 'Email'
      DisplayWidth = 40
      FieldName = 'email'
      Required = True
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 432
    Top = 48
  end
end
