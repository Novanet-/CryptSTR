unit MainScreen;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
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
    procedure btnCipherToPlainClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainScreen: TfrmMainScreen;

implementation

{$R *.fmx}

function CheckCipherType(): Char;
begin
  if frmMainScreen.lblKey.Text = 'Caesar Cipher Key' then
    Result := 'c'
  else
    Result := 'r';
end;

procedure TfrmMainScreen.btnCaesarClick(Sender: TObject);
// Switches to caesar  mode
begin
  lblKey.Text := 'Caesar Cipher Key';
end;

procedure TfrmMainScreen.btnRailfenceClick(Sender: TObject);
// Switches to railfence mode
begin
  lblKey.Text := 'Railfence Size';
end;

procedure TfrmMainScreen.btnPlainToCipherClick(Sender: TObject);
// Method to convert plaintext to ciphertext
var
  CaesarCipher: TCaesarCipher;
  Railfence: TRailfence;
  Plaintext, Ciphertext: string;
  Key: integer;
  CipherType: Char;
begin
  Plaintext := memPlaintext.Text;
  Key := StrtoInt(edtKey.Text);
  CipherType := CheckCipherType;
  case CipherType of
    'c':
      begin
        CaesarCipher := TCaesarCipher.Create;
        Ciphertext := CaesarCipher.ConvertToCipher(Plaintext, Key);
        memCiphertext.Text := Ciphertext;
        CaesarCipher.Free;
      end;

    'r':
      begin
        Railfence := TRailfence.Create;
        Ciphertext := Railfence.ConvertToCipher(Plaintext, Key);
        memCiphertext.Text := Ciphertext;
        Railfence.Free;
      end;
  end;
end;

procedure TfrmMainScreen.btnCipherToPlainClick(Sender: TObject);
var
  CaesarCipher: TCaesarCipher;
  Railfence: TRailfence;
  Plaintext, Ciphertext: string;
  Key: integer;
  CipherType: Char;
begin
  Ciphertext := memCiphertext.Text;
  Key := StrtoInt(edtKey.Text);
  CipherType := CheckCipherType;
  case CipherType of
    'c':
      begin
        CaesarCipher := TCaesarCipher.Create;
        Plaintext := CaesarCipher.ConvertToPlain(Ciphertext, Key);
        memPlaintext.Text := Plaintext;
        CaesarCipher.Free;
      end;

    'r':
      begin
        Railfence := TRailfence.Create;
        Plaintext := Railfence.ConvertToPlain(Ciphertext, Key);
        memPlaintext.Text := Plaintext;
        Railfence.Free;
      end;
  end;
end;

begin

end.
