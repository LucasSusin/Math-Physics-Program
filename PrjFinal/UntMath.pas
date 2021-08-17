unit UntMath;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Math;

type
  TFrmMatematica = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  FrmMatematica: TFrmMatematica;
  x,y,z: real;
  aux,aux2,harambe,twelves: real;

implementation

uses UntPrincipal;

{$R *.dfm}



procedure TFrmMatematica.BitBtn1Click(Sender: TObject);
begin
  if (LabeledEdit1.Text = '') and (LabeledEdit2.Text <> '') and (LabeledEdit3.Text <> '') then
  begin
  y := StrToFloat(LabeledEdit2.Text);
  z := StrToFloat(LabeledEdit3.Text);
 x := Sqrt((y*y)+(z*z));
    LabeledEdit1.Text := FloatToStr(x);
  end
  else
  if (LabeledEdit1.Text <> '') and (LabeledEdit2.Text = '') and (LabeledEdit3.Text <> '') then
  begin
     x := StrToFloat(LabeledEdit1.Text);
   z := StrToFloat(LabeledEdit3.Text);
      y := Sqrt((x*x)-(z*z));
    LabeledEdit2.Text := FloatToStr(y);
  end
  else
  if (LabeledEdit1.Text <> '') and (LabeledEdit2.Text <> '') and (LabeledEdit3.Text = '') then
  begin
    x := StrToFloat(LabeledEdit1.Text);
     y := StrToFloat(LabeledEdit2.Text);
       z := Sqrt((x*x)-(y*y));
    LabeledEdit3.Text := FloatToStr(z);
  end;
end;

procedure TFrmMatematica.BitBtn2Click(Sender: TObject);
begin
if (Edit1.Text = '') and (Edit3.Text <> '') and (Edit2.Text <> '') and (Edit4.Text <> '') then
  begin
       harambe := StrToFloat(Edit3.Text);
    twelves := StrToFloat(Edit4.Text);
  aux2 := StrToFloat(Edit2.text);
       aux := (aux2*harambe)/twelves;
    Edit1.Text := FloatToStr(aux);
  end
  else
  if (Edit1.Text <> '') and (Edit3.Text = '') and (Edit2.Text <> '') and (Edit4.Text <> '') then
  begin
      aux2 := StrToFloat(Edit2.Text);
        twelves := StrToFloat(Edit4.Text);
  aux := StrToFloat(Edit1.text);
     harambe := (aux*twelves)/aux2;
    Edit3.Text := FloatToStr(harambe);
  end
  else
  if (Edit1.Text <> '') and (Edit3.Text <> '') and (Edit2.Text = '') and (Edit4.Text <> '') then
  begin
           harambe := StrToFloat(Edit3.Text);
twelves := StrToFloat(Edit4.Text);
             aux := StrToFloat(Edit1.text);
     aux2 := (aux*twelves)/harambe;
    Edit2.Text := FloatToStr(aux2);
  end
  else
  if (Edit1.Text <> '') and (Edit3.Text <> '') and (Edit2.Text <> '') and (Edit4.Text = '') then
  begin
   harambe := StrToFloat(Edit3.Text);
   aux2 := StrToFloat(Edit2.Text);
     aux := StrToFloat(Edit1.text);
        twelves := (harambe*aux2)/aux;
    Edit4.Text := FloatToStr(twelves);
  end;
end;

procedure TFrmMatematica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPrincipal.Show;
end;

end.
