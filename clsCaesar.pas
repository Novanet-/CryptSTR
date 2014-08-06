unit clsCaesar;

interface

uses
  clsStringManipulation;

type
  TCaesarCipher = class
  private
    Plaintext: string;
    Ciphertext: string;
    Key: integer;
  public
    procedure GetKey(paraKey: integer);
    procedure GetPlaintext(paraPlaintext: string);
    procedure GetCiphertext(paraCiphertext: string);
    function ConvertToCipher(Plaintext: string; Key: integer): string;
    function ConvertToPlain(Ciphertext: string; Key: integer): string;
  end;

implementation

{ TCaesarCipher }

function TCaesarCipher.ConvertToCipher(Plaintext: string; Key: integer): string;
var
  StringManipulation: TStringManipulation;
  ChangedText: string;
  count, ASCIICode: integer;
begin
  GetPlaintext(Plaintext);
  GetKey(Key);
  ChangedText := '';
  StringManipulation := TStringManipulation.Create;
  for count := 1 to Length(Plaintext) do
  begin
    ASCIICode := Ord(Plaintext[count]);
    ASCIICode := StringManipulation.ApplyShiftToASCIICodeForCharacter(ASCIICode, Key);
    ChangedText := ChangedText + Chr(ASCIICode);
  end;
  Result := ChangedText;
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
  Key := paraKey;
end;

procedure TCaesarCipher.GetPlaintext(paraPlaintext: string);
begin
  Plaintext := paraPlaintext;
end;

end.
