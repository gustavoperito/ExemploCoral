unit UCadMarcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, Grids,
  DBGrids, DBCtrls, DB, DBClient, SimpleDS;

type
  TFrmCadMarcas = class(TFrmCadObjeto)
    SimpleDSMarcas: TSimpleDataSet;
    marcas: TDataSource;
    SimpleDSMarcasIDMARCA: TIntegerField;
    SimpleDSMarcasNOME_MARCA: TStringField;
    SimpleDSMarcasSTATUS_SIS: TStringField;
    Label1: TLabel;
    DBEnome: TDBEdit;
    Label2: TLabel;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure SimpleDSMarcasAfterDelete(DataSet: TDataSet);
    procedure SimpleDSMarcasAfterPost(DataSet: TDataSet);
    procedure BtnGravarClick(Sender: TObject);
    procedure MedBuscaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadMarcas: TFrmCadMarcas;

implementation

uses Udm;

{$R *.dfm}

procedure TFrmCadMarcas.BtnNovoClick(Sender: TObject);
begin
  dm.auxiliar.close;
  dm.auxiliar.CommandText :=(' SELECT MAX (MARCAS.IDMARCA +1) FROM MARCAS ');
  dm.auxiliar.Open;
  SimpleDSMarcas.Close;
  SimpleDSMarcas.DataSet.ParamByName('PARIDMARCA').AsInteger:=0;
  SimpleDSMarcas.Active:=true;
  SimpleDSMarcas.Append;
   if dm.auxiliar.FieldbyName('MAX').AsInteger = 0 then
    begin
    SimpleDSMarcas.FieldByName('IDMARCA').AsInteger:=1;
    end
    else
  SimpleDSMarcas.FieldByName('IDMARCA').AsInteger:=dm.auxiliar.FieldbyName('MAX').AsInteger;
  MedBusca.Text :=IntToStr(SimpleDSMarcas.FieldByName('IDMARCA').AsInteger);





  inherited;


end;

procedure TFrmCadMarcas.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  SimpleDSMarcas.Cancel;
end;

procedure TFrmCadMarcas.SimpleDSMarcasAfterDelete(DataSet: TDataSet);
begin
  inherited;
  SimpleDSMarcas.ApplyUpdates(0);
end;

procedure TFrmCadMarcas.SimpleDSMarcasAfterPost(DataSet: TDataSet);
begin
  inherited;
  SimpleDSMarcas.ApplyUpdates(0);
end;

procedure TFrmCadMarcas.BtnGravarClick(Sender: TObject);
begin
  inherited;
  SimpleDSMarcasSTATUS_SIS.Value:='A';
  SimpleDSMarcas.Post;
end;

procedure TFrmCadMarcas.MedBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
        if trim(MedBusca.Text)='' then
         begin
          BtnNovoClick(self);
         end
          else
           begin
              dm.auxiliar.Close;
              dm.auxiliar.CommandText:=' SELECT MARCAS.IDMARCA , MARCAS.STATUS_SIS  ' +
                                        ' FROM MARCAS ' +
                                         ' WHERE MARCAS.IDMARCA = :PARMARCA ';
              dm.auxiliar.ParamByName('PARMARCA').AsInteger:= StrToInt(MedBusca.Text);
              dm.auxiliar.Open;
               if dm.auxiliar.FieldByName('IDMARCA').AsInteger>0 then
                begin
                     if dm.auxiliar.FieldByName('STATUS_SIS').AsString = 'A' then
                     begin
                        SimpleDSMarcas.Close;
                        SimpleDSMarcas.DataSet.ParamByName('PARIDMARCA').AsInteger:=StrToInt(MedBusca.Text);
                        SimpleDSMarcas.Active:=true;
                        SimpleDSMarcas.Edit;
                        ativaedesativa;
                     end
                      else
                       begin
                        showmessage('Impossível Editar '+#13+#10+' Marcas Desativado!');
                        MedBusca.SetFocus;
                       end;
                end
                 else
                  begin
                     showmessage('Impossível Editar '+#13+#10+' Marcas Inexistente!');
                     MedBusca.SetFocus;
                  end;
           end;
     end;





end;

end.
