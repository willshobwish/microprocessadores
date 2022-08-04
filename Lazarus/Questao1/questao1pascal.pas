unit Questao1Pascal;

{$mode objfpc}{$H+}

interface

uses
  Classes, Controls, Dialogs, Forms, Graphics, StdCtrls, SysUtils;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  va, vb, vc: real;
begin
  va := 3.0;
  vb := 5.0;
  vc := 9.0;
    {$asmmode intel}
  asm
           FINIT
           FLD1
           FLDZ
           FLDPI
           FLD     va
           FMUL
           FLD     vb
           FSUB    ST,ST(3)
           FSINCOS
           FST     vc
           FCHS
           FADD    ST(2),ST
           FDIV
           FSTP    vb
           FST     va
           FSTP    vc
  end;
  edit1.Text := floattostr(va);
  edit2.Text := floattostr(vb);
  edit3.Text := floattostr(vc);

end;

end.
