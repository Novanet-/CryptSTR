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
    btnCipherToPlain: TButton;
    btnPlainToCipher: TButton;
    memPlaintext: TMemo;
    memCiphertext: TMemo;
    lblPlaintext: TLabel;
    lblCiphertext: TLabel;
    btnCaesar: TButton;
    btnRailfence: TButton;
    edtKey: TEdit;
    lblKey: TLabel;
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
