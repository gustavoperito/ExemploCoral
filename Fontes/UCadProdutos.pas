unit UCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, DBCtrls,
  Grids, DBGrids, DB, DBClient, SimpleDS,
  FMTBcd, Provider, SqlExpr;

type
  TF_CadProdutos = class(TF_CadObjeto)
    Label1: TLabel;
    SQLPRODUTOS: TSQLDataSet;
    PROVIDER: TDataSetProvider;
    CDSPRODUTOS: TClientDataSet;
    DSPRODUTOS: TDataSource;
    SQLPRODUTOSIDPRODUTO: TIntegerField;
    SQLPRODUTOSIDPERCENTUAL: TIntegerField;
    SQLPRODUTOSIDTAMANHO: TIntegerField;
    SQLPRODUTOSIDMODELO: TIntegerField;
    SQLPRODUTOSDESCRICAO_PROD: TStringField;
    SQLPRODUTOSQTDE_PROD: TIntegerField;
    SQLPRODUTOSQTDE_MIN_PROD: TIntegerField;
    SQLPRODUTOSQTDE_MAX_PROD: TIntegerField;
    SQLPRODUTOSVALOR_COMP_PROD: TFMTBCDField;
    SQLPRODUTOSVALOR_VEND_PROD: TFMTBCDField;
    SQLPRODUTOSSTATUS_SIS: TStringField;
    CDSPRODUTOSIDPRODUTO: TIntegerField;
    CDSPRODUTOSIDPERCENTUAL: TIntegerField;
    CDSPRODUTOSIDTAMANHO: TIntegerField;
    CDSPRODUTOSIDMODELO: TIntegerField;
    CDSPRODUTOSDESCRICAO_PROD: TStringField;
    CDSPRODUTOSQTDE_PROD: TIntegerField;
    CDSPRODUTOSQTDE_MIN_PROD: TIntegerField;
    CDSPRODUTOSQTDE_MAX_PROD: TIntegerField;
    CDSPRODUTOSVALOR_COMP_PROD: TFMTBCDField;
    CDSPRODUTOSVALOR_VEND_PROD: TFMTBCDField;
    CDSPRODUTOSSTATUS_SIS: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadProdutos: TF_CadProdutos;

implementation

uses Udm;

{$R *.dfm}

procedure TF_CadProdutos.BtnNovoClick(Sender: TObject);
begin
  //Gerando o código automaticamente no Auxiliar
  dm.auxiliar.close;
  dm.auxiliar.CommandText :=(' SELECT MAX (PRODUTOS.IDPRODUTO) FROM PRODUTOS ');
  dm.auxiliar.Open;

  //Desligando os Datasets
  CDSPRODUTOS.close;
  SQLPRODUTOS.close;

  //Zerando o parametro para nao trazer clientes
  SQLPRODUTOS.ParamByName('PARIDPRODUTO').AsInteger:=0;

  //Abrindo os Datasets
  SQLPRODUTOS.Open;
  CDSPRODUTOS.Open;

  //Criando um registro em Branco(e preto) no final do arquivo
  CDSPRODUTOS.Append;

  //Inserindo o id no cadastro
  CDSPRODUTOS.FieldByName('IDPRODUTO').AsInteger := dm.auxiliar.fieldbyname('MAX').AsInteger + 1;
  MedBusca.Text :=IntToStr(CDSPRODUTOS.FieldByName('IDPRODUTO').AsInteger);

  //Atribuindo o Status
  CDSPRODUTOSSTATUS_SIS.AsString := 'A';

  inherited;

end;

procedure TF_CadProdutos.BtnCancelarClick(Sender: TObject);
begin
  CDSPRODUTOS.Cancel;
  inherited;
end;

procedure TF_CadProdutos.BtnGravarClick(Sender: TObject);
begin
  //Este if testa se o DataSet está em modo de Inserção(dsinsert), se estiver roda novamente a rotina de geração da PK.
  If (CDSPRODUTOS.State = DsInsert) Then
    Begin
      dm.auxiliar.close;
      dm.auxiliar.CommandText :=(' SELECT MAX (PRODUTOS.IDPRODUTO) FROM PRODUTOS ');
      dm.auxiliar.Open;

      CDSPRODUTOS.FieldByName('IDPRODUTO').AsInteger := dm.auxiliar.fieldbyname('MAX').AsInteger + 1;
      MedBusca.Text :=IntToStr(CDSPRODUTOS.FieldByName('IDPRODUTO').AsInteger);
    End;

  try
    CDSPRODUTOS.Post;
    CDSPRODUTOS.ApplyUpdates(0);
  except
    ShowMessage('Erro de Gravação....');
    Exit;
  end;

  CDSPRODUTOS.Close;
  SQLPRODUTOS.Close;
  inherited;
end;

end.
