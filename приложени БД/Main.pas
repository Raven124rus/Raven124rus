unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls,Shellapi, ExtCtrls, DBCtrls, jpeg;

type
  TfName = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    Image1: TImage;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fName: TfName;

implementation

uses DM, Editor, UnitGlavn;

{$R *.dfm}

procedure TfName.Button3Click(Sender: TObject);
begin
  fDM.TLichData.Append;
  fDM.TDoljnost.Append;
  fDM.TAdres.Append;
  fDM.TTelephones.Append;
  fEditor.ShowModal;

end;

procedure TfName.Button2Click(Sender: TObject);
begin
feditor.showmodal;
end;

procedure TfName.DBGrid1DblClick(Sender: TObject);
begin
feditor.showmodal;
end;

procedure TfName.RadioButton1Click(Sender: TObject);
begin
if RadioButton1.Checked then
DBGrid2.DataSource := fDM.DSAdres;

end;

procedure TfName.RadioButton2Click(Sender: TObject);
begin
  if RadioButton2.Checked then
    DBGrid2.DataSource := fDM.DSTelephones;

end;

procedure TfName.RadioButton3Click(Sender: TObject);
begin
if RadioButton3.Checked then
    DBGrid2.DataSource := fDM.DSDoljnost;

end;

procedure TfName.Edit1Change(Sender: TObject);
begin
if Edit1.Text <> '' then begin
fDM.TLichData.Filtered:= False;
fDM.ed:=Edit1.Text;
fDM.TLichData.Filtered:=True;
end
else fDM.TLichData.Filtered:= False;
end;

procedure TfName.Image1Click(Sender: TObject);
begin
Form1.show;
fName.Hide;
end;

procedure TfName.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Halt;
end;

end.
