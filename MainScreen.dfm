object frmMainScreen: TfrmMainScreen
  Left = 0
  Top = 0
  Caption = 'frmMainScreen'
  ClientHeight = 514
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 154
    Color = clInactiveBorder
    ParentBackground = False
    TabOrder = 0
    object lblTitle: TLabel
      Left = -8
      Top = 40
      Width = 857
      Height = 80
      Alignment = taCenter
      Caption = 'CryptSTR'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -53
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object pnlBody: TPanel
    Left = 0
    Top = 143
    Width = 849
    Height = 377
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 1
    object lblPlainText: TLabel
      Left = 80
      Top = 33
      Width = 193
      Height = 30
      Alignment = taCenter
      Caption = 'Plain Text'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblCipherText: TLabel
      Left = 557
      Top = 28
      Width = 193
      Height = 30
      Alignment = taCenter
      Caption = 'Cipher Text'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnCipherToPlain: TBitBtn
      Left = 368
      Top = 216
      Width = 105
      Height = 73
      Caption = 'btnCipherToPlain'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object btnPlainToCipher: TBitBtn
      Left = 368
      Top = 64
      Width = 105
      Height = 73
      Caption = 'btnPlainToCipher'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object edtCipherText: TRichEdit
      Left = 557
      Top = 64
      Width = 193
      Height = 225
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'edtCipherText')
      ParentFont = False
      TabOrder = 2
    end
    object edtPlainText: TRichEdit
      Left = 80
      Top = 64
      Width = 193
      Height = 225
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'edtPlainText')
      ParentFont = False
      TabOrder = 3
    end
  end
end
