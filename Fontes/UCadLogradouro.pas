unit UCadLogradouro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, Grids, DBGrids, DBCtrls, StdCtrls, ExtCtrls, Mask,
  Buttons, ComCtrls, DB, DBClient, SimpleDS;

type
  TFrmCadLogradouro = class(TFrmCadObjeto)
    Label1: TLabel;
    dslogradouro: TDataSource;
    SimplesDSLog: TSimpleDataSet;
    SimplesDSLogIDLOG: TIntegerField;
    SimplesDSLogNOME_LOG: TStringField;
    SimplesDSLogSTATUS_SIS: TStringField;
    Label2: TLabel;
    DBEnome: TDBEdit;
    DataSource1: TDataSource;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure SimplesDSLogAfterPost(DataSet: TDataSet);
    procedure SimplesDSLogBeforeDelete(DataSet: TDataSet);
    procedure MedBuscaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadLogradouro: TFrmCadLogradouro;

implementation

uses Udm;

{$R *.dfm}

procedure TFrmCadLogradouro.BtnNovoClick(Sender: TObject);

begin
  MedBusca.Text:='';
  DBEnome.Text:='';
  dm.auxiliar.close;
  dm.auxiliar.CommandText :=(' SELECT MAX (TIPO_LOGRADOURO.IDLOG +1) FROM TIPO_LOGRADOURO ');
  dm.auxiliar.Open;
  SimplesDSLog.Close;
  SimplesDSLog.DataSet.ParamByName('PARTIPLOG').AsInteger:=0;
  SimplesDSLog.Active:=true;
  SimplesDSLog.Append;
  if DM.auxiliar.FieldbyName('MAX').AsInteger = 0  then
     begin
         SimplesDSLog.FieldByName('IDLOG').AsInteger:=1
     end
  else
  SimplesDSLog.FieldByName('IDLOG').AsInteger:=DM.auxiliar.FieldByName('MAX').AsInteger;

  MedBusca.Text :=IntToStr(SimplesDSLog.FieldByName('IDLOG').AsInteger);







  inherited;

end;

procedure TFrmCadLogradouro.BtnGravarClick(Sender: TObject);
begin
  inherited;
  SimplesDSLogSTATUS_SIS.Value:='A';
  SimplesDSLog.Post;
end;

procedure TFrmCadLogradouro.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  SimplesDSLog.Cancel;
end;

procedure TFrmCadLogradouro.SimplesDSLogAfterPost(DataSet: TDataSet);
begin
  inherited;
  SimplesDSLog.ApplyUpdates(0);
end;

procedure TFrmCadLogradouro.SimplesDSLogBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  SimplesDSLog.ApplyUpdates(0);
end;

procedure TFrmCadLogradouro.MedBuscaKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
     begin
        if (MedBusca.Text)='' then
         begin
          BtnNovoClick(self);
         end
          else
           begin
              dm.auxiliar.Close;
              dm.auxiliar.CommandText:=' SELECT TIPO_LOGRADOURO.IDLOG , TIPO_LOGRADOURO.STATUS_SIS  ' +
                                        ' FROM TIPO_LOGRADOURO ' +
                                         ' WHERE TIPO_LOGRADOURO.IDLOG = :PARLOG ';
              dm.auxiliar.ParamByName('PARLOG').AsInteger:= StrToInt(MedBusca.Text);
              dm.auxiliar.Open;
               if dm.auxiliar.FieldByName('IDLOG').AsInteger>0 then
                begin
                     if dm.auxiliar.FieldByName('STATUS_SIS').AsString = 'A' then
                     begin
                        SimplesDSLog.Close;
                        SimplesDSLog.DataSet.ParamByName('PARTIPLOG').AsInteger:=StrToInt(MedBusca.Text);
                        SimplesDSLog.Active:=True;
                        SimplesDSLog.Edit;
                        ativaedesativa;
                     end
                      else
                       begin
                        showmessage('Impossível Editar '+#13+#10+' Logradouro Desativada!');
                        MedBusca.SetFocus;
                       end;
                end
                 else
                  begin
                     showmessage('Impossível Editar '+#13+#10+' Logradouro Inexistente!');
                     MedBusca.SetFocus;
                  end;
           end;
     end;


end;

end.
