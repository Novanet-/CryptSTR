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
var
  Plaintext: string;
  NoOfColumns: integer;
  NoOfRows: integer;
  NoOfCiphertextCharacters: integer;
  NoOfCiphertextCharactersProcessed: integer;
  i: integer;
  j: integer;
  PositionOfNextCharacter: integer;
  LastFullRowNo: integer;
  AmountToReduceNoOfColumnsTimesjBy: integer;
  BeginningOfNextRowIndex: integer;
begin
  Plaintext := '';
  NoOfCiphertextCharacters := Length(Ciphertext);
  { The ciphertext was created from a visualisation of the plaintext as
    a two-dimensional grid of characters with no of rows = size of rail fence }
  NoOfRows := Key;
  NoOfColumns := NoOfCiphertextCharacters div Key;
  { If NoOfCiphertextCharacters divides exactly all rows will be full
    otherwise the last column will be incomplete and NoOfColumns will not include last column }
  if (NoOfCiphertextCharacters mod Key) <> 0 then
    NoOfColumns := NoOfColumns + 1;
  { Calculate row no of last full row, 0 means every row full }
  LastFullRowNo := NoOfCiphertextCharacters mod Key;
  NoOfCiphertextCharactersProcessed := 0;
  for i := 1 to NoOfColumns { Work along the columns building the plaintext a column at a time }
      do
  begin
    AmountToReduceNoOfColumnsTimesjBy := 0;
    for j := 0 to NoOfRows - 1 { Work down the rows building the plaintext }
        do
    begin
      if LastFullRowNo <> 0 { Last column doesn't have a character in every row }
      then
        if j > LastFullRowNo { There are shorter rows to skip }
        then
          AmountToReduceNoOfColumnsTimesjBy := AmountToReduceNoOfColumnsTimesjBy + 1;
      { NoOfColumns * j locates in ciphertext beginning of each row }
      BeginningOfNextRowIndex := NoOfColumns * j - AmountToReduceNoOfColumnsTimesjBy;
      PositionOfNextCharacter := BeginningOfNextRowIndex + i;
      NoOfCiphertextCharactersProcessed := NoOfCiphertextCharactersProcessed + 1;
      if NoOfCiphertextCharactersProcessed <= NoOfCiphertextCharacters then
        Plaintext := Plaintext + Ciphertext[PositionOfNextCharacter];
    end;
  end;
  Result := Plaintext;
end;

end.
