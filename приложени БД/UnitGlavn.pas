unit UnitGlavn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Main, Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
fName.Show;
Form1.Hide;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
close
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'C:\Sotrudnik\Spravka.chm',nil, nil, 1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Halt;
end;

end.
