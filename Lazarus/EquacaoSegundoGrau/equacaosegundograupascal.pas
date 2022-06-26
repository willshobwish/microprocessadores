unit EquacaoSegundoGrauPascal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Calcular: TButton;
    aeq: TEdit;
    beq: TEdit;
    ceq: TEdit;
    raiz1eq: TEdit;
    raiz2eq: TEdit;
    A: TLabel;
    B: TLabel;
    C: TLabel;
    Raiz_1: TLabel;
    Raiz_2: TLabel;
    procedure CalcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.CalcularClick(Sender: TObject);
var w,x,y,z,temp,debug:Real;
begin
  w:= 4;
  x:= strtofloat(aeq.Text);
  y:= strtofloat(beq.Text);
  z:= strtofloat(ceq.Text);

  {$asmmode intel}
  asm
    finit
    fld x
    fld z
    fld w
    fmul
    fmul
    fld y
    fld y
    fmul
    fxch
    fsub
    fstp temp
  end;

  raiz1eq.Text:= floattostr(temp);
  raiz2eq.Text:= floattostr(debug);
end;

procedure TForm1.AClick(Sender: TObject);
begin

end;

end.

