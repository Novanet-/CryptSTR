unit clsCaesar;

interface

uses
  clsStringManipulation;

type
  TCaesarCipher = class
  private
    Plaintext: string;
    Ciphertext: string;
  public
    function ConvertToCipher(Plaintext: string; Key: integer): string;
    function ConvertToPlain(Ciphertext: string; Key: integer): string;
  end;

implementation

{ TCaesarCipher }

function TCaesarCipher.ConvertToCipher(Plaintext: string; Key: integer): string;
var
  StringManipulation: TStringManipulation;
  count, ASCIICode: integer;
begin
  Ciphertext := '';
  StringManipulation := TStringManipulation.Create;
  for count := 1 to Length(Plaintext) do
  begin
    ASCIICode := Ord(Plaintext[count]);
    ASCIICode := StringManipulation.ApplyShiftToASCIICodeForCharacter(ASCIICode, Key);
    Ciphertext := Ciphertext + Chr(ASCIICode);
  end;
  StringManipulation.Free;
  Result := Ciphertext;
end;

function TCaesarCipher.ConvertToPlain(Ciphertext: string; Key: integer): string;
var
  StringManipulation: TStringManipulation;
  count, ASCIICode: integer;
begin
  Plaintext := '';
  Key:= -Key;
  StringManipulation := TStringManipulation.Create;
  for count := 1 to Length(Ciphertext) do
  begin
    ASCIICode := Ord(Ciphertext[count]);
    ASCIICode := StringManipulation.ApplyShiftToASCIICodeForCharacter(ASCIICode, Key);
    Plaintext := Plaintext + Chr(ASCIICode);
  end;
  StringManipulation.Free;
  Result := Plaintext;
end;

end.
