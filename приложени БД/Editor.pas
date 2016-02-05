unit Editor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Shellapi, DBCtrls, StdCtrls, Grids, DBGrids, Mask;

type
  TfEditor = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBComboBox1: TDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label17: TLabel;
    DBNavigator1: TDBNavigator;
    procedure GroupBox1Exit(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure GroupBox4Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEditor: TfEditor;

implementation

uses DM;

{$R *.dfm}

procedure TfEditor.GroupBox1Exit(Sender: TObject);
begin
  if fDM.TLichData.Modified then
    fDM.TLichData.Post;

end;

procedure TfEditor.GroupBox2Exit(Sender: TObject);
begin
  if fDM.TDoljnost.Modified then
    fDM.TLichData.Post;

end;

procedure TfEditor.GroupBox3Exit(Sender: TObject);
begin
  if fDM.TAdres.Modified then
    fDM.TLichData.Post;

end;

procedure TfEditor.GroupBox4Exit(Sender: TObject);
begin
  if fDM.TTelephones.Modified then
    fDM.TLichData.Post;

end;

procedure TfEditor.Button1Click(Sender: TObject);
begin
  if fDM.TTelephones.Modified then
     fDM.TTelephones.Post;
  fDM.TTelephones.Append;
  DBEdit14.SetFocus;

end;

procedure TfEditor.Button2Click(Sender: TObject);
begin
  if fDM.TLichData.Modified then
    fDM.TLichData.Post;
  if fDM.TDoljnost.Modified then
    fDM.TDoljnost.Post;
  if fDM.TAdres.Modified then
    fDM.TAdres.Post;
  if fDM.TTelephones.Modified then
    fDM.TTelephones.Post;
  Close;

end;

procedure TfEditor.Button3Click(Sender: TObject);
begin
  fDM.TLichData.Append;
  fDM.TDoljnost.Append;
  fDM.TAdres.Append;
  fDM.TTelephones.Append;
  DBEdit1.SetFocus;

end;

end.
