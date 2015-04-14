program Lojas;

uses
  Forms,
  Udm in '..\Banco\Udm.pas' {DM: TDataModule},
  U_Modelo in '..\Objetos\U_Modelo.pas' {F_Modelo},
  UCadObjeto in '..\Objetos\UCadObjeto.pas' {FrmCadObjeto},
  UListObjeto in '..\Objetos\UListObjeto.pas' {frmListaObjeto},
  UCadBairros in 'UCadBairros.pas',
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
  UListEndereco in 'UListEndereco.pas' {FrmListaEndereco},
  Uprincipal in 'Uprincipal.pas' {FrmPrincipal},
  UListFornecedor in 'UListFornecedor.pas' {frmListaFornecedor};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TfrmListaFornecedor, frmListaFornecedor);
  Application.Run;
end.
