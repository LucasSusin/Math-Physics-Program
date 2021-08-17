unit UntPhysics;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TFrmFisica = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Btn1: TButton;
    Btn2: TButton;
    Btn3: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox4: TComboBox;
    ComboBox3: TComboBox;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn1Click(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  FrmFisica: TFrmFisica;
  a,b,c,d:real;
  e,f:real;
  luiggi,lucas: real;
 mario,corno: string;
  peach: integer;


implementation

uses UntPrincipal;

{$R *.dfm}



procedure TFrmFisica.BitBtn1Click(Sender: TObject);
begin
  memo1.Clear;
end;

procedure TFrmFisica.BitBtn2Click(Sender: TObject);
begin
  if (combobox3.ItemIndex = 0) and (combobox4.ItemIndex = 1) then
    begin
      peach := strtoint (edit3.Text) * 1000;
      edit4.Text := inttostr(peach);
    end;
  if (combobox3.ItemIndex = 0) and (combobox4.ItemIndex = 2) then
    begin
      peach := strtoint (edit3.Text) * 100000;
      edit4.Text := inttostr(peach);
    end;
  if (combobox3.ItemIndex = 1) and (combobox4.ItemIndex = 0) then
    begin
      luiggi := StrToFloat (edit3.Text) / 1000;
      edit4.Text := floattostr(luiggi);
    end;
  if (combobox3.ItemIndex = 1) and (combobox4.ItemIndex = 2) then
    begin
      peach := strtoint (edit3.Text) * 100;
      edit4.Text := inttostr(peach);
    end;
  if (combobox3.ItemIndex = 2) and (combobox4.ItemIndex = 0) then
    begin
      luiggi := StrToFloat (edit3.Text) / 100000;
      edit4.Text := floattostr(luiggi);
    end;
  if (combobox3.ItemIndex = 2) and (combobox4.ItemIndex = 1) then
    begin
      luiggi := StrToFloat (edit3.Text) / 100;
      edit4.Text := floattostr(luiggi);
    end;
end;

procedure TFrmFisica.Btn1Click(Sender: TObject);
begin
  a:= StrToFloat(labelededit2.text)* 1.8 + 32 ;
   b:= 1.8*(strtofloat(labelededit2.text)-273) + 32;
  if (labelededit1.text = 'F') or (labelededit1.Text='f') then
  begin
  memo1.Lines.Add(labelededit2.Text);
  end ;
  if (labelededit1.Text='C') or (labelededit1.Text='c') then
  begin
    memo1.Lines.Add(FloatToStr(a));
  end;
  if (labelededit1.Text='K') or (labelededit1.Text='k') then
  memo1.Lines.Add(floattostr(b));
end;



procedure TFrmFisica.Btn2Click(Sender: TObject);
begin
  c:= (strtofloat(labelededit2.Text)-32)/1.8;
  e:= (strtofloat(labelededit2.text)- 273);
  if (labelededit1.Text='c') or (labelededit1.Text='C') then
   begin
    memo1.Lines.Add(labelededit2.Text);
   end;
   if (labelededit1.Text='F') or (labelededit1.Text='f') then
   begin
    memo1.Lines.Add(FloatToStr(c));
   end;
   if (labelededit1.Text='k') or (labelededit1.Text='K') then
    begin
      memo1.Lines.Add(FloatToStr(e));
    end;
end;

procedure TFrmFisica.Btn3Click(Sender: TObject);
begin
  f:= strtofloat(labelededit2.Text) + 273;
d:= (strtofloat(labelededit2.Text) + 459.67) * 5/9;
  if (labelededit1.Text='K') or (labelededit1.Text='K') then
  begin
    memo1.Lines.Add(labelededit2.Text);
  end;
  if (labelededit1.Text='C') or (labelededit1.Text='c') then
  begin
     memo1.Lines.Add(FloatToStr(f));
  end;
  if (labelededit1.Text='f') or (labelededit1.Text='F') then
  begin
    memo1.Lines.Add(FloatToStr(d));
  end;
end;

procedure TFrmFisica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPrincipal.Show;
end;

end.
