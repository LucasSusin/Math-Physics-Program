program PrjFinal;

uses
  Vcl.Forms,
  UntPrincipal in 'UntPrincipal.pas' {FrmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  UntPhysics in 'UntPhysics.pas' {FrmFisica},
  UntMath in 'UntMath.pas' {FrmMatematica};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmFisica, FrmFisica);
  Application.CreateForm(TFrmMatematica, FrmMatematica);
  Application.Run;
end.
