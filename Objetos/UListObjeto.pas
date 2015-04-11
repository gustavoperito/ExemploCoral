unit UListObjeto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  ExtCtrls;

type
  TfrmListaObjeto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    SQLLIST: TSQLDataSet;
    PROVIDER: TDataSetProvider;
    CDSLIST: TClientDataSet;
    DSLIST: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaObjeto: TfrmListaObjeto;

implementation

uses Udm;

{$R *.dfm}

end.
