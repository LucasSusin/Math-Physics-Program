unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, MMSystem;

type
  TFrmPrincipal = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image4: TImage;
    Label4: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;


implementation

{$R *.dfm}

uses UntMath, UntPhysics;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  // Easter Egg :OOOOOOOOO
  // SndPlaySound('C:\Users\lpschleder\Documents\PrjFinal\Fireflies.wav', SND_ASYNC);
end;

procedure TFrmPrincipal.Image1Click(Sender: TObject);
begin

  FrmPrincipal.hide;
  FrmMatematica.show;

end;

procedure TFrmPrincipal.Image2Click(Sender: TObject);
begin

  FrmPrincipal.hide;
  FrmFisica.show;

end;

procedure TFrmPrincipal.Image3Click(Sender: TObject);
begin
  FrmPrincipal.close;
end;

procedure TFrmPrincipal.Image4Click(Sender: TObject);
begin
  ShowMessage ('Programa capaz de realizar tarefas de matemática e física do segundo ano do ensino médio')
end;

end.
