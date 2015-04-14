unit UCadModelos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, DBCtrls,
  Grids, DBGrids, DB, DBClient, SimpleDS, FMTBcd, Provider, SqlExpr;

type
  TFrmCadModelos = class(TFrmCadObjeto)
    Label1: TLabel;
    DBEcodmarca: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBdescrimod: TDBEdit;
    SQLMODELO: TSQLDataSet;
    PROVIDER: TDataSetProvider;
    CDSMODELO: TClientDataSet;
    DSMODELO: TDataSource;
    SQLMODELOIDMODELO: TIntegerField;
    SQLMODELOIDMARCA: TIntegerField;
    SQLMODELODESCRICAO_MOD: TStringField;
    SQLMODELOSTATUS_SIS: TStringField;
    CDSMODELOIDMODELO: TIntegerField;
    CDSMODELOIDMARCA: TIntegerField;
    CDSMODELODESCRICAO_MOD: TStringField;
    CDSMODELOSTATUS_SIS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadModelos: TFrmCadModelos;

implementation

uses Udm;

{$R *.dfm}

end.
