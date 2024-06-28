object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Laporan Buku'
  ClientHeight = 581
  ClientWidth = 866
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Scaled = False
  TextHeight = 15
  object QuickRep1: TQuickRep
    Left = 48
    Top = 8
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = Form2.ZQuery1
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
        Left = 237
        Top = 40
        Width = 223
        Height = 33
        Size.Values = (
          87.312500000000000000
          627.062500000000000000
          105.833333333333300000
          590.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Caption = 'LAPORAN BUKU'
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
        Width = 139
        Height = 41
        Size.Values = (
          108.479166666666700000
          0.000000000000000000
          0.000000000000000000
          367.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 138
        Top = 0
        Width = 139
        Height = 41
        Size.Values = (
          108.479166666666700000
          365.125000000000000000
          0.000000000000000000
          367.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 275
        Top = 0
        Width = 139
        Height = 41
        Size.Values = (
          108.479166666666700000
          727.604166666666700000
          0.000000000000000000
          367.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 34
        Top = 6
        Width = 56
        Height = 19
        Size.Values = (
          50.270833333333330000
          89.958333333333330000
          15.875000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = Form2.ZQuery1
        DataField = 'id_buku'
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
      object QRShape11: TQRShape
        Left = 413
        Top = 0
        Width = 139
        Height = 41
        Size.Values = (
          108.479166666666700000
          1092.729166666667000000
          0.000000000000000000
          367.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 552
        Top = 0
        Width = 145
        Height = 41
        Size.Values = (
          108.479166666666700000
          1460.500000000000000000
          0.000000000000000000
          383.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText2: TQRDBText
        Left = 193
        Top = 6
        Width = 25
        Height = 19
        Size.Values = (
          50.270833333333330000
          510.645833333333300000
          15.875000000000000000
          66.145833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = Form2.ZQuery1
        DataField = 'title'
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
        Left = 285
        Top = 6
        Width = 115
        Height = 19
        Size.Values = (
          50.270833333333330000
          754.062500000000000000
          15.875000000000000000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = Form2.ZQuery1
        DataField = 'publication_year'
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
      object QRDBText4: TQRDBText
        Left = 457
        Top = 6
        Width = 41
        Height = 19
        Size.Values = (
          50.270833333333330000
          1209.145833333333000000
          15.875000000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = Form2.ZQuery1
        DataField = 'genre'
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
      object QRDBText5: TQRDBText
        Left = 576
        Top = 6
        Width = 92
        Height = 19
        Size.Values = (
          50.270833333333330000
          1524.000000000000000000
          15.875000000000000000
          243.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = Form2.ZQuery1
        DataField = 'author_name'
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
    object QRShape2: TQRShape
      Left = 48
      Top = 214
      Width = 139
      Height = 35
      Size.Values = (
        92.604166666666670000
        127.000000000000000000
        566.208333333333300000
        367.770833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel2: TQRLabel
      Left = 108
      Top = 223
      Width = 18
      Height = 20
      Size.Values = (
        52.916666666666670000
        285.750000000000000000
        590.020833333333300000
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
    object QRShape4: TQRShape
      Left = 323
      Top = 214
      Width = 139
      Height = 35
      Size.Values = (
        92.604166666666670000
        854.604166666666700000
        566.208333333333300000
        367.770833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape3: TQRShape
      Left = 186
      Top = 214
      Width = 139
      Height = 35
      Size.Values = (
        92.604166666666670000
        492.125000000000000000
        566.208333333333300000
        367.770833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape7: TQRShape
      Left = 461
      Top = 214
      Width = 139
      Height = 35
      Size.Values = (
        92.604166666666670000
        1219.729166666667000000
        566.208333333333300000
        367.770833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape8: TQRShape
      Left = 600
      Top = 214
      Width = 145
      Height = 35
      Size.Values = (
        92.604166666666670000
        1587.500000000000000000
        566.208333333333300000
        383.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel3: TQRLabel
      Left = 233
      Top = 223
      Width = 40
      Height = 20
      Size.Values = (
        52.916666666666670000
        616.479166666666700000
        590.020833333333300000
        105.833333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Alignment = taCenter
      AlignToBand = False
      Caption = 'Judul'
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
      Left = 349
      Top = 223
      Width = 81
      Height = 20
      Size.Values = (
        52.916666666666670000
        923.395833333333300000
        590.020833333333300000
        214.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Alignment = taCenter
      AlignToBand = False
      Caption = 'Tahun Rilis'
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
    object QRLabel5: TQRLabel
      Left = 503
      Top = 223
      Width = 46
      Height = 20
      Size.Values = (
        52.916666666666670000
        1330.854166666667000000
        590.020833333333300000
        121.708333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Alignment = taCenter
      AlignToBand = False
      Caption = 'Genre'
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
    object QRLabel6: TQRLabel
      Left = 646
      Top = 222
      Width = 49
      Height = 20
      Size.Values = (
        52.916666666666670000
        1709.208333333333000000
        587.375000000000000000
        129.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Alignment = taCenter
      AlignToBand = False
      Caption = 'Author'
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
