unit clsCaesar;

interface

type
  TCaesarCipher = class
  private
    Plaintext: string;
    Ciphertext: string;
  public
    function PlainToCipher;
    function CipherToPlain;
  end;

implementation

end.
