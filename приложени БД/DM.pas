unit DM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TfDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    DSLichData: TDataSource;
    DSDoljnost: TDataSource;
    DSTelephones: TDataSource;
    DSAdres: TDataSource;
    TLichData: TADOTable;
    TDoljnost: TADOTable;
    TTelephones: TADOTable;
    TAdres: TADOTable;
    TLichDataDSDesigner: TAutoIncField;
    TLichDataDSDesigner2: TWideStringField;
    TLichDataDSDesigner3: TWideStringField;
    TLichDataDSDesigner4: TWideStringField;
    TLichDataDSDesigner5: TWideStringField;
    TLichData_: TBooleanField;
    TLichDataDSDesigner6: TWordField;
    TLichData_2: TDateTimeField;
    TLichData_3: TDateTimeField;
    TLichDataDSDesigner7: TWordField;
    TLichDataDSDesigner8: TWideStringField;
    TLichDataDSDesigner9: TBooleanField;
    TDoljnostDSDesigner: TIntegerField;
    TDoljnostDSDesigner2: TWideStringField;
    TDoljnostDSDesigner3: TWideStringField;
    TTelephonesDSDesigner: TIntegerField;
    TTelephonesDSDesigner2: TWideStringField;
    TTelephonesDSDesigner3: TWideStringField;
    TAdresDSDesigner: TIntegerField;
    TAdresDSDesigner2: TWideStringField;
    TAdresDSDesigner3: TWideStringField;
    TAdres_: TWideStringField;
    procedure TLichDataFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    ed: String;
  end;

var
  fDM: TfDM;

implementation

uses Main;

{$R *.dfm}

procedure TfDM.TLichDataFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
  var s:String;
begin
s:= Copy(DataSet['Фамилия'],1,Length(ed));
Accept:= s=ed;
end;

end.
