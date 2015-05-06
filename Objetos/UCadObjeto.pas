unit UCadObjeto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls,
  U_Modelo;

type
  TF_CadObjeto = class(TF_Modelo)
    PnlTitulo: TPanel;
    PnlStatus: TPanel;
    PnlBotoes: TPanel;
    PnlDados: TPanel;
    MedBusca: TMaskEdit;
    BtnNovo: TBitBtn;
    BtnGravar: TBitBtn;
    BtnBuscar: TBitBtn;
    BtnStatus: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSair: TBitBtn;
    StbStatus: TStatusBar;
    Timer1: TTimer;
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ativaedesativa;
  end;

var
  F_CadObjeto: TF_CadObjeto;
  fechar:boolean;

implementation

uses Udm;

{$R *.dfm}

procedure TF_CadObjeto.ativaedesativa;
begin

  BtnNovo.Enabled       := not BtnNovo.Enabled;
  BtnGravar.Enabled     := not BtnGravar.Enabled;
  BtnBuscar.Enabled     := not BtnBuscar.Enabled;
  BtnStatus.Enabled     := not BtnStatus.Enabled;
  BtnCancelar.Enabled   := not BtnCancelar.Enabled;
  BtnSair.Enabled       := not BtnSair.Enabled;
  PnlDados.Enabled      := not PnlDados.Enabled;
  MedBusca.Enabled      := not MedBusca.Enabled;
  fechar:= true;
  //Testando se o MedBusca esta ativado, indicando que estamos com o
  //estado original do form e por isso limpamos o maskedit.
  If (MedBusca.Enabled = True) Then
    Begin
      MedBusca.Clear;
      FocusControl(MedBusca);
    End;  
end;

procedure TF_CadObjeto.BtnNovoClick(Sender: TObject);
begin
   ativaedesativa;
end;

procedure TF_CadObjeto.BtnGravarClick(Sender: TObject);
begin
 ativaedesativa;
end;

procedure TF_CadObjeto.BtnCancelarClick(Sender: TObject);
begin
  ativaedesativa;
end;

procedure TF_CadObjeto.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TF_CadObjeto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       if BtnGravar.Enabled then
        begin
         Action:=caNone;
         StbStatus.Panels[2].Text:='Para Fechar o Formulário cancele ou Grave a Operação!';
         fechar:=false;

        end;
end;

procedure TF_CadObjeto.Timer1Timer(Sender: TObject);
begin
    StbStatus.Panels[0].Text:='Hora:'+ TimeToStr(time);
    StbStatus.Panels[1].Text:='Data:'+ DateToStr(date);
     if fechar then
      begin
        StbStatus.Panels[2].Text:='';
      end; 
end;

procedure TF_CadObjeto.FormShow(Sender: TObject);
begin
  Caption:=DadosConfigura.Aplicacao+' '+DadosConfigura.Versao;
  PnlTitulo.Color:= StringToColor(DadosConfigura.CorUM);
  PnlTitulo.Font.Color:= stringtocolor(DadosConfigura.Cordois);
  inherited;
end;

end.
