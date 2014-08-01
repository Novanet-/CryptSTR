program CryptSTR;

uses
  Forms,
  MainScreen in 'MainScreen.pas' {frmMainScreen},
  clsCaesar in 'clsCaesar.pas',
  clsRailfence in 'clsRailfence.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainScreen, frmMainScreen);
  Application.Run;
end.
