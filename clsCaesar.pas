unit clsCaesar;

interface

uses
  MainScreen;

type
  TCaesarCipher = Class
  private
    Plaintext: string;
    Ciphertext: string;
  public
    procedure GetPlaintext(Plaintext: string);
    procedure GetCiphertext(Ciphertext: string);
    function ConvertToCipher(Plaintext: string): string;
    function ConvertToPlain(Ciphertext: string): string;
  End;

implementation

{ TCaesarCipher }

function TCaesarCipher.ConvertToCipher(Plaintext: string): string;
begin

end;

function TCaesarCipher.ConvertToPlain(Ciphertext: string): string;
begin

end;

procedure TCaesarCipher.GetCiphertext(Ciphertext: string);
begin
  TCaesarCipher.Ciphertext := Ciphertext;
end;

procedure TCaesarCipher.GetPlaintext(Plaintext: string);
begin
  TCaesarCipher.Plaintext := Plaintext;
end;

end.
