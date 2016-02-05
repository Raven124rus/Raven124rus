program ok;

uses
  Forms,
  Main in 'Main.pas' {fName},
  DM in 'DM.pas' {fDM: TDataModule},
  Editor in 'Editor.pas' {fEditor},
  UnitGlavn in 'UnitGlavn.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfName, fName);
  Application.CreateForm(TfDM, fDM);
  Application.CreateForm(TfEditor, fEditor);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
