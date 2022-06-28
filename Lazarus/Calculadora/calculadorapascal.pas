unit CalculadoraPascal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TCalculator }

  TCalculator = class(TForm)
    ClearButton: TButton;
    EqualButton: TButton;
    BackspaceButton: TButton;
    EightButton: TButton;
    FiveButton: TButton;
    TwoButton: TButton;
    PointButton: TButton;
    SignalButton: TButton;
    SevenButton: TButton;
    FourButton: TButton;
    OneButton: TButton;
    DivisionButton: TButton;
    ZeroButton: TButton;
    ClearEntryButton: TButton;
    YsqrtxButton: TButton;
    TanButton: TButton;
    CosButton: TButton;
    SqrtxButton: TButton;
    X2Button: TButton;
    XyButton: TButton;
    ExButton: TButton;
    SinButton: TButton;
    MultiplicationButton: TButton;
    OneXButton: TButton;
    FactorialButton: TButton;
    LogButton: TButton;
    LnButton: TButton;
    MemoryRestoreButton: TButton;
    MemoryStoreButton: TButton;
    MemoryPlusButton: TButton;
    PiButton: TButton;
    MemoryClearButton: TButton;
    MinusButton: TButton;
    PlusButton: TButton;
    NineButton: TButton;
    SixButton: TButton;
    ThreeButton: TButton;
    InverseCheck: TCheckBox;
    DegreeRadio: TRadioButton;
    RadianRadio: TRadioButton;
    Visualization: TEdit;
    procedure BackspaceButtonClick(Sender: TObject);
    procedure ClearEntryButtonClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure MemoryClearButtonClick(Sender: TObject);
    procedure MemoryRestoreButtonClick(Sender: TObject);
    procedure MemoryStoreButtonClick(Sender: TObject);
    procedure OneButtonClick(Sender: TObject);
    procedure PiButtonClick(Sender: TObject);
    procedure PlusButtonClick(Sender: TObject);
    procedure ThreeButtonClick(Sender: TObject);
    procedure InverseCheckChange(Sender: TObject);
  private

  public
  var
    memory, memorystorevar: real;
  end;

var
  Calculator: TCalculator;

implementation

{$R *.lfm}

{ TCalculator }

procedure TCalculator.ClearEntryButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.BackspaceButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.ClearButtonClick(Sender: TObject);
begin
  Visualization.Text := FloatToStr(0);
  memory := 0;
end;

procedure TCalculator.MemoryClearButtonClick(Sender: TObject);
begin
  memorystorevar := 0;
end;

procedure TCalculator.MemoryRestoreButtonClick(Sender: TObject);
begin
  memory := memorystorevar;
  Visualization.Text := floattostr(memory);
end;

procedure TCalculator.MemoryStoreButtonClick(Sender: TObject);
begin
  memorystorevar := memory;

end;

procedure TCalculator.OneButtonClick(Sender: TObject);
begin
  Visualization.Text := Visualization.Text + '1';
  memory := strtofloat(Visualization.Text);
end;

procedure TCalculator.PiButtonClick(Sender: TObject);
var
  temp: real;
begin

  {$asmmode intel}
  asm
           FINIT
           FLDPI
           FSTP    temp
  end;
  Visualization.Text := FloatToStr(temp);
  memory := StrToFloat(Visualization.Text);

end;

procedure TCalculator.PlusButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.ThreeButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.InverseCheckChange(Sender: TObject);
begin

end;

end.
