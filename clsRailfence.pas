unit clsRailfence;

interface

type
  TRailfence = Class
    private
      Plaintext: string;
      Ciphertext: string;
    public
      function ConvertToCipher(Plaintext: string): string;
      function ConvertToPlain(Ciphertext: string): string;
  End;

implementation

function ConvertToCipher(Plaintext: string): string;
begin
end;

function ConvertToPlain(Ciphertext: string): string;
begin
end;

end.
