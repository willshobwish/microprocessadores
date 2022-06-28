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
    procedure CosButtonClick(Sender: TObject);
    procedure DegreeRadioChange(Sender: TObject);
    procedure DivisionButtonClick(Sender: TObject);
    procedure EightButtonClick(Sender: TObject);
    procedure EqualButtonClick(Sender: TObject);
    procedure ExButtonClick(Sender: TObject);
    procedure FactorialButtonClick(Sender: TObject);
    procedure FiveButtonClick(Sender: TObject);
    procedure FourButtonClick(Sender: TObject);
    procedure LnButtonClick(Sender: TObject);
    procedure LogButtonClick(Sender: TObject);
    procedure MemoryClearButtonClick(Sender: TObject);
    procedure MemoryPlusButtonClick(Sender: TObject);
    procedure MemoryRestoreButtonClick(Sender: TObject);
    procedure MemoryStoreButtonClick(Sender: TObject);
    procedure MinusButtonClick(Sender: TObject);
    procedure MultiplicationButtonClick(Sender: TObject);
    procedure NineButtonClick(Sender: TObject);
    procedure OneButtonClick(Sender: TObject);
    procedure OneXButtonClick(Sender: TObject);
    procedure PiButtonClick(Sender: TObject);
    procedure PlusButtonClick(Sender: TObject);
    procedure PointButtonClick(Sender: TObject);
    procedure RadianRadioChange(Sender: TObject);
    procedure SevenButtonClick(Sender: TObject);
    procedure SignalButtonClick(Sender: TObject);
    procedure SinButtonClick(Sender: TObject);
    procedure SixButtonClick(Sender: TObject);
    procedure SqrtxButtonClick(Sender: TObject);
    procedure TanButtonClick(Sender: TObject);
    procedure ThreeButtonClick(Sender: TObject);
    procedure InverseCheckChange(Sender: TObject);
    procedure TwoButtonClick(Sender: TObject);
    procedure X2ButtonClick(Sender: TObject);
    procedure XyButtonClick(Sender: TObject);
    procedure YsqrtxButtonClick(Sender: TObject);
    procedure ZeroButtonClick(Sender: TObject);
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

procedure TCalculator.CosButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.DegreeRadioChange(Sender: TObject);
begin

end;

procedure TCalculator.DivisionButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.EightButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.EqualButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.ExButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.FactorialButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.FiveButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.FourButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.LnButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.LogButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.MemoryClearButtonClick(Sender: TObject);
begin
  memorystorevar := 0;
end;

procedure TCalculator.MemoryPlusButtonClick(Sender: TObject);
begin

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

procedure TCalculator.MinusButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.MultiplicationButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.NineButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.OneButtonClick(Sender: TObject);
begin
  if Visualization.Text = '0' then
  begin
    Visualization.Text := '';
  end;
  Visualization.Text := Visualization.Text + '1';
  memory := strtofloat(Visualization.Text);
end;

procedure TCalculator.OneXButtonClick(Sender: TObject);
begin

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

procedure TCalculator.PointButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.RadianRadioChange(Sender: TObject);
begin

end;

procedure TCalculator.SevenButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.SignalButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.SinButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.SixButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.SqrtxButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.TanButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.ThreeButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.InverseCheckChange(Sender: TObject);
begin

end;

procedure TCalculator.TwoButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.X2ButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.XyButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.YsqrtxButtonClick(Sender: TObject);
begin

end;

procedure TCalculator.ZeroButtonClick(Sender: TObject);
begin

end;

end.
