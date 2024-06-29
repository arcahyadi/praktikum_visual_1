object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Member'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 48
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 32
    Top = 96
    Width = 32
    Height = 15
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 32
    Top = 144
    Width = 29
    Height = 15
    Caption = 'Email'
  end
  object Label4: TLabel
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
  object idMember: TEdit
    Left = 120
    Top = 45
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object NamaInput: TEdit
    Left = 120
    Top = 93
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object EmailInput: TEdit
    Left = 120
    Top = 141
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object SimpanBTMember: TButton
    Left = 32
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = SimpanBTMemberClick
  end
  object EditBTMember: TButton
    Left = 128
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 4
    OnClick = EditBTMemberClick
  end
  object HapusBTMember: TButton
    Left = 224
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = HapusBTMemberClick
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 223
    Width = 561
    Height = 178
    DataSource = SourceMember
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_member'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Caption = 'Nama'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Title.Caption = 'Email'
        Width = 200
        Visible = True
      end>
  end
  object ReportMember: TButton
    Left = 320
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 7
    OnClick = ReportMemberClick
  end
  object QueryMember: TZQuery
    Connection = Form2.BukuCon
    Active = True
    SQL.Strings = (
      'SELECT * FROM member ')
    Params = <>
    Left = 272
    Top = 112
  end
  object SourceMember: TDataSource
    DataSet = QueryMember
    Left = 352
    Top = 112
  end
end
