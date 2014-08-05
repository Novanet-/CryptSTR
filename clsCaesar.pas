unit clsCaesar;

interface

type
  CaesarCipher = Class
    private
      Plaintext: string;
      Ciphertext: string;
    public
      function ConvertToCipher(Plaintext: string): string;
      function ConvertToPlain(Ciphertext: string): string;
  End;

implementation

end.
