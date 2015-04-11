unit UCadEnderecos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, StdCtrls, ExtCtrls, Mask, Buttons, ComCtrls, DBCtrls,
  Grids, DBGrids, DB, DBClient, SimpleDS, FMTBcd, Provider, SqlExpr;

type
  TFrmCadEnderecos = class(TFrmCadObjeto)
    Label1: TLabel;
    SqlEnd: TSQLDataSet;
    Provider: TDataSetProvider;
    SqlEndIDENDERECO: TIntegerField;
    SqlEndIDCIDADE: TIntegerField;
    SqlEndIDBAIRRO: TIntegerField;
    SqlEndNOME_END: TStringField;
    SqlEndCEP: TStringField;
    Label2: TLabel;
    edtIDCidade: TDBEdit;
    DsEnd: TDataSource;
    Label3: TLabel;
    edtIDBairro: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    CdsEnd: TClientDataSet;
    SqlEndSTATUS_SIS: TStringField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SqlEndNOME_CID: TStringField;
    SqlEndNOME_BAI: TStringField;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    CdsEndIDENDERECO: TIntegerField;
    CdsEndIDCIDADE: TIntegerField;
    CdsEndIDBAIRRO: TIntegerField;
    CdsEndNOME_END: TStringField;
    CdsEndCEP: TStringField;
    CdsEndSTATUS_SIS: TStringField;
    CdsEndNOME_CID: TStringField;
    CdsEndNOME_BAI: TStringField;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure SimpleDSEndAfterPost(DataSet: TDataSet);
    procedure SimpleDSEndBeforeDelete(DataSet: TDataSet);
    procedure MedBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure CdsEndIDCIDADEValidate(Sender: TField);
    procedure CdsEndIDBAIRROValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadEnderecos: TFrmCadEnderecos;

implementation

uses Udm, UCadBairros, UCadCidades;

{$R *.dfm}

procedure TFrmCadEnderecos.BtnNovoClick(Sender: TObject);  
begin
//Gerando o c�digo automaticamente no Auxiliar
  dm.auxiliar.close;
  dm.auxiliar.CommandText :=(' SELECT MAX (ENDERECOS.IDENDERECO +1) FROM ENDERECOS ');
  dm.auxiliar.Open;

  //Desligando os Datasets
  Cdsend.close;
  Sqlend.close;
  //Zerando o parametro para nao trazer clientes
  SqlEnd.ParamByName('PARIDENDERECO').AsInteger:=0;
  //Abrindo os Datasets
  Sqlend.Open;
  cdsend.Open;

  //Criando um registro em Branco(e preto) no final do arquivo
  CdsEnd.Append;

  CdsEnd.FieldByName('IDENDERECO').AsInteger := dm.auxiliar.fieldbyname('MAX').AsInteger;
  MedBusca.Text :=IntToStr(cdsend.FieldByName('IDENDERECO').AsInteger);
  //Atribuindo o Status
  CdsEndSTATUS_SIS.AsString := 'A';
  inherited;
end;

procedure TFrmCadEnderecos.BtnGravarClick(Sender: TObject);
begin
  //Este if testa se o DataSet est� em modo de Inser��o(dsinsert), se estiver
  //roda novamente a rotina de gera��o da PK.
  If (cdsend.State = DsInsert) Then
    Begin
      dm.auxiliar.close;
      dm.auxiliar.CommandText :=(' SELECT MAX (ENDERECOS.IDENDERECO +1) FROM ENDERECOS ');
      dm.auxiliar.Open;

      CdsEnd.FieldByName('IDENDERECO').AsInteger := dm.auxiliar.fieldbyname('MAX').AsInteger;
      MedBusca.Text :=IntToStr(CdsEnd.FieldByName('IDENDERECO').AsInteger);
    End;

  try
    cdsend.Post;
    cdsend.ApplyUpdates(0);
  except
    ShowMessage('Erro de Grava��o....');
    Exit;
  end;

  CdsEnd.Close;
  SqlEnd.Close;
  inherited;
end;

procedure TFrmCadEnderecos.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  CdsEnd.Cancel;
end;

procedure TFrmCadEnderecos.SimpleDSEndAfterPost(DataSet: TDataSet);
begin
  inherited;
  CdsEnd.ApplyUpdates(0);
end;

procedure TFrmCadEnderecos.SimpleDSEndBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   CdsEnd.ApplyUpdates(0);
end;

procedure TFrmCadEnderecos.MedBuscaKeyPress(Sender: TObject;
  var Key: Char);
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
             DM.auxiliar.CommandText:=' SELECT ENDERECOS.IDENDERECO, ENDERECOS.STATUS_SIS'+
                                      ' FROM ENDERECOS ' +
                                      ' WHERE ENDERECOS.IDENDERECO = :PARENDERECO ';
             DM.auxiliar.ParamByName('PARENDERECO').AsInteger:= StrToInt(MedBusca.Text);
             DM.auxiliar.Open;
             IF (DM.auxiliar.FieldByName('IDENDERECO').AsInteger>0) THEN
             BEGIN
                 IF (DM.auxiliar.FieldByName('STATUS_SIS').AsString = 'A') THEN
                 begin
                     CdsEnd.Close;
                     SqlEnd.ParamByName('IDENCERECO').AsInteger:=StrToInt(MedBusca.Text);
                     SqlEnd.Active:=True;
                     SqlEnd.Edit;
                     ativaedesativa;
                     end
                     else
                     begin
                         showmessage('Imposs�vel Editar '+#13+#10+' Endere�o Desativada!');
                         MedBusca.SetFocus;
                     end;
                end
                 else
                  begin
                     showmessage('Imposs�vel Editar '+#13+#10+' Endere�o Inexistente!');
                     MedBusca.SetFocus;
                  end;
           end;

     end;
end;

procedure TFrmCadEnderecos.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCadCidades,FrmCadCidades);
  FrmCadCidades.ShowModal;
  FrmCadCidades.Free;
  inherited;
end;

procedure TFrmCadEnderecos.SpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCadBairros, FrmCadBairros);
  FrmCadBairros.ShowModal;
  FrmCadBairros.Free;
  inherited;
end;

procedure TFrmCadEnderecos.CdsEndIDCIDADEValidate(Sender: TField);
begin
  //Estamos aqui validando o valor do cep digitado pelo usu�rio, e
  //verificando se o mesmo existe. Caso exista, atualizamos os campos
  //com os devidos valores, caso contr�rio ficam zerados....
  DM.auxiliar.Close;
  DM.auxiliar.CommandText :='';
  DM.auxiliar.CommandText :=  ' select'+
                              ' CIDADES.*' +
                              ' from CIDADES'+
                              ' WHERE CIDADES.IDCIDADE = ' + QuotedStr(CdsEndIDCIDADE.AsString);
  DM.auxiliar.Open;
  IF (DM.auxiliar.FieldByName('STATUS_SIS').AsString <> 'D') THEN
    BEGIN
      CdsEndNOME_CID.AsString := DM.auxiliar.FIELDBYNAME('NOME_CID').AsString;
    END
  ELSE
    BEGIN
      CdsEndNOME_CID.AsString := '';
      MessageDlg('Cidade Desativada....',mtInformation,[MBOK],0);
    END;
  inherited;
end;

procedure TFrmCadEnderecos.CdsEndIDBAIRROValidate(Sender: TField);
begin
  DM.auxiliar.Close;
  DM.auxiliar.CommandText :='';
  DM.auxiliar.CommandText :=  ' select'+
                              ' BAIRROS.*'+
                              ' from BAIRROS'+
                              ' WHERE BAIRROS.IDBAIRRO = ' + QuotedStr(CdsEndIDBAIRRO.AsString);
  DM.auxiliar.Open;

  IF (DM.auxiliar.FieldByName('STATTUS_SIS').AsString <> 'D') THEN
    BEGIN
      CdsEndNOME_BAI.AsString := DM.auxiliar.FIELDBYNAME('NOME_BAI').AsString;
    END
  ELSE
    BEGIN
      CdsEndNOME_CID.AsString := '';
      MessageDlg('Cidade Desativada....',mtInformation,[MBOK],0);
    END;
  inherited;
end;

end.