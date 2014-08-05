unit clsCaesar;

interface

type
  TCaesarCipher = Class
  private
    Plaintext: string;
    Ciphertext: string;
    Key: integer;
  public
    procedure GetKey(paraKey:integer);
    procedure GetPlaintext(paraPlaintext: string);
    procedure GetCiphertext(paraCiphertext: string);
    function ConvertToCipher(Plaintext: string; Key: integer): string;
    function ConvertToPlain(Ciphertext: string; Key: integer): string;
  End;

implementation

{ TCaesarCipher }


function TCaesarCipher.ConvertToCipher(Plaintext: string; Key: integer): string;
var
  ChangedText: string;
  count, ASCIICode: integer;
begin
  GetPlaintext(Plaintext);
  GetKey(Key);
  ChangedText := '';
  For Count := 1 To Length(Plaintext) Do
  Begin
    ASCIICode := Ord(Plaintext[Count]);
    //ASCIICode := ApplyShiftToASCIICodeForCharacter(ASCIICode, Key);
    ChangedText := ChangedText + Chr(ASCIICode);
  End;
  Ciphertext:= ChangedText;
end;

function TCaesarCipher.ConvertToPlain(Ciphertext: string; Key: integer): string;
begin

end;

procedure TCaesarCipher.GetCiphertext(paraCiphertext: string);
begin
  Ciphertext := paraCiphertext;
end;

procedure TCaesarCipher.GetKey(paraKey: integer);
begin
  Key:= paraKey;
end;

procedure TCaesarCipher.GetPlaintext(paraPlaintext: string);
begin
  Plaintext := paraPlaintext;
end;

end.
