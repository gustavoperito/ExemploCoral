unit U_Modelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Inifiles;
  //Adicionou-se a Unit Inifiles para permitir acesso a arquivos .INI...

type

  TF_Modelo = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     //Criando uma variável do tipo Record
     //para armazenar as informações lidas do arquivo.ini
     DadosConfigura : record
                          Aplicacao : String[60];
                          Versao    : String[10];
                          Cliente   : String[60];
                          Banco     : String[100];
                          FundoForm : String;
                          Corum     : String;
                          Cordois   : String;
                      End;

    { Public declarations }
  end;

var
  F_Modelo: TF_Modelo;

  ArquivoIni : TIniFile;
  //Criou-se uma variável de memória, do tipo Tinifile, para armazenar o caminho do arquivo
  //.ini e permitir acesso ao mesmo.

implementation

{$R *.dfm}

procedure TF_Modelo.FormCreate(Sender: TObject);
var
   caminhoexe : String ;
begin

 caminhoexe := ExtractFilePath(Application.ExeName);
 ArquivoIni := TIniFile.Create(caminhoexe+'config.ini');
 //Linkando a variavel de memória com o caminho do arquivo no disco.

 
 //Carregando os valores das variáveis do arquivo.ini para a variável(record) da aplicação....
 DadosConfigura.Aplicacao :=  ArquivoIni.ReadString('SOFTWARE','APLICACAO','Software Ilegal......');
 DadosConfigura.Versao    :=  ArquivoIni.ReadString('SOFTWARE','VERSAO','Pirata');
 DadosConfigura.Cliente   :=  ArquivoIni.ReadString('SOFTWARE','CLIENTE','Cliente Não Registrado');
 DadosConfigura.Banco     :=  ArquivoIni.ReadString('BANCO','CAMINHO','');
 DadosConfigura.Corum     :=  ArquivoIni.ReadString('CONFIGURACOES','CORUM','clWhite');
 DadosConfigura.Cordois   :=  ArquivoIni.ReadString('CONFIGURACOES','CORDOIS','clWhite');
 ArquivoIni.Free;
 //Descarregando o arquivo.ini da memória.....

end;

end.
