unit UCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, DBCtrls,
  Grids, DBGrids, DB, DBClient, SimpleDS;

type
  TFrmCadProdutos = class(TFrmCadObjeto)
    SimpleDSProd: TSimpleDataSet;
    Prod: TDataSource;
    SimpleDSProdIDPRODUTO: TIntegerField;
    SimpleDSProdIDPERCENTUAL: TIntegerField;
    SimpleDSProdIDTAMANHO: TIntegerField;
    SimpleDSProdIDMODELO: TIntegerField;
    SimpleDSProdDESCRICAO_PROD: TStringField;
    SimpleDSProdQTDE_PROD: TIntegerField;
    SimpleDSProdQTDE_MIN_PROD: TIntegerField;
    SimpleDSProdQTDE_MAX_PROD: TIntegerField;
    SimpleDSProdVALOR_COMP_PROD: TFMTBCDField;
    SimpleDSProdVALOR_VEND_PROD: TFMTBCDField;
    SimpleDSProdSTATUS_SIS: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEpec: TDBEdit;
    Label3: TLabel;
    DBEtam: TDBEdit;
    Label4: TLabel;
    DBEmodelo: TDBEdit;
    Label5: TLabel;
    DBEdescri: TDBEdit;
    Label6: TLabel;
    DBEquantesto: TDBEdit;
    Label7: TLabel;
    DBEquantmin: TDBEdit;
    Label8: TLabel;
    DBEquantmax: TDBEdit;
    Label9: TLabel;
    DBEvalco: TDBEdit;
    Label10: TLabel;
    DBEvalve: TDBEdit;
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure MedBuscaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadProdutos: TFrmCadProdutos;

implementation

uses Udm;

{$R *.dfm}

procedure TFrmCadProdutos.BtnGravarClick(Sender: TObject);
begin
  inherited;
  SimpleDSProdSTATUS_SIS.Value:='A';
  SimpleDSProd.Post;
end;

procedure TFrmCadProdutos.BtnCancelarClick(Sender: TObject);
begin
  inherited;
   SimpleDSProd.Cancel;
end;

procedure TFrmCadProdutos.BtnNovoClick(Sender: TObject);
begin
    dm.auxiliar.close;
  dm.auxiliar.CommandText :=(' SELECT MAX (PRODUTOS.IDPRODUTO +1) FROM PRODUTOS ');
  dm.auxiliar.Open;
  SimpleDSProd.Close;
  SimpleDSProd.DataSet.ParamByName('PARIDPROD').AsInteger:=0;
  SimpleDSProd.Active:=true;
  SimpleDSProd.Append;
  if dm.auxiliar.FieldbyName('MAX').AsInteger = 0 then
  begin
      SimpleDSProd.FieldByName('IDPRODUTO').AsInteger:=1;
  end
  else
      SimpleDSProd.FieldByName('IDPRODUTO').AsInteger:=dm.auxiliar.FieldbyName('MAX').AsInteger;
  MedBusca.Text :=IntToStr(SimpleDSProd.FieldByName('IDPRODUTO').AsInteger);

  inherited;

end;

procedure TFrmCadProdutos.MedBuscaKeyPress(Sender: TObject; var Key: Char);
begin

   if (key = #13) then
     begin
        if (trim(MedBusca.Text) = '' ) then
         begin
          BtnNovoClick(Self);
         end
         else
         begin
             DM.auxiliar.Close;
             DM.auxiliar.CommandText:=' SELECT PRODUTOS.IDPRODUTO, PRODUTOS.STATUS_SIS'+
                                      ' FROM PRODUTOS ' +
                                      ' WHERE PRODUTOS.IDPRODUTO = :PARPROD ';
             DM.auxiliar.ParamByName('PARPROD').AsInteger:= StrToInt(MedBusca.Text);
             DM.auxiliar.Open;
             IF (DM.auxiliar.FieldByName('IDPRODUTO').AsInteger>0) THEN
             BEGIN
                 IF (DM.auxiliar.FieldByName('STATUS_SIS').AsString = 'A') THEN
                 begin
                     SimpleDSProd.Close;
                     SimpleDSProd.DataSet.ParamByName('PARIDPROD').AsInteger:=StrToInt(MedBusca.Text);
                     SimpleDSProd.Active:=True;
                     SimpleDSProd.Edit;
                     ativaedesativa;
                     end
                     else
                     begin
                         showmessage('Impossível Editar '+#13+#10+' Produto Desativada!');
                         MedBusca.SetFocus;
                     end;
                end
                 else
                  begin
                     showmessage('Impossível Editar '+#13+#10+' Produto Inexistente!');
                     MedBusca.SetFocus;
                  end;
           end;

     end;
end;

end.
