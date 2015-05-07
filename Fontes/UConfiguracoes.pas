unit UConfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Inifiles;

type
  TF_Configuracoes = class(TForm)
    Label1: TLabel;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    Label2: TLabel;
    btnSalvar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DadosConfigura : record
                          Aplicacao : String[60];
                          Versao    : String[10];
                          Cliente   : String[60];
                          Banco     : String[100];
                          FundoForm : String[100];
                          Corum     : String[100];
                          Cordois   : String[100];
                      End;
  end;

var
  F_Configuracoes: TF_Configuracoes;

  ArquivoIni : TIniFile;

implementation

{$R *.dfm}

procedure TF_Configuracoes.FormCreate(Sender: TObject);
   var
   caminhoexe : String ;
begin

 caminhoexe := ExtractFilePath(Application.ExeName);
 ArquivoIni := TIniFile.Create(caminhoexe+'config.ini');
 //Linkando a variavel de mem�ria com o caminho do arquivo no disco.

 
 //Carregando os valores das vari�veis do arquivo.ini para a vari�vel(record) da aplica��o....
 

 ArquivoIni.Free;
end;

procedure TF_Configuracoes.btnSalvarClick(Sender: TObject);
begin
   //DadosConfigura.Corum :=  ArquivoIni.Write(ColorToString(ColorBox1.SelText));
end;

end.
