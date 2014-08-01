unit clsRailfence;

interface

type
  TRailfenceCipher = class
  private
    Plaintext: string;
    Ciphertext: string;
  public
    function PlainToCipher;
    function CipherToPlain;
  end;

implementation

end.
