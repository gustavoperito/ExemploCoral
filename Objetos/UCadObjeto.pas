unit UCadObjeto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls;

type
  TFrmCadObjeto = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ativaedesativa;
  end;

var
  FrmCadObjeto: TFrmCadObjeto;
  fechar:boolean;

implementation

{$R *.dfm}

procedure TFrmCadObjeto.ativaedesativa;
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

procedure TFrmCadObjeto.BtnNovoClick(Sender: TObject);
begin
   ativaedesativa;
end;

procedure TFrmCadObjeto.BtnGravarClick(Sender: TObject);
begin
 ativaedesativa;
end;

procedure TFrmCadObjeto.BtnCancelarClick(Sender: TObject);
begin
  ativaedesativa;
end;

procedure TFrmCadObjeto.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmCadObjeto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       if BtnGravar.Enabled then
        begin
         Action:=caNone;
         StbStatus.Panels[2].Text:='Para Fechar o Formul�rio cancele ou Grave a Opera��o!';
         fechar:=false;

        end;
end;

procedure TFrmCadObjeto.Timer1Timer(Sender: TObject);
begin
    StbStatus.Panels[0].Text:='Hora:'+ TimeToStr(time);
    StbStatus.Panels[1].Text:='Data:'+ DateToStr(date);
     if fechar then
      begin
        StbStatus.Panels[2].Text:='';
      end; 
end;

end.
