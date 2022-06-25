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
var x,y,z,temp,debug:Integer;
begin
  x:= strtoint(aeq.Text);
  y:= strtoint(beq.Text);
  z:= strtoint(ceq.Text);
  {$asmmode intel}
  asm
  mov eax, y
  imul y
  mov temp, eax
  mov eax, 4
  imul x
  imul z
  mov ebx, temp
  sub ebx, eax
  mov temp, ebx
  mov debug, ebx
  finit
  fld temp
  fsqrt
  fstp temp

  end;
  raiz1eq.Text:= inttostr(temp);
  raiz2eq.Text:= inttostr(debug);
end;

procedure TForm1.AClick(Sender: TObject);
begin

end;

end.

