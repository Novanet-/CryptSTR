unit MainScreen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls;

type
  TfrmMainScreen = class(TForm)
    edtPlainText: TRichEdit;
    edtCipherText: TRichEdit;
    btnPlainToCipher: TBitBtn;
    btnCipherToPlain: TBitBtn;
    pnlHeader: TPanel;
    pnlBody: TPanel;
    lblTitle: TLabel;
    lblPlainText: TLabel;
    lblCipherText: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainScreen: TfrmMainScreen;

implementation

{$R *.dfm}

begin

end.
