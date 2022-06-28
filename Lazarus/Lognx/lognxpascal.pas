unit LognxPascal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Calcular: TButton;
    NVisor: TEdit;
    XVisor: TEdit;
    ResultadoVisor: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure CalcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label3Click(Sender: TObject);
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
var
  x, y, resultado: real;
begin
  y := strtofloat(NVisor.Text);
  x := strtofloat(XVisor.Text);
    {$AsmMode intel}
  asm
           FINIT
           FLD1
           FLD     y
           FYL2X
           FLD1
           FDIV    ST,ST(1)
           FLD     x
           FYL2X
           FSTP    resultado
  end;
  ResultadoVisor.text := floattostr(resultado);
end;

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

end.
