unit UCadLogradouro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, Grids, DBGrids, DBCtrls, StdCtrls, ExtCtrls, Mask,
  Buttons, ComCtrls, DB, DBClient, SimpleDS;

type
  TF_CadLogradouro = class(TF_CadObjeto)
    Label1: TLabel;
    dslogradouro: TDataSource;
    SimplesDSLog: TSimpleDataSet;
    SimplesDSLogIDLOG: TIntegerField;
    SimplesDSLogNOME_LOG: TStringField;
    SimplesDSLogSTATUS_SIS: TStringField;
    Label2: TLabel;
    DBEnome: TDBEdit;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadLogradouro: TF_CadLogradouro;

implementation

uses Udm;

{$R *.dfm}


end.
