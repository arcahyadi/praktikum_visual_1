object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Laporan Peminjaman'
  ClientHeight = 548
  ClientWidth = 1247
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Scaled = False
  TextHeight = 15
  object QuickRep1: TQuickRep
    Left = 8
    Top = 16
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = Form5.QueryPeminjaman
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      127.000000000000000000
      2970.000000000000000000
      127.000000000000000000
      2100.000000000000000000
      127.000000000000000000
      127.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 48
      Top = 48
      Width = 698
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1846.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
    end
    object TitleBand1: TQRBand
      Left = 48
      Top = 88
      Width = 698
      Height = 161
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        425.979166666666700000
        1846.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 144
        Top = 40
        Width = 410
        Height = 33
        Size.Values = (
          87.312500000000000000
          381.000000000000000000
          105.833333333333300000
          1084.791666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Caption = 'LAPORAN PEMINJAMAN BUKU'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 20
      end
    end
    object DetailBand1: TQRBand
      Left = 48
      Top = 249
      Width = 698
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1846.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape5: TQRShape
        Left = 0
        Top = 0
        Width = 241
        Height = 41
        Size.Values = (
          108.479166666666700000
          0.000000000000000000
          0.000000000000000000
          637.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 240
        Top = 0
        Width = 241
        Height = 41
        Size.Values = (
          108.479166666666700000
          635.000000000000000000
          0.000000000000000000
          637.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 480
        Top = 0
        Width = 218
        Height = 41
        Size.Values = (
          108.479166666666700000
          1270.000000000000000000
          0.000000000000000000
          576.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 73
        Top = 13
        Width = 108
        Height = 19
        Size.Values = (
          50.270833333333330000
          193.145833333333300000
          34.395833333333330000
          285.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = Form5.QueryPeminjaman
        DataField = 'id_peminjaman'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRDBText2: TQRDBText
        Left = 318
        Top = 13
        Width = 107
        Height = 19
        Size.Values = (
          50.270833333333330000
          841.375000000000000000
          34.395833333333330000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = Form5.QueryPeminjaman
        DataField = 'nama_member'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRDBText3: TQRDBText
        Left = 551
        Top = 13
        Width = 74
        Height = 19
        Size.Values = (
          50.270833333333330000
          1457.854166666667000000
          34.395833333333330000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = Form5.QueryPeminjaman
        DataField = 'judul_buku'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
    end
    object QRShape3: TQRShape
      Left = 288
      Top = 214
      Width = 241
      Height = 35
      Size.Values = (
        92.604166666666670000
        762.000000000000000000
        566.208333333333300000
        637.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape4: TQRShape
      Left = 528
      Top = 214
      Width = 218
      Height = 35
      Size.Values = (
        92.604166666666670000
        1397.000000000000000000
        566.208333333333300000
        576.791666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape2: TQRShape
      Left = 48
      Top = 214
      Width = 241
      Height = 35
      Size.Values = (
        92.604166666666670000
        127.000000000000000000
        566.208333333333300000
        637.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel2: TQRLabel
      Left = 164
      Top = 222
      Width = 18
      Height = 20
      Size.Values = (
        52.916666666666670000
        433.916666666666700000
        587.375000000000000000
        47.625000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Alignment = taCenter
      AlignToBand = False
      Caption = 'ID'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 13
    end
    object QRLabel3: TQRLabel
      Left = 383
      Top = 223
      Width = 60
      Height = 20
      Size.Values = (
        52.916666666666670000
        1013.354166666667000000
        590.020833333333300000
        158.750000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Alignment = taCenter
      AlignToBand = False
      Caption = 'Member'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 13
    end
    object QRLabel4: TQRLabel
      Left = 626
      Top = 223
      Width = 38
      Height = 20
      Size.Values = (
        52.916666666666670000
        1656.291666666667000000
        590.020833333333300000
        100.541666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Alignment = taCenter
      AlignToBand = False
      Caption = 'Buku'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 13
    end
  end
end
