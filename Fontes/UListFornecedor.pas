unit UListFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UListObjeto, FMTBcd, StdCtrls, ExtCtrls, DB, DBClient, Provider,
  SqlExpr, Grids, DBGrids;

type
  TfrmListaFornecedor = class(TfrmListaObjeto)
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    SQLLISTIDFORNECEDOR: TIntegerField;
    SQLLISTIDENDERECO: TIntegerField;
    SQLLISTNOME_FANTASIA_FORN: TStringField;
    SQLLISTRAZAO_SOCIAL_FORN: TStringField;
    SQLLISTFONE1_FORN: TStringField;
    SQLLISTFONE2_FORN: TStringField;
    SQLLISTCONTATO_FORN: TStringField;
    SQLLISTCNPJ_FORN: TFMTBCDField;
    SQLLISTEMAIL_FORN: TStringField;
    SQLLISTSITE: TStringField;
    SQLLISTNUM_END_FORN: TStringField;
    SQLLISTCOMPLEMENTO_FORN: TStringField;
    SQLLISTDATA_CAD_FORN: TDateField;
    SQLLISTOBS_FORN: TStringField;
    SQLLISTINSCRICAO_EST_FORN: TStringField;
    SQLLISTSTATUS_SIS: TStringField;
    CDSLISTIDFORNECEDOR: TIntegerField;
    CDSLISTIDENDERECO: TIntegerField;
    CDSLISTNOME_FANTASIA_FORN: TStringField;
    CDSLISTRAZAO_SOCIAL_FORN: TStringField;
    CDSLISTFONE1_FORN: TStringField;
    CDSLISTFONE2_FORN: TStringField;
    CDSLISTCONTATO_FORN: TStringField;
    CDSLISTCNPJ_FORN: TFMTBCDField;
    CDSLISTEMAIL_FORN: TStringField;
    CDSLISTSITE: TStringField;
    CDSLISTNUM_END_FORN: TStringField;
    CDSLISTCOMPLEMENTO_FORN: TStringField;
    CDSLISTDATA_CAD_FORN: TDateField;
    CDSLISTOBS_FORN: TStringField;
    CDSLISTINSCRICAO_EST_FORN: TStringField;
    CDSLISTSTATUS_SIS: TStringField;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaFornecedor: TfrmListaFornecedor;

implementation

{$R *.dfm}

end.
