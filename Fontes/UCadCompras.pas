unit UCadCompras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, Grids,
  DBGrids, DBCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TF_CadCompras = class(TF_CadObjeto)
    SQLCOMPRA: TSQLDataSet;
    PROVIDER: TDataSetProvider;
    CDSCOMPRA: TClientDataSet;
    DSCOMPRA: TDataSource;
    SQLCOMPRAIDCOMPRA: TIntegerField;
    SQLCOMPRAIDFORNECEDOR: TIntegerField;
    SQLCOMPRANUM_NOTA_COMP: TStringField;
    SQLCOMPRADATA_COMP: TDateField;
    SQLCOMPRAVALORTOTAL_COMP: TFMTBCDField;
    SQLCOMPRADESCONTO_COMP: TFMTBCDField;
    SQLCOMPRASTATUS_SIS: TStringField;
    SQLCOMPRANOME_FANTASIA_FORN: TStringField;
    CDSCOMPRAIDCOMPRA: TIntegerField;
    CDSCOMPRAIDFORNECEDOR: TIntegerField;
    CDSCOMPRANUM_NOTA_COMP: TStringField;
    CDSCOMPRADATA_COMP: TDateField;
    CDSCOMPRAVALORTOTAL_COMP: TFMTBCDField;
    CDSCOMPRADESCONTO_COMP: TFMTBCDField;
    CDSCOMPRASTATUS_SIS: TStringField;
    CDSCOMPRANOME_FANTASIA_FORN: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadCompras: TF_CadCompras;

implementation

uses Udm;

{$R *.dfm}

procedure TF_CadCompras.BtnNovoClick(Sender: TObject);
begin
  dm.auxiliar.close;
  dm.auxiliar.CommandText :=(' SELECT MAX (COMPRAS.IDCOMPRA +1) FROM COMPRAS ');
  dm.auxiliar.Open;

  CDSCOMPRA.close;
  SQLCOMPRA.close;

  SQLCOMPRA.ParamByName('PARIDCOMPRA').AsInteger:=0;

  SQLCOMPRA.Open;
  CDSCOMPRA.Open;

  CDSCOMPRA.Append;

  CDSCOMPRA.FieldByName('IDCOMPRA').AsInteger := dm.auxiliar.fieldbyname('MAX').AsInteger;
  MedBusca.Text :=IntToStr(CDSCOMPRA.FieldByName('IDCOMPRA').AsInteger);

  CDSCOMPRASTATUS_SIS.AsString := 'A';
  inherited;
end;

procedure TF_CadCompras.BtnGravarClick(Sender: TObject);
begin
    If (CDSCOMPRA.State = DsInsert) Then
    Begin
      dm.auxiliar.close;
      dm.auxiliar.CommandText :=(' SELECT MAX (COMPRAS.IDCOMPRA +1) FROM COMPRAS ');
      dm.auxiliar.Open;

      CDSCOMPRA.FieldByName('IDCOMPRA').AsInteger := dm.auxiliar.fieldbyname('MAX').AsInteger;
      MedBusca.Text :=IntToStr(CDSCOMPRA.FieldByName('IDCOMPRA').AsInteger);
    End;

  try
    CDSCOMPRA.Post;
    CDSCOMPRA.ApplyUpdates(0);
  except
    ShowMessage('Erro de Gravação....');
    Exit;
  end;

  CDSCOMPRA.Close;
  SQLCOMPRA.Close;
  inherited;
end;

procedure TF_CadCompras.BtnCancelarClick(Sender: TObject);
begin
  CDSCOMPRA.Cancel;
  MedBusca.Text:='';
  inherited;
end;

end.
