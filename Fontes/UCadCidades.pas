unit UCadCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, DBCtrls,
  Grids, DBGrids, DB, DBClient, SimpleDS, FMTBcd, Provider, SqlExpr;

type
  TF_CadCidades = class(TF_CadObjeto)
    Label1: TLabel;
    DsCidades: TDataSource;
    DBCUF: TDBComboBox;
    Label3: TLabel;
    Label2: TLabel;
    DBEnome: TDBEdit;
    SQLCidades: TSQLDataSet;
    Provider: TDataSetProvider;
    CdsCidades: TClientDataSet;
    SQLCidadesIDCIDADE: TIntegerField;
    SQLCidadesNOME_CID: TStringField;
    SQLCidadesUF_CID: TStringField;
    SQLCidadesSTATUS_SIS: TStringField;
    CdsCidadesIDCIDADE: TIntegerField;
    CdsCidadesNOME_CID: TStringField;
    CdsCidadesUF_CID: TStringField;
    CdsCidadesSTATUS_SIS: TStringField;
    procedure BtnCancelarClick(Sender: TObject);
    procedure CdsCidadesAfterPost(DataSet: TDataSet);
    procedure CdsCidadesBeforeDelete(DataSet: TDataSet);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure BtnStatusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadCidades: TF_CadCidades;

implementation

uses Udm,
  UBusCidade,
  UStatusCid;

{$R *.dfm}

procedure TF_CadCidades.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  CdsCidades.Cancel;
end;

procedure TF_CadCidades.CdsCidadesAfterPost(DataSet: TDataSet);
begin
  inherited;
  CdsCidades.ApplyUpdates(0);
end;

procedure TF_CadCidades.CdsCidadesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CdsCidades.ApplyUpdates(0);
end;

procedure TF_CadCidades.BtnNovoClick(Sender: TObject);
begin
//Gerando o c�digo automaticamente no Auxiliar
  dm.auxiliar.close;
  dm.auxiliar.CommandText :=(' SELECT MAX (CIDADES.IDCIDADE +1) FROM CIDADES ');
  dm.auxiliar.Open;

  //Desligando os Datasets
  CdsCidades.close;
  SQLCidades.close;
  //Zerando o parametro para nao trazer clientes
  SQLCidades.ParamByName('PARIDCIDADE').AsInteger:=0;
  //Abrindo os Datasets
  SQLCidades.Open;
  CdsCidades.Open;

  //Criando um registro em Branco(e preto) no final do arquivo
  CdsCidades.Append;

  CdsCidades.FieldByName('IDCIDADE').AsInteger := dm.auxiliar.fieldbyname('MAX').AsInteger;
  MedBusca.Text :=IntToStr(CdsCidades.FieldByName('IDCIDADE').AsInteger);
  //Atribuindo o Status
  CdsCidadesSTATUS_SIS.AsString := 'A';
  inherited;

end;

procedure TF_CadCidades.BtnGravarClick(Sender: TObject);
begin
  If (CdsCidades.State = DsInsert) Then
    Begin
      dm.auxiliar.close;
      dm.auxiliar.CommandText :=(' SELECT MAX (CIDADES.IDENDERECO +1) FROM ENDERECOS ');
      dm.auxiliar.Open;

      CdsCidades.FieldByName('IDCIDADE').AsInteger := dm.auxiliar.fieldbyname('MAX').AsInteger;
      MedBusca.Text :=IntToStr(CdsCidades.FieldByName('IDCIDADE').AsInteger);
    End;

  try
    CdsCidades.Post;
    CdsCidades.ApplyUpdates(0);
  except
    ShowMessage('Erro de Grava��o....');
    Exit;
  end;

  CdsCidades.Close;
  SQLCidades.Close;
  inherited;

end;

procedure TF_CadCidades.BtnBuscarClick(Sender: TObject);
begin
    Application.CreateForm(TF_BusCid, F_BusCid);
    F_BusCid.ShowModal;
    F_BusCid.Free;
  inherited;

end;

procedure TF_CadCidades.BtnStatusClick(Sender: TObject);
begin
    Application.CreateForm(TF_StatusCid, F_StatusCid);
    F_StatusCid.ShowModal;
    F_StatusCid.Free;
  inherited;
end;

end.
