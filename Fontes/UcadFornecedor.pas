unit UcadFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, Grids,
  DBGrids, DBCtrls, DB, DBClient, SimpleDS, FMTBcd, Provider, SqlExpr,
  ExtDlgs, Jpeg, ClipBrd;

type
  TFrmCadFornecedores = class(TFrmCadObjeto)
    Label1: TLabel;
    Label2: TLabel;
    DBEfant: TDBEdit;
    Label3: TLabel;
    DBERazao: TDBEdit;
    Label4: TLabel;
    DBEresidencial: TDBEdit;
    Label5: TLabel;
    DBEcel: TDBEdit;
    Label6: TLabel;
    DBErepres: TDBEdit;
    Label7: TLabel;
    DBEcnpj: TDBEdit;
    Label8: TLabel;
    DBEmail: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEobds: TDBEdit;
    Label12: TLabel;
    DBEinscEst: TDBEdit;
    DBEsite: TDBEdit;
    Label13: TLabel;
    DBEender: TDBEdit;
    Label14: TLabel;
    DBENumend: TDBEdit;
    Label15: TLabel;
    DBEcompl: TDBEdit;
    SqlFor: TSQLDataSet;
    Provider: TDataSetProvider;
    CdsFor: TClientDataSet;
    DsFor: TDataSource;
    dbFoto: TDBImage;
    OpenImagem: TOpenPictureDialog;
    SqlForIDFORNECEDOR: TIntegerField;
    SqlForIDENDERECO: TIntegerField;
    SqlForNOME_FANTASIA_FORN: TStringField;
    SqlForRAZAO_SOCIAL_FORN: TStringField;
    SqlForFONE1_FORN: TStringField;
    SqlForFONE2_FORN: TStringField;
    SqlForCONTATO_FORN: TStringField;
    SqlForCNPJ_FORN: TFMTBCDField;
    SqlForEMAIL_FORN: TStringField;
    SqlForSITE: TStringField;
    SqlForNUM_END_FORN: TStringField;
    SqlForCOMPLEMENTO_FORN: TStringField;
    SqlForDATA_CAD_FORN: TDateField;
    SqlForOBS_FORN: TStringField;
    SqlForINSCRICAO_EST_FORN: TStringField;
    SqlForSTATUS_SIS: TStringField;
    SqlForCEP: TStringField;
    CdsForIDFORNECEDOR: TIntegerField;
    CdsForIDENDERECO: TIntegerField;
    CdsForNOME_FANTASIA_FORN: TStringField;
    CdsForRAZAO_SOCIAL_FORN: TStringField;
    CdsForFONE1_FORN: TStringField;
    CdsForFONE2_FORN: TStringField;
    CdsForCONTATO_FORN: TStringField;
    CdsForCNPJ_FORN: TFMTBCDField;
    CdsForEMAIL_FORN: TStringField;
    CdsForSITE: TStringField;
    CdsForNUM_END_FORN: TStringField;
    CdsForCOMPLEMENTO_FORN: TStringField;
    CdsForDATA_CAD_FORN: TDateField;
    CdsForOBS_FORN: TStringField;
    CdsForINSCRICAO_EST_FORN: TStringField;
    CdsForSTATUS_SIS: TStringField;
    CdsForCEP: TStringField;
    Label16: TLabel;
    procedure dbFotoDblClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadFornecedores: TFrmCadFornecedores;

implementation

uses Udm;

{$R *.dfm}

procedure TFrmCadFornecedores.dbFotoDblClick(Sender: TObject);
var
   VariavelImagem : TPicture;
begin
  OpenImagem.Execute;
  VariavelImagem := TPicture.Create();
  try
     if (FileExists(OpenImagem.FileName) = true) then
     begin
        VariavelImagem.LoadFromFile(OpenImagem.FileName);
        Clipboard.Assign(VariavelImagem);
        dbFoto.PasteFromClipboard;
        VariavelImagem.Free;
     end;
  except
     ShowMessage('Arquivo Invalido...');
  end;
end;

procedure TFrmCadFornecedores.BtnGravarClick(Sender: TObject);
begin
  //Este if testa se o DataSet está em modo de Inserção(dsinsert), se estiver
  //roda novamente a rotina de geração da PK.
  If (CdsFor.State = DsInsert) Then
    Begin
      dm.auxiliar.close;
      dm.auxiliar.CommandText :=(' SELECT MAX (FORNECEDORES.IDFORNECEDOR +1) FROM FORNECEDORES ');
      dm.auxiliar.Open;

      CdsFor.FieldByName('IDFORNECEDOR').AsInteger := dm.auxiliar.fieldbyname('MAX').AsInteger;
      MedBusca.Text :=IntToStr(CdsFor.FieldByName('IDFORNECEDOR').AsInteger);
      CdsForDATA_CAD_FORN.AsDateTime:=Date;
    End;

  try
    CdsFor.Post;
    CdsFor.ApplyUpdates(0);
  except
    ShowMessage('Erro de Gravação....');
    Exit;
  end;

  CdsFor.Close;
  SqlFor.Close;
  inherited;
end;

procedure TFrmCadFornecedores.BtnCancelarClick(Sender: TObject);
begin
  CdsFor.Cancel;
  inherited;

end;

procedure TFrmCadFornecedores.BtnNovoClick(Sender: TObject);
begin
  //Gerando o código automaticamente no Auxiliar
  dm.auxiliar.close;
  dm.auxiliar.CommandText :=(' SELECT MAX (FORNECEDORES.IDFORNECEDOR +1) FROM FORNECEDORES ');
  dm.auxiliar.Open;

  //Desligando os Datasets
  CdsFor.close;
  SqlFor.close;
  //Zerando o parametro para nao trazer clientes
  SqlFor.ParamByName('PARIDFORNECEDOR').AsInteger:=0;
  //Abrindo os Datasets
  SqlFor.Open;
  CdsFor.Open;

  //Criando um registro em Branco(e preto) no final do arquivo
  CdsFor.Append;

  CdsFor.FieldByName('IDFORNECEDOR').AsInteger := dm.auxiliar.fieldbyname('MAX').AsInteger;
  MedBusca.Text :=IntToStr(CdsFor.FieldByName('IDFORNECEDOR').AsInteger);
  //Atribuindo o Status
  CdsForSTATUS_SIS.AsString := 'A';
  inherited;
end;

end.
