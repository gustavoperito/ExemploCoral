unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, ComCtrls;

type
  TFrmPrincipal = class(TForm)
    lblCliente: TLabel;
    pnlCliente: TPanel;
    lblCadCli: TLabel;
    LblEndereco: TLabel;
    lblTraco1: TLabel;
    lblTraco2: TLabel;
    pnlEndereco: TPanel;
    lblListaEnd: TLabel;
    shpTopo: TShape;
    shpMenu: TShape;
    shpEsquerda: TShape;
    shpDireita: TShape;
    lblLogo: TLabel;
    pnlCorpo: TPanel;
    LblCadCid: TLabel;
    lblCadEnd: TLabel;
    lblCadBai: TLabel;
    LblListaCli: TLabel;
    lblCadForn: TLabel;
    LblListaForn: TLabel;
    lblConfig: TLabel;
    lblTraco3: TLabel;
    lblCadCompra: TLabel;
    MonthCalendar1: TMonthCalendar;
    Memo1: TMemo;
    procedure CLIENTES1Click(Sender: TObject);
    procedure FORNECEDORES1Click(Sender: TObject);
    procedure BAIRROS1Click(Sender: TObject);
    procedure CIDADES1Click(Sender: TObject);
    procedure COMPRAS1Click(Sender: TObject);
    procedure ENDERECOS1Click(Sender: TObject);
    procedure ITENSDECOMPRAS1Click(Sender: TObject);
    procedure ITENSDEVENDAS1Click(Sender: TObject);
    procedure MARCAS1Click(Sender: TObject);
    procedure MODELOS1Click(Sender: TObject);
    procedure PERCENTUAL1Click(Sender: TObject);
    procedure AMANHOS1Click(Sender: TObject);
    procedure LOGRADOURO1Click(Sender: TObject);
    procedure PRODUTOS1Click(Sender: TObject);
    procedure VENDAS1Click(Sender: TObject);
    procedure lblClienteMouseEnter(Sender: TObject);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LblEnderecoMouseEnter(Sender: TObject);
    procedure lblCadCliClick(Sender: TObject);
    procedure lblCadFornClick(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure LblListaFornClick(Sender: TObject);
    procedure lblListaEndClick(Sender: TObject);
    procedure lblCadEndClick(Sender: TObject);
    procedure lblCadCompraClick(Sender: TObject);
    procedure lblClienteMouseLeave(Sender: TObject);
    procedure lblCadCliMouseEnter(Sender: TObject);
    procedure lblCadCliMouseLeave(Sender: TObject);
    procedure lblCadFornMouseEnter(Sender: TObject);
    procedure lblCadFornMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses UCadClientes, UcadFornecedor, UCadBairros, UCadCidades, UCadCompras,
  UCadEnderecos, UCadItensCompras, UCadItensVendas, UCadLogradouro,
  UCadMarcas, UCadModelos, UCadObjeto, UCadPercentual, UCadProdutos,
  UCadTamanhos, UCadVenda, Udm, UListEndereco;

{$R *.dfm}

procedure TFrmPrincipal.CLIENTES1Click(Sender: TObject);
begin
    Application.CreateForm(TFrmCadClientes, FrmCadClientes);
    FrmCadClientes.ShowModal;
    FrmCadClientes.Free;
end;

procedure TFrmPrincipal.FORNECEDORES1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmCadFornecedores, FrmCadFornecedores);
   FrmCadFornecedores.ShowModal;
   FrmCadFornecedores.Free;
end;

procedure TFrmPrincipal.BAIRROS1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmCadBairros, FrmCadBairros);
   FrmCadBairros.ShowModal;
   FrmCadBairros.Free;
end;

procedure TFrmPrincipal.CIDADES1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmCadCidades,FrmCadCidades);
   FrmCadCidades.ShowModal;
   FrmCadCidades.Free;
end;

procedure TFrmPrincipal.COMPRAS1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmCadCompras, FrmCadCompras);
   FrmCadCompras.ShowModal;
   FrmCadCompras.Free;
end;

procedure TFrmPrincipal.ENDERECOS1Click(Sender: TObject);
begin
    Application.CreateForm(TFrmCadEnderecos, FrmCadEnderecos);
   FrmCadEnderecos.ShowModal;
   FrmCadEnderecos.Free;
end;

procedure TFrmPrincipal.ITENSDECOMPRAS1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmCadItensCompras, FrmCadItensCompras);
   FrmCadItensCompras.ShowModal;
   FrmCadItensCompras.Free;
end;

procedure TFrmPrincipal.ITENSDEVENDAS1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmCadItensVendas, FrmCadItensVendas);
   FrmCadItensVendas.ShowModal;
   FrmCadItensVendas.Free;
end;

procedure TFrmPrincipal.MARCAS1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmCadMarcas, FrmCadMarcas);
   FrmCadMarcas.ShowModal;
   FrmCadMarcas.Free;
end;

procedure TFrmPrincipal.MODELOS1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmCadModelos, FrmCadModelos);
   FrmCadModelos.ShowModal;
   FrmCadModelos.Free;
end;

procedure TFrmPrincipal.PERCENTUAL1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmCadPercentual, FrmCadPercentual);
   FrmCadPercentual.ShowModal;
   FrmCadPercentual.Free;
end;

procedure TFrmPrincipal.AMANHOS1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmCadTamanhos, FrmCadTamanhos);
   FrmCadTamanhos.ShowModal;
   FrmCadTamanhos.Free;
end;

procedure TFrmPrincipal.LOGRADOURO1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmCadLogradouro, FrmCadLogradouro);
   FrmCadLogradouro.ShowModal;
   FrmCadLogradouro.Free;
end;

procedure TFrmPrincipal.PRODUTOS1Click(Sender: TObject);
begin
   Application.CreateForm(TFrmCadProdutos, FrmCadProdutos);
   FrmCadProdutos.ShowModal;
   FrmCadProdutos.Free;
end;

procedure TFrmPrincipal.VENDAS1Click(Sender: TObject);
begin
    Application.CreateForm(TFrmCadVendas, FrmCadVendas);
   FrmCadVendas.ShowModal;
   FrmCadVendas.Free;
end;

procedure TFrmPrincipal.lblClienteMouseEnter(Sender: TObject);
begin
pnlCliente.Visible := true;
lblCliente.Font.Color := clSilver;
end;

procedure TFrmPrincipal.Panel3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnlCliente.Visible:=false;
   pnlEndereco.Visible :=false;
end;

procedure TFrmPrincipal.LblEnderecoMouseEnter(Sender: TObject);
begin
   pnlEndereco.Visible := true;
end;

procedure TFrmPrincipal.lblCadCliClick(Sender: TObject);
begin
    Application.CreateForm(TFrmCadClientes, FrmCadClientes);
    FrmCadClientes.ShowModal;
    FrmCadClientes.Free;
end;

procedure TFrmPrincipal.lblCadFornClick(Sender: TObject);
begin
   Application.CreateForm(TFrmCadFornecedores, FrmCadFornecedores);
   FrmCadFornecedores.ShowModal;
   FrmCadFornecedores.Free;
end;

procedure TFrmPrincipal.Label7Click(Sender: TObject);
begin
   Application.CreateForm(TFrmCadBairros, FrmCadBairros);
   FrmCadBairros.ShowModal;
   FrmCadBairros.Free;
end;

procedure TFrmPrincipal.LblListaFornClick(Sender: TObject);
begin
   Application.CreateForm(TFrmCadCidades,FrmCadCidades);
   FrmCadCidades.ShowModal;
   FrmCadCidades.Free;
end;

procedure TFrmPrincipal.lblListaEndClick(Sender: TObject);
begin
   Application.CreateForm(TFrmListaEndereco,FrmListaEndereco);
   FrmListaEndereco.ShowModal;
   FrmListaEndereco.Free;
end;

procedure TFrmPrincipal.lblCadEndClick(Sender: TObject);
begin
   Application.CreateForm(TFrmCadEnderecos, FrmCadEnderecos);
   FrmCadEnderecos.ShowModal;
   FrmCadEnderecos.Free;
end;

procedure TFrmPrincipal.lblCadCompraClick(Sender: TObject);
begin
   Application.CreateForm(TFrmCadCompras, FrmCadCompras);
   FrmCadCompras.ShowModal;
   FrmCadCompras.Free;
end;

procedure TFrmPrincipal.lblClienteMouseLeave(Sender: TObject);
begin
   lblCliente.Font.Color := clWhite
end;

procedure TFrmPrincipal.lblCadCliMouseEnter(Sender: TObject);
begin
   lblCadCli.Font.Color:= clSilver;
end;

procedure TFrmPrincipal.lblCadCliMouseLeave(Sender: TObject);
begin
   lblCadCli.Font.Color:= clWhite;
end;

procedure TFrmPrincipal.lblCadFornMouseEnter(Sender: TObject);
begin
   lblCadForn.Font.Color := clSilver;
end;

procedure TFrmPrincipal.lblCadFornMouseLeave(Sender: TObject);
begin
   lblCadForn.Font.Color := clWhite;
end;

end.
