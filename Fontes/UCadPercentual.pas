unit UCadPercentual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, StdCtrls, ExtCtrls, Mask, Buttons, ComCtrls, Grids,
  DBGrids, DBCtrls, DB, DBClient, SimpleDS;

type
  TFrmCadPercentual = class(TFrmCadObjeto)
    SimpleDSPerc: TSimpleDataSet;
    SimpleDSPercIDPERCENTUAL: TIntegerField;
    SimpleDSPercDESCRICAO_PERC: TStringField;
    SimpleDSPercVALOR_PERC: TFMTBCDField;
    SimpleDSPercSTATUS_SIS: TStringField;
    Percent: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBEdescr: TDBEdit;
    Label3: TLabel;
    DBEperc: TDBEdit;
    procedure SimpleDSPercAfterDelete(DataSet: TDataSet);
    procedure SimpleDSPercAfterPost(DataSet: TDataSet);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure MedBuscaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPercentual: TFrmCadPercentual;

implementation

uses Udm;

{$R *.dfm}

procedure TFrmCadPercentual.SimpleDSPercAfterDelete(DataSet: TDataSet);
begin
  inherited;
  SimpleDSPerc.ApplyUpdates(0);
end;

procedure TFrmCadPercentual.SimpleDSPercAfterPost(DataSet: TDataSet);
begin
  inherited;
  SimpleDSPerc.ApplyUpdates(0);
end;

procedure TFrmCadPercentual.BtnNovoClick(Sender: TObject);
begin

  dm.auxiliar.close;
  dm.auxiliar.CommandText :=(' SELECT MAX (PERCENTUAL.IDPERCENTUAL +1) FROM PERCENTUAL ');
  dm.auxiliar.Open;
  SimpleDSPerc.Close;
  SimpleDSPerc.DataSet.ParamByName('PARIDPER').AsInteger:=0;
  SimpleDSPerc.Active:=true;
  SimpleDSPerc.Append;
  if dm.auxiliar.FieldbyName('MAX').AsInteger = 0 then
  begin
      SimpleDSPerc.FieldByName('IDPERCENTUAL').AsInteger:=1;
  end
  else
      SimpleDSPerc.FieldByName('IDPERCENTUAL').AsInteger:=dm.auxiliar.FieldbyName('MAX').AsInteger;
  MedBusca.Text :=IntToStr(SimpleDSPerc.FieldByName('IDPERCENTUAL').AsInteger);

  inherited;

end;

procedure TFrmCadPercentual.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  SimpleDSPerc.Cancel;
end;

procedure TFrmCadPercentual.BtnGravarClick(Sender: TObject);
begin
  inherited;
  SimpleDSPercSTATUS_SIS.Value:='A';
  SimpleDSPerc.Post;
end;

procedure TFrmCadPercentual.MedBuscaKeyPress(Sender: TObject;
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
             DM.auxiliar.CommandText:=' SELECT PERCENTUAL.IDPERCENTUAL, PERCENTUAL.STATUS_SIS'+
                                      ' FROM PERCENTUAL ' +
                                      ' WHERE PERCENTUAL.IDPERCENTUAL = :PARPER ';
             DM.auxiliar.ParamByName('PARPER').AsInteger:= StrToInt(MedBusca.Text);
             DM.auxiliar.Open;
             IF (DM.auxiliar.FieldByName('IDPERCENTUAL').AsInteger>0) THEN
             BEGIN
                 IF (DM.auxiliar.FieldByName('STATUS_SIS').AsString = 'A') THEN
                 begin
                     SimpleDSPerc.Close;
                     SimpleDSPerc.DataSet.ParamByName('PARIDPER').AsInteger:=StrToInt(MedBusca.Text);
                     SimpleDSPerc.Active:=True;
                     SimpleDSPerc.Edit;
                     ativaedesativa;
                     end
                     else
                     begin
                         showmessage('Impossível Editar '+#13+#10+' Percentual Desativada!');
                         MedBusca.SetFocus;
                     end;
                end
                 else
                  begin
                     showmessage('Impossível Editar '+#13+#10+' Percentual Inexistente!');
                     MedBusca.SetFocus;
                  end;
           end;

     end;

end;

end.
