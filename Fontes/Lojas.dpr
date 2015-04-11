program Lojas;

uses
  Forms,
  Udm in '..\Banco\Udm.pas' {DM: TDataModule},
  UCadObjeto in '..\Objetos\UCadObjeto.pas' {FrmCadObjeto},
  UCadBairros in 'UCadBairros.pas' {FrmCadBairros},
  UCadCidades in 'UCadCidades.pas' {FrmCadCidades},
  UCadClientes in 'UCadClientes.pas' {FrmCadClientes},
  UCadCompras in 'UCadCompras.pas' {FrmCadCompras},
  UCadEnderecos in 'UCadEnderecos.pas' {FrmCadEnderecos},
  UcadFornecedor in 'UcadFornecedor.pas' {FrmCadFornecedores},
  UCadItensCompras in 'UCadItensCompras.pas' {FrmCadItensCompras},
  UCadItensVendas in 'UCadItensVendas.pas' {FrmCadItensVendas},
  UCadLogradouro in 'UCadLogradouro.pas' {FrmCadLogradouro},
  UCadMarcas in 'UCadMarcas.pas' {FrmCadMarcas},
  UCadModelos in 'UCadModelos.pas' {FrmCadModelos},
  UCadPercentual in 'UCadPercentual.pas' {FrmCadPercentual},
  UCadProdutos in 'UCadProdutos.pas' {FrmCadProdutos},
  UCadTamanhos in 'UCadTamanhos.pas' {FrmCadTamanhos},
  UCadVenda in 'UCadVenda.pas' {FrmCadVendas},
  Uprincipal in 'Uprincipal.pas' {FrmPrincipal},
  U_Modelo in '..\Objetos\U_Modelo.pas' {F_Modelo};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'LojaTechs.';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TF_Modelo, F_Modelo);
  Application.Run;
end.
