unit clsRailfence;

interface

type
  TRailfence = class
  private
    Plaintext: string;
    Ciphertext: string;
    Key: integer;
  public
    function ConvertToCipher(Plaintext: string; Key: integer): string;
    function ConvertToPlain(Ciphertext: string; Key: integer): string;
  end;

implementation

{ TRailfence }

function TRailfence.ConvertToCipher(Plaintext: string; Key: integer): string;
var
  count1, count2: integer;
begin
  Ciphertext := '';
  for count1 := 1 to Key do
  begin
    count2 := count1;
    while count2 <= Length(Plaintext) do
    begin
      Ciphertext := Ciphertext + Plaintext[count2];
      count2 := count2 + Key;
    end;
  end;
  Result := Ciphertext;
end;

function TRailfence.ConvertToPlain(Ciphertext: string; Key: integer): string;
begin

end;

end.
