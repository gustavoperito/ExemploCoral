program Lojas;

uses
  Forms,
  Uprincipal in 'Fontes\Uprincipal.pas' {FrmPrincipal},
  Udm in 'Banco\Udm.pas' {DM: TDataModule},
  UCadObjeto in 'Objetos\UCadObjeto.pas' {FrmCadObjeto},
  UCadClientes in 'Fontes\UCadClientes.pas' {FrmCadClientes},
  UcadFornecedor in 'Fontes\UcadFornecedor.pas' {FrmCadFornecedores},
  UCadBairros in 'Fontes\UCadBairros.pas' {FrmCadBairros},
  UCadCidades in 'Fontes\UCadCidades.pas' {FrmCadCidades},
  UCadCompras in 'Fontes\UCadCompras.pas' {FrmCadCompras},
  UCadEnderecos in 'Fontes\UCadEnderecos.pas' {FrmCadEnderecos},
  UCadItensCompras in 'Fontes\UCadItensCompras.pas' {FrmCadItensCompras},
  UCadItensVendas in 'Fontes\UCadItensVendas.pas' {FrmCadItensVendas},
  UCadMarcas in 'Fontes\UCadMarcas.pas' {FrmCadMarcas},
  UCadModelos in 'Fontes\UCadModelos.pas' {FrmCadModelos},
  UCadPercentual in 'Fontes\UCadPercentual.pas' {FrmCadPercentual},
  UCadTamanhos in 'Fontes\UCadTamanhos.pas' {FrmCadTamanhos},
  UCadLogradouro in 'Fontes\UCadLogradouro.pas' {FrmCadLogradouro},
  UCadProdutos in 'Fontes\UCadProdutos.pas' {FrmCadProdutos},
  UCadVenda in 'Fontes\UCadVenda.pas' {FrmCadVendas},
  UListObjeto in 'Objetos\UListObjeto.pas' {frmListaObjeto},
  UListEndereco in 'Fontes\UListEndereco.pas' {FrmListaEndereco};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
