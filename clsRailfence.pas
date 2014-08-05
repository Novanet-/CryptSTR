unit clsRailfence;

interface

uses
  MainScreen;

type
  TRailfence = Class
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


{ TRailfence }

function TRailfence.ConvertToCipher(Plaintext: string): string;
begin

end;

function TRailfence.ConvertToPlain(Ciphertext: string): string;
begin

end;

procedure TRailfence.GetCiphertext(Ciphertext: string);
begin

end;

procedure TRailfence.GetPlaintext(Plaintext: string);
begin

end;

end.
