unit UBusBairro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBuscasObjeto, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  ComCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TF_BusBai = class(TF_Buscas)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    SQLBAIRRO: TSQLDataSet;
    PROVIDER: TDataSetProvider;
    CDSBAIRRO: TClientDataSet;
    DSBAIRRO: TDataSource;
    SQLBAIRROIDBAIRRO: TIntegerField;
    SQLBAIRRONOME_BAI: TStringField;
    SQLBAIRROSTATTUS_SIS: TStringField;
    CDSBAIRROIDBAIRRO: TIntegerField;
    CDSBAIRRONOME_BAI: TStringField;
    CDSBAIRROSTATTUS_SIS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_BusBai: TF_BusBai;

implementation

uses Udm;

{$R *.dfm}

end.
