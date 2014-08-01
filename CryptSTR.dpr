program CryptSTR;

uses
  Forms,
  MainScreen in 'MainScreen.pas' {frmMainScreen};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainScreen, frmMainScreen);
  Application.Run;
end.
