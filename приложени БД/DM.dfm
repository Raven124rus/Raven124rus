object fDM: TfDM
  OldCreateOrder = False
  Left = 310
  Top = 301
  Height = 510
  Width = 495
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\So' +
      'trudnik\ok.mdb;Mode=Share Deny None;Persist Security Info=False;' +
      'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLED' +
      'B:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Databas' +
      'e Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:G' +
      'lobal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet' +
      ' OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=F' +
      'alse;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Comp' +
      'act Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 32
  end
  object DSLichData: TDataSource
    DataSet = TLichData
    Left = 192
    Top = 104
  end
  object DSDoljnost: TDataSource
    DataSet = TDoljnost
    Left = 192
    Top = 168
  end
  object DSTelephones: TDataSource
    DataSet = TTelephones
    Left = 192
    Top = 232
  end
  object DSAdres: TDataSource
    DataSet = TAdres
    Left = 192
    Top = 296
  end
  object TLichData: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnFilterRecord = TLichDataFilterRecord
    TableName = 'LichData'
    Left = 80
    Top = 104
    object TLichDataDSDesigner: TAutoIncField
      FieldName = #1050#1083#1102#1095
      ReadOnly = True
      Visible = False
    end
    object TLichDataDSDesigner2: TWideStringField
      DisplayWidth = 30
      FieldName = #1060#1072#1084#1080#1083#1080#1103
      Size = 25
    end
    object TLichDataDSDesigner3: TWideStringField
      DisplayWidth = 30
      FieldName = #1048#1084#1103
      Size = 25
    end
    object TLichDataDSDesigner4: TWideStringField
      DisplayWidth = 30
      FieldName = #1054#1090#1095#1077#1089#1090#1074#1086
      Size = 25
    end
    object TLichDataDSDesigner5: TWideStringField
      DisplayWidth = 6
      FieldName = #1055#1086#1083
      Size = 3
    end
    object TLichData_: TBooleanField
      DisplayWidth = 13
      FieldName = #1057#1077#1084'_'#1055#1086#1083#1086#1078
      DisplayValues = #1046#1077#1085#1072#1090';'#1061#1086#1083#1086#1089#1090
    end
    object TLichDataDSDesigner6: TWordField
      DisplayWidth = 12
      FieldName = #1044#1077#1090#1077#1081
    end
    object TLichData_2: TDateTimeField
      DisplayWidth = 21
      FieldName = #1044#1072#1090#1072'_'#1056#1086#1078#1076
    end
    object TLichData_3: TDateTimeField
      DisplayWidth = 22
      FieldName = #1044#1072#1090#1072'_'#1055#1086#1089#1090
    end
    object TLichDataDSDesigner7: TWordField
      DisplayWidth = 12
      FieldName = #1057#1090#1072#1078
    end
    object TLichDataDSDesigner8: TWideStringField
      DisplayWidth = 36
      FieldName = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      Size = 30
    end
    object TLichDataDSDesigner9: TBooleanField
      DisplayWidth = 92
      FieldName = #1042#1086#1077#1085#1085#1086#1086#1073#1103#1079#1072#1085#1085#1099#1081
      DisplayValues = #1044#1072';'#1053#1077#1090
    end
  end
  object TDoljnost: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = #1057#1086#1090#1088#1091#1076#1085#1080#1082
    MasterFields = #1050#1083#1102#1095
    MasterSource = DSLichData
    TableName = 'Doljnost'
    Left = 80
    Top = 168
    object TDoljnostDSDesigner: TIntegerField
      FieldName = #1057#1086#1090#1088#1091#1076#1085#1080#1082
    end
    object TDoljnostDSDesigner2: TWideStringField
      FieldName = #1054#1090#1076#1077#1083
      Size = 15
    end
    object TDoljnostDSDesigner3: TWideStringField
      FieldName = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    end
  end
  object TTelephones: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = #1057#1086#1090#1088#1091#1076#1085#1080#1082
    MasterFields = #1050#1083#1102#1095
    MasterSource = DSLichData
    TableName = 'Telephones'
    Left = 80
    Top = 232
    object TTelephonesDSDesigner: TIntegerField
      FieldName = #1057#1086#1090#1088#1091#1076#1085#1080#1082
    end
    object TTelephonesDSDesigner2: TWideStringField
      FieldName = #1058#1077#1083#1077#1092#1086#1085
      Size = 17
    end
    object TTelephonesDSDesigner3: TWideStringField
      FieldName = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      Size = 10
    end
  end
  object TAdres: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = #1057#1086#1090#1088#1091#1076#1085#1080#1082
    MasterFields = #1050#1083#1102#1095
    MasterSource = DSLichData
    TableName = 'Adres'
    Left = 80
    Top = 296
    object TAdresDSDesigner: TIntegerField
      DisplayWidth = 12
      FieldName = #1057#1086#1090#1088#1091#1076#1085#1080#1082
    end
    object TAdresDSDesigner2: TWideStringField
      DisplayWidth = 18
      FieldName = #1057#1090#1088#1072#1085#1072
      Size = 15
    end
    object TAdresDSDesigner3: TWideStringField
      DisplayWidth = 24
      FieldName = #1043#1086#1088#1086#1076
    end
    object TAdres_: TWideStringField
      DisplayWidth = 63
      FieldName = #1044#1086#1084'_'#1040#1076#1088#1077#1089
      Size = 100
    end
  end
end
