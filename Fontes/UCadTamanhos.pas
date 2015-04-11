unit UCadTamanhos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, Grids,
  DBGrids, DBCtrls, DB, DBClient, SimpleDS;

type
  TFrmCadTamanhos = class(TFrmCadObjeto)
    SimpleDSTam: TSimpleDataSet;
    DataSource1: TDataSource;
    SimpleDSTamIDTAMANHO: TIntegerField;
    SimpleDSTamDESCRICAO_TAM: TStringField;
    SimpleDSTamSTATUS_SIS: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdesc: TDBEdit;
    procedure SimpleDSTamAfterDelete(DataSet: TDataSet);
    procedure SimpleDSTamAfterPost(DataSet: TDataSet);
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
  FrmCadTamanhos: TFrmCadTamanhos;

implementation

uses Udm;

{$R *.dfm}

procedure TFrmCadTamanhos.SimpleDSTamAfterDelete(DataSet: TDataSet);
begin
  inherited;
  SimpleDSTam.ApplyUpdates(0);

end;

procedure TFrmCadTamanhos.SimpleDSTamAfterPost(DataSet: TDataSet);
begin
  inherited;
  SimpleDSTam.ApplyUpdates(0);
end;

procedure TFrmCadTamanhos.BtnGravarClick(Sender: TObject);
begin
  inherited;
  SimpleDSTamSTATUS_SIS.Value:='A';
  SimpleDSTam.Post;
end;

procedure TFrmCadTamanhos.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  SimpleDSTam.Cancel
end;

procedure TFrmCadTamanhos.BtnNovoClick(Sender: TObject);
begin
    dm.auxiliar.close;
  dm.auxiliar.CommandText :=(' SELECT MAX (TAMANHOS.IDTAMANHO +1) FROM TAMANHOS ');
  dm.auxiliar.Open;
  SimpleDSTam.Close;
  SimpleDSTam.DataSet.ParamByName('PARIDTAM').AsInteger:=0;
  SimpleDSTam.Active:=true;
  SimpleDSTam.Append;
  if dm.auxiliar.FieldbyName('MAX').AsInteger = 0 then
  begin
      SimpleDSTam.FieldByName('IDTAMANHO').AsInteger:=1;
  end
  else
      SimpleDSTam.FieldByName('IDTAMANHO').AsInteger:=dm.auxiliar.FieldbyName('MAX').AsInteger;
  MedBusca.Text :=IntToStr(SimpleDSTam.FieldByName('IDTAMANHO').AsInteger);

  inherited;

end;

procedure TFrmCadTamanhos.MedBuscaKeyPress(Sender: TObject; var Key: Char);
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
             DM.auxiliar.CommandText:=' SELECT TAMANHOS.IDTAMANHO, TAMANHOS.STATUS_SIS'+
                                      ' FROM TAMANHOS ' +
                                      ' WHERE TAMANHOS.IDTAMANHO = :PARTAM ';
             DM.auxiliar.ParamByName('PARTAM').AsInteger:= StrToInt(MedBusca.Text);
             DM.auxiliar.Open;
             IF (DM.auxiliar.FieldByName('IDTAMANHO').AsInteger>0) THEN
             BEGIN
                 IF (DM.auxiliar.FieldByName('STATUS_SIS').AsString = 'A') THEN
                 begin
                     SimpleDSTam.Close;
                     SimpleDSTam.DataSet.ParamByName('PARTAM').AsInteger:=StrToInt(MedBusca.Text);
                     SimpleDSTam.Active:=True;
                     SimpleDSTam.Edit;
                     ativaedesativa;
                     end
                     else
                     begin
                         showmessage('Impossível Editar '+#13+#10+' Endereço Desativada!');
                         MedBusca.SetFocus;
                     end;
                end
                 else
                  begin
                     showmessage('Impossível Editar '+#13+#10+' Endereço Inexistente!');
                     MedBusca.SetFocus;
                  end;
           end;

     end;

end;

end.
