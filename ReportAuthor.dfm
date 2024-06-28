object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Laporan Author'
  ClientHeight = 497
  ClientWidth = 847
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
    Top = 8
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = Form1.ZQuery1
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
        Left = 218
        Top = 40
        Width = 261
        Height = 33
        Size.Values = (
          87.312500000000000000
          576.791666666666700000
          105.833333333333300000
          690.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Caption = 'LAPORAN AUTHOR'
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
        Left = 93
        Top = 13
        Width = 66
        Height = 19
        Size.Values = (
          50.270833333333330000
          246.062500000000000000
          34.395833333333330000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = Form1.ZQuery1
        DataField = 'id_author'
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
        Left = 340
        Top = 13
        Width = 40
        Height = 19
        Size.Values = (
          50.270833333333330000
          899.583333333333300000
          34.395833333333330000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = Form1.ZQuery1
        DataField = 'name'
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
        Left = 577
        Top = 13
        Width = 39
        Height = 19
        Size.Values = (
          50.270833333333330000
          1526.645833333333000000
          34.395833333333330000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = Form1.ZQuery1
        DataField = 'email'
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
      Left = 388
      Top = 223
      Width = 49
      Height = 20
      Size.Values = (
        52.916666666666670000
        1026.583333333333000000
        590.020833333333300000
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
    object QRLabel4: TQRLabel
      Left = 625
      Top = 223
      Width = 41
      Height = 20
      Size.Values = (
        52.916666666666670000
        1653.645833333333000000
        590.020833333333300000
        108.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = True
      Alignment = taCenter
      AlignToBand = False
      Caption = 'Email'
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
