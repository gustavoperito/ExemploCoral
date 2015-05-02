program Lojas;

uses
  Forms,
  Udm in '..\Banco\Udm.pas' {DM: TDataModule},
  U_Modelo in '..\Objetos\U_Modelo.pas' {F_Modelo},
  UCadObjeto in '..\Objetos\UCadObjeto.pas' {FrmCadObjeto},
  UCadCidades in 'UCadCidades.pas' {FrmCadCidades},
  UCadClientes in 'UCadClientes.pas' {FrmCadClientes},
  UCadCompras in 'UCadCompras.pas' {FrmCadCompras},
  UCadEnderecos in 'UCadEnderecos.pas' {FrmCadEnderecos},
  UcadFornecedor in 'UcadFornecedor.pas' {FrmCadFornecedores},
  UCadMarcas in 'UCadMarcas.pas' {FrmCadMarcas},
  UCadModelos in 'UCadModelos.pas' {FrmCadModelos},
  UCadProdutos in 'UCadProdutos.pas' {FrmCadProdutos},
  UCadTamanhos in 'UCadTamanhos.pas' {FrmCadTamanhos},
  Uprincipal in 'Uprincipal.pas' {FrmPrincipal},
  UCadBairros in 'UCadBairros.pas' {FrmCadBairros},
  UBuscasObjeto in '..\Objetos\UBuscasObjeto.pas' {F_Buscas},
  UBusClientes in 'UBusClientes.pas' {F_BusCli},
  UStatusCli in 'UStatusCli.pas' {F_StatusCli},
  UBusCidade in 'UBusCidade.pas' {F_BusCid},
  UStatusCid in 'UStatusCid.pas' {F_StatusCid};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
