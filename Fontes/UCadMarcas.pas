unit UCadMarcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, Grids,
  DBGrids, DBCtrls, DB, DBClient, SimpleDS, FMTBcd, Provider, SqlExpr;

type
  TF_CadMarcas = class(TF_CadObjeto)
    Label1: TLabel;
    DBEnome: TDBEdit;
    Label2: TLabel;
    SQLMARCA: TSQLDataSet;
    PROVIDER: TDataSetProvider;
    CDSMARCA: TClientDataSet;
    DSMARCA: TDataSource;
    SQLMARCAIDMARCA: TIntegerField;
    SQLMARCANOME_MARCA: TStringField;
    SQLMARCASTATUS_SIS: TStringField;
    CDSMARCAIDMARCA: TIntegerField;
    CDSMARCANOME_MARCA: TStringField;
    CDSMARCASTATUS_SIS: TStringField;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadMarcas: TF_CadMarcas;

implementation

uses Udm;

{$R *.dfm}

procedure TF_CadMarcas.BtnNovoClick(Sender: TObject);
begin
  //Gerando o c�digo automaticamente no Auxiliar
  dm.auxiliar.close;
  dm.auxiliar.CommandText :=(' SELECT MAX (MARCAS.IDMARCA +1) FROM MARCAS ');
  dm.auxiliar.Open;

  //Desligando os Datasets
  CDSMARCA.close;
  SQLMARCA.close;

  //Zerando o parametro para nao trazer clientes
  SQLMARCA.ParamByName('PARIDMARCA').AsInteger:=0;

  //Abrindo os Datasets
  SQLMARCA.Open;
  CDSMARCA.Open;

  //Criando um registro em Branco(e preto) no final do arquivo
  CDSMARCA.Append;

  //Inserindo o id no cadastro
  CDSMARCA.FieldByName('IDMARCA').AsInteger := dm.auxiliar.fieldbyname('MAX').AsInteger;
  MedBusca.Text :=IntToStr(CDSMARCA.FieldByName('IDMARCA').AsInteger);

  //Atribuindo o Status
  CDSMARCASTATUS_SIS.AsString := 'A';

  inherited;
end;

procedure TF_CadMarcas.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  CDSMARCA.Cancel;
end;

procedure TF_CadMarcas.BtnGravarClick(Sender: TObject);
begin
     //Este if testa se o DataSet est� em modo de Inser��o(dsinsert), se estiver roda novamente a rotina de gera��o da PK.
  If (CDSMARCA.State = DsInsert) Then
    Begin
      dm.auxiliar.close;
      dm.auxiliar.CommandText :=(' SELECT MAX (MARCAS.IDMARCA +1) FROM MARCAS ');
      dm.auxiliar.Open;

      CDSMARCA.FieldByName('IDMARCA').AsInteger := dm.auxiliar.fieldbyname('MAX').AsInteger;
      MedBusca.Text :=IntToStr(CDSMARCA.FieldByName('IDMARCA').AsInteger);
    End;

  try
    CDSMARCA.Post;
    CDSMARCA.ApplyUpdates(0);
  except
    ShowMessage('Erro de Grava��o....');
    Exit;
  end;

  CDSMARCA.Close;
  SQLMARCA.Close;
  inherited;
end;

end.
