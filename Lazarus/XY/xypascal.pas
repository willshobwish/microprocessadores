unit XYPascal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Calcular: TButton;
    x: TEdit;
    y: TEdit;
    xy: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure CalcularClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CalcularClick(Sender: TObject);
var
  a, b, resultado: real;
begin
  a := strtofloat(x.Text);
  b := strtofloat(y.Text);
  {$asmmode intel}
  asm
           FINIT
           FLD     b
           FLD     a
           FYL2X
           FLD     ST
           FRNDINT
           FSUB    ST(1),ST
           FXCH
           F2XM1
           FLD1
           FADD
           FSCALE
           FSTP    resultado
  end;
  xy.Text := floattostr(resultado);
end;

end.
