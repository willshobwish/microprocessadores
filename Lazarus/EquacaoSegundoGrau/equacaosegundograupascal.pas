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
var v,w,x,y,z,temp,resultado1,resultado2:Real;
begin
  v:=2;
  w:= 4;
  x:= strtofloat(aeq.Text);
  y:= strtofloat(beq.Text);
  z:= strtofloat(ceq.Text);

  {$ASMMODE intel}
  asm
    finit
    fld x
    fld z
    fld w
    fmul st,st(1)
    fmul st,st(2)
    fld y
    fld y
    fmul st,st(1)
    fsub st,st(2)
    fsqrt
    fstp temp
    fld v
    fld x
    fmul
    fld temp
    fld y
    fldz
    fsubr
    fadd
    fdiv
    fstp resultado1
  end;
  asm
    finit
    fld x
    fld z
    fld w
    fmul st,st(1)
    fmul st,st(2)
    fld y
    fld y
    fmul st,st(1)
    fsub st,st(2)
    fsqrt
    fstp temp
    fld v
    fld x
    fmul
    fld temp
    fld y
    fldz
    fsubr
    fsubr
    fdivr
    fstp resultado2
  end;
    raiz1eq.Text:= floattostr(resultado1);
    raiz2eq.Text:= floattostr(resultado2);
end;

procedure TForm1.AClick(Sender: TObject);
begin

end;

end.

