unit CalculadoraPascal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TCalculator }

  TCalculator = class(TForm)
    C: TButton;
    equal: TButton;
    Button11: TButton;
    eight: TButton;
    five: TButton;
    two: TButton;
    point: TButton;
    plusminus: TButton;
    seven: TButton;
    four: TButton;
    one: TButton;
    division: TButton;
    zero: TButton;
    Button21: TButton;
    ysqrtx: TButton;
    tan: TButton;
    cos: TButton;
    sqrtx: TButton;
    x2: TButton;
    xy: TButton;
    ex: TButton;
    sin: TButton;
    multiplication: TButton;
    onex: TButton;
    factorial: TButton;
    Button32: TButton;
    Button33: TButton;
    memoryrestore: TButton;
    memorystore: TButton;
    memoryplus: TButton;
    pi: TButton;
    memoryclear: TButton;
    minus: TButton;
    plus: TButton;
    nine: TButton;
    six: TButton;
    three: TButton;
    inv: TCheckBox;
    degree: TRadioButton;
    radian: TRadioButton;
    visor: TEdit;
    procedure Button21Click(Sender: TObject);
    procedure CClick(Sender: TObject);
    procedure piClick(Sender: TObject);
    procedure plusClick(Sender: TObject);
    procedure threeClick(Sender: TObject);
    procedure invChange(Sender: TObject);
  private

  public
var memory:Real;
  end;

var
  Calculator: TCalculator;

implementation

{$R *.lfm}

{ TCalculator }

procedure TCalculator.Button21Click(Sender: TObject);
begin

end;

procedure TCalculator.CClick(Sender: TObject);
begin
  visor.Text:= FloatToStr(0);
end;

procedure TCalculator.piClick(Sender: TObject);
var temp:Real;
begin

  {$asmmode intel}
  asm
  finit
  fldpi
  fstp temp
  end;
  visor.Text:= FloatToStr(temp);
  memory:=StrToFloat(visor.Text);

end;

procedure TCalculator.plusClick(Sender: TObject);
begin

end;

procedure TCalculator.threeClick(Sender: TObject);
begin

end;

procedure TCalculator.invChange(Sender: TObject);
begin

end;

end.

