unit UCadModelos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, DBCtrls,
  Grids, DBGrids, DB, DBClient, SimpleDS;

type
  TFrmCadModelos = class(TFrmCadObjeto)
    SimpleDSModelos: TSimpleDataSet;
    modelos: TDataSource;
    SimpleDSModelosIDMODELO: TIntegerField;
    SimpleDSModelosIDMARCA: TIntegerField;
    SimpleDSModelosDESCRICAO_MOD: TStringField;
    SimpleDSModelosSTATUS_SIS: TStringField;
    Label1: TLabel;
    DBEcodmarca: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBdescrimod: TDBEdit;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure SimpleDSModelosAfterDelete(DataSet: TDataSet);
    procedure SimpleDSModelosAfterPost(DataSet: TDataSet);
    procedure MedBuscaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadModelos: TFrmCadModelos;

implementation

uses Udm;

{$R *.dfm}

procedure TFrmCadModelos.BtnNovoClick(Sender: TObject);
begin
  dm.auxiliar.close;
  dm.auxiliar.CommandText :=(' SELECT MAX (MODELOS.IDMODELO +1) FROM MODELOS ');
  dm.auxiliar.Open;
  SimpleDSModelos.Close;
  SimpleDSModelos.DataSet.ParamByName('PARIDMODELO').AsInteger:=0;
  SimpleDSModelos.Active:=true;
  SimpleDSModelos.Append;
  if dm.auxiliar.FieldbyName('MAX').AsInteger = 0 then
  begin
      SimpleDSModelos.FieldByName('IDMODELO').AsInteger:=1;
  end
  else
      SimpleDSModelos.FieldByName('IDMODELO').AsInteger:=dm.auxiliar.FieldbyName('MAX').AsInteger;
  MedBusca.Text :=IntToStr(SimpleDSModelos.FieldByName('IDMODELO').AsInteger);

  inherited;


end;

procedure TFrmCadModelos.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  SimpleDSModelos.Cancel;
end;

procedure TFrmCadModelos.BtnGravarClick(Sender: TObject);
begin
  inherited;
  SimpleDSModelosSTATUS_SIS.Value:='A';
  SimpleDSModelos.Post;
end;

procedure TFrmCadModelos.SimpleDSModelosAfterDelete(DataSet: TDataSet);
begin
  inherited;
  SimpleDSModelos.ApplyUpdates(0);
end;

procedure TFrmCadModelos.SimpleDSModelosAfterPost(DataSet: TDataSet);
begin
  inherited;
  SimpleDSModelos.ApplyUpdates(0);
end;

procedure TFrmCadModelos.MedBuscaKeyPress(Sender: TObject; var Key: Char);
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
             DM.auxiliar.CommandText:=' SELECT MODELOS.IDMODELO, MODELOS.STATUS_SIS'+
                                      ' FROM MODELOS ' +
                                      ' WHERE MODELOS.IDMODELO = :PARMODEL ';
             DM.auxiliar.ParamByName('PARMODEL').AsInteger:= StrToInt(MedBusca.Text);
             DM.auxiliar.Open;
             IF (DM.auxiliar.FieldByName('IDMODELO').AsInteger>0) THEN
             BEGIN
                 IF (DM.auxiliar.FieldByName('STATUS_SIS').AsString = 'A') THEN
                 begin
                     SimpleDSModelos.Close;
                     SimpleDSModelos.DataSet.ParamByName('PARIDMODELO').AsInteger:=StrToInt(MedBusca.Text);
                     SimpleDSModelos.Active:=True;
                     SimpleDSModelos.Edit;
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

end.