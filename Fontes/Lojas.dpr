program Lojas;

uses
  Forms,
  Udm in '..\Banco\Udm.pas' {DM: TDataModule},
  U_Modelo in '..\Objetos\U_Modelo.pas' {F_Modelo},
  UCadObjeto in '..\Objetos\UCadObjeto.pas' {F_CadObjeto},
  UCadCidades in 'UCadCidades.pas' {F_CadCidades},
  UCadClientes in 'UCadClientes.pas' {F_CadClientes},
  UCadCompras in 'UCadCompras.pas' {F_CadCompras},
  UCadEnderecos in 'UCadEnderecos.pas' {F_CadEnderecos},
  UcadFornecedor in 'UcadFornecedor.pas' {F_CadFornecedores},
  UCadMarcas in 'UCadMarcas.pas' {F_CadMarcas},
  UCadModelos in 'UCadModelos.pas' {F_CadModelos},
  UCadProdutos in 'UCadProdutos.pas' {F_CadProdutos},
  UCadTamanhos in 'UCadTamanhos.pas' {F_CadTamanhos},
  Uprincipal in 'Uprincipal.pas' {F_Principal},
  UCadBairros in 'UCadBairros.pas' {F_CadBairros},
  UBuscasObjeto in '..\Objetos\UBuscasObjeto.pas' {F_Buscas},
  UBusClientes in 'UBusClientes.pas' {F_BusCli},
  UStatusCli in 'UStatusCli.pas' {F_StatusCli},
  UBusCidade in 'UBusCidade.pas' {F_BusCid},
  UStatusCid in 'UStatusCid.pas' {F_StatusCid},
  UCadPercentual in 'UCadPercentual.pas' {F_CadPercentual},
  UConfiguracoes in 'UConfiguracoes.pas' {F_Configuracoes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TF_Principal, F_Principal);
  Application.Run;
end.
