program CryptSTR;

uses
  FMX.Forms,
  MainScreen in 'MainScreen.pas' {frmMainScreen};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMainScreen, frmMainScreen);
  Application.Run;
end.
