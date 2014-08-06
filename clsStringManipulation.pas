unit clsStringManipulation;

interface

type
  TStringManipulation = class
  private
  public
    function GetTypeOfCharacter(ASCIICode: integer): string;
    function ApplyShiftToASCIICodeForCharacter(ASCIICode: integer; Key: integer): integer;
  end;

implementation

{ TStringManipulation }

function TStringManipulation.GetTypeOfCharacter(ASCIICode: integer): string;
var
  TypeOfCharacter: string;
begin
  if (ASCIICode >= Ord('A')) and (ASCIICode <= Ord('Z')) then
    TypeOfCharacter := 'Upper'
  else if (ASCIICode >= Ord('a')) and (ASCIICode <= Ord('z')) then
    TypeOfCharacter := 'Lower'
  else
    TypeOfCharacter := 'Other';
  Result := TypeOfCharacter;
end;

function TStringManipulation.ApplyShiftToASCIICodeForCharacter(ASCIICode: integer; Key: integer): integer;
var
  StringManipulation: TStringManipulation;
  NewASCIICode: integer;
  TypeOfCharacter: string;
begin
  StringManipulation:= TStringManipulation.Create;
  TypeOfCharacter := StringManipulation.GetTypeOfCharacter(ASCIICode);
  if TypeOfCharacter <> 'Other' then
    if TypeOfCharacter = 'Upper' then
      NewASCIICode := ((26 + ASCIICode - Ord('A') + Key) mod 26) + Ord('A')
    else
      NewASCIICode := ((26 + ASCIICode - Ord('a') + Key) mod 26) + Ord('a')
  else
    NewASCIICode := ASCIICode;
  Result := NewASCIICode;
end;

end.
