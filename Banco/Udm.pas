
unit Udm;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, DBClient, SimpleDS, FMTBcd;

type
  TDM = class(TDataModule)
    conexao: TSQLConnection;
    auxiliar: TSQLDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses UCadClientes;

{$R *.dfm}

end.
