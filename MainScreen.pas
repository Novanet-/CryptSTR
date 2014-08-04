unit MainScreen;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Edit, FMX.Layouts, FMX.Memo;

type
  TfrmMainScreen = class(TForm)
    rctHeader: TRectangle;
    rctBody: TRectangle;
    lblTitle: TLabel;
    btnPlainToCipher: TButton;
    btnCipherToPlain: TButton;
    memPlaintext: TMemo;
    memCiphertext: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainScreen: TfrmMainScreen;

implementation

{$R *.fmx}

begin
end.
