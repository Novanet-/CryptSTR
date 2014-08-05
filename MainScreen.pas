unit MainScreen;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Edit, FMX.Layouts, FMX.Memo, clsCaesar, clsRailfence;

type
  TfrmMainScreen = class(TForm)
    rctHeader: TRectangle;
    rctBody: TRectangle;
    lblTitle: TLabel;
    btnCipherToPlain: TButton;
    btnPlainToCipher: TButton;
    memPlaintext: TMemo;
    memCiphertext: TMemo;
    lblPlaintext: TLabel;
    lblCiphertext: TLabel;
    btnCaesar: TButton;
    btnRailfence: TButton;
    edtKey: TEdit;
    lblKey: TLabel;
    procedure btnCaesarClick(Sender: TObject);
    procedure btnRailfenceClick(Sender: TObject);
    procedure btnPlainToCipherClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainScreen: TfrmMainScreen;

implementation

{$R *.fmx}

procedure TfrmMainScreen.btnCaesarClick(Sender: TObject);
begin
  lblKey.Text:= 'Caesar Cipher Key';
end;

procedure TfrmMainScreen.btnRailfenceClick(Sender: TObject);
begin
  lblKey.Text:= 'Railfence Size';
end;

procedure TfrmMainScreen.btnPlainToCipherClick(Sender: TObject);
var
  CaesarCipher: TCaesarCipher;
  Plaintext, Ciphertext: string;
begin
  CaesarCipher:= TCaesarCipher.Create;
  CaesarCipher.GetPlaintext(memPlaintext.Text);
  Ciphertext:= CaesarCipher.ConvertToCipher;
end;

begin
end.
