unit Uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, ComCtrls,
  U_Modelo,
  Mask;

type
  TF_Principal = class(TF_Modelo)
    lblCliente: TLabel;
    pnlCliente: TPanel;
    lblCadCli: TLabel;
    LblEndereco: TLabel;
    lblTraco1: TLabel;
    lblTraco2: TLabel;
    pnlEndereco: TPanel;
    shpTopo: TShape;
    shpMenu: TShape;
    shpEsquerda: TShape;
    shpDireita: TShape;
    lblLogo: TLabel;
    pnlCorpo: TPanel;
    LblCadCid: TLabel;
    lblCadEnd: TLabel;
    lblCadBai: TLabel;
    lblCadForn: TLabel;
    lblConfig: TLabel;
    lblTraco3: TLabel;
    lblCadCompra: TLabel;
    MonthCalendar1: TMonthCalendar;
    Memo1: TMemo;
    lblCadProduto: TLabel;
    lblCadTamanhos: TLabel;
    lblCadModelo: TLabel;
    lblCadMarcas: TLabel;
    MaskEdit1: TMaskEdit;
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
    procedure lblCadEndClick(Sender: TObject);
    procedure lblCadCompraClick(Sender: TObject);
    procedure lblClienteMouseLeave(Sender: TObject);
    procedure lblCadCliMouseEnter(Sender: TObject);
    procedure lblCadCliMouseLeave(Sender: TObject);
    procedure lblCadFornMouseEnter(Sender: TObject);
    procedure lblCadFornMouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblCadEndMouseEnter(Sender: TObject);
    procedure lblCadEndMouseLeave(Sender: TObject);
    procedure LblCadCidMouseLeave(Sender: TObject);
    procedure LblCadCidMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lblCadProdutoClick(Sender: TObject);
    procedure lblCadTamanhosClick(Sender: TObject);
    procedure lblCadModeloClick(Sender: TObject);
    procedure lblCadMarcasClick(Sender: TObject);
    procedure lblConfigClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

uses UCadClientes, UcadFornecedor, UCadBairros, UCadCidades, UCadCompras,
  UCadEnderecos, UCadItensCompras, UCadItensVendas, UCadLogradouro,
  UCadMarcas, UCadModelos, UCadObjeto, UCadPercentual, UCadProdutos,
  UCadTamanhos, UCadVenda, Udm,
  UConfiguracoes;

{$R *.dfm}

procedure TF_Principal.CLIENTES1Click(Sender: TObject);
begin
    Application.CreateForm(TF_CadClientes, F_CadClientes);
    F_CadClientes.ShowModal;
    F_CadClientes.Free;
end;

procedure TF_Principal.FORNECEDORES1Click(Sender: TObject);
begin
   Application.CreateForm(TF_CadFornecedores, F_CadFornecedores);
   F_CadFornecedores.ShowModal;
   F_CadFornecedores.Free;
end;

procedure TF_Principal.BAIRROS1Click(Sender: TObject);
begin
   Application.CreateForm(TF_CadBairros, F_CadBairros);
   F_CadBairros.ShowModal;
   F_CadBairros.Free;
end;

procedure TF_Principal.CIDADES1Click(Sender: TObject);
begin
   Application.CreateForm(TF_CadCidades,F_CadCidades);
   F_CadCidades.ShowModal;
   F_CadCidades.Free;
end;

procedure TF_Principal.COMPRAS1Click(Sender: TObject);
begin
   Application.CreateForm(TF_CadCompras, F_CadCompras);
   F_CadCompras.ShowModal;
   F_CadCompras.Free;
end;

procedure TF_Principal.ENDERECOS1Click(Sender: TObject);
begin
    Application.CreateForm(TF_CadEnderecos, F_CadEnderecos);
   F_CadEnderecos.ShowModal;
   F_CadEnderecos.Free;
end;

procedure TF_Principal.ITENSDECOMPRAS1Click(Sender: TObject);
begin
   Application.CreateForm(TF_CadItensCompras, F_CadItensCompras);
   F_CadItensCompras.ShowModal;
   F_CadItensCompras.Free;
end;

procedure TF_Principal.ITENSDEVENDAS1Click(Sender: TObject);
begin
   Application.CreateForm(TF_CadItensVendas, F_CadItensVendas);
   F_CadItensVendas.ShowModal;
   F_CadItensVendas.Free;
end;

procedure TF_Principal.MARCAS1Click(Sender: TObject);
begin
   Application.CreateForm(TF_CadMarcas, F_CadMarcas);
   F_CadMarcas.ShowModal;
   F_CadMarcas.Free;
end;

procedure TF_Principal.MODELOS1Click(Sender: TObject);
begin
  Application.CreateForm(TF_CadModelos, F_CadModelos);
   F_CadModelos.ShowModal;
   F_CadModelos.Free;
end;

procedure TF_Principal.PERCENTUAL1Click(Sender: TObject);
begin
   Application.CreateForm(TF_CadPercentual, F_CadPercentual);
   F_CadPercentual.ShowModal;
   F_CadPercentual.Free;
end;

procedure TF_Principal.AMANHOS1Click(Sender: TObject);
begin
   Application.CreateForm(TF_CadTamanhos, F_CadTamanhos);
   F_CadTamanhos.ShowModal;
   F_CadTamanhos.Free;
end;

procedure TF_Principal.LOGRADOURO1Click(Sender: TObject);
begin
   Application.CreateForm(TF_CadLogradouro, F_CadLogradouro);
   F_CadLogradouro.ShowModal;
   F_CadLogradouro.Free;
end;

procedure TF_Principal.PRODUTOS1Click(Sender: TObject);
begin
   Application.CreateForm(TF_CadProdutos, F_CadProdutos);
   F_CadProdutos.ShowModal;
   F_CadProdutos.Free;
end;

procedure TF_Principal.VENDAS1Click(Sender: TObject);
begin
    Application.CreateForm(TF_CadVendas, F_CadVendas);
   F_CadVendas.ShowModal;
   F_CadVendas.Free;
end;

procedure TF_Principal.lblClienteMouseEnter(Sender: TObject);
begin
pnlCliente.Visible := true;
lblCliente.Font.Color := clSilver;
end;

procedure TF_Principal.Panel3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnlCliente.Visible:=false;
   pnlEndereco.Visible :=false;
end;

procedure TF_Principal.LblEnderecoMouseEnter(Sender: TObject);
begin
   pnlEndereco.Visible := true;
end;

procedure TF_Principal.lblCadCliClick(Sender: TObject);
begin
    Application.CreateForm(TF_CadClientes, F_CadClientes);
    F_CadClientes.ShowModal;
    F_CadClientes.Free;
end;

procedure TF_Principal.lblCadFornClick(Sender: TObject);
begin
   Application.CreateForm(TF_CadFornecedores, F_CadFornecedores);
   F_CadFornecedores.ShowModal;
   F_CadFornecedores.Free;
end;

procedure TF_Principal.Label7Click(Sender: TObject);
begin
   Application.CreateForm(TF_CadBairros, F_CadBairros);
   F_CadBairros.ShowModal;
   F_CadBairros.Free;
end;

procedure TF_Principal.LblListaFornClick(Sender: TObject);
begin
   Application.CreateForm(TF_CadCidades,F_CadCidades);
   F_CadCidades.ShowModal;
   F_CadCidades.Free;
end;

procedure TF_Principal.lblCadEndClick(Sender: TObject);
begin
   Application.CreateForm(TF_CadEnderecos, F_CadEnderecos);
   F_CadEnderecos.ShowModal;
   F_CadEnderecos.Free;
end;

procedure TF_Principal.lblCadCompraClick(Sender: TObject);
begin
   Application.CreateForm(TF_CadCompras, F_CadCompras);
   F_CadCompras.ShowModal;
   F_CadCompras.Free;
end;

procedure TF_Principal.lblClienteMouseLeave(Sender: TObject);
begin
   lblCliente.Font.Color := clWhite
end;

procedure TF_Principal.lblCadCliMouseEnter(Sender: TObject);
begin
   lblCadCli.Font.Color:= clSilver;
end;

procedure TF_Principal.lblCadCliMouseLeave(Sender: TObject);
begin
   lblCadCli.Font.Color:= clWhite;
end;

procedure TF_Principal.lblCadFornMouseEnter(Sender: TObject);
begin
   lblCadForn.Font.Color := clSilver;
end;

procedure TF_Principal.lblCadFornMouseLeave(Sender: TObject);
begin
   lblCadForn.Font.Color := clWhite;
end;

procedure TF_Principal.FormShow(Sender: TObject);
var
   caminhoexe:string;
   i:integer;
begin
  shpMenu.Brush.Color := StringToColor(DadosConfigura.Corum);

  caminhoexe := ExtractFilePath(Application.ExeName);
  DM.conexao.ParamsLoaded:=True;
  DM.conexao.Params.Values['DriverName'] := 'Interbase';
  DM.conexao.Params.Values['Database']  := caminhoexe+'\Banco\LOJA.fdb';
  DM.conexao.Params.Values['User_Name'] := 'SYSDBA';
  DM.conexao.Params.Values['Password']  := 'masterkey';
  DM.conexao.Params.Values['SQLDialect']:= '3';

  for i := 0 to ComponentCount-1 do
  begin
   if (Components[i] is TLabel) then
     TLabel(Components[i]).Color := StringToColor(DadosConfigura.Corum);
     TLabel(Components[i]).Font.Color := StringToColor(DadosConfigura.Cordois);
  end;
  lblLogo.Color := clWhite;
  lblLogo.Font.Color := StringToColor(DadosConfigura.Corum);
  pnlCliente.Color := StringToColor(DadosConfigura.Corum);
  MonthCalendar1.CalColors.TitleBackColor := StringToColor(DadosConfigura.Corum);

  inherited;
end;

procedure TF_Principal.lblCadEndMouseEnter(Sender: TObject);
begin
  inherited;
  lblCadEnd.Font.Color := clSilver;
end;

procedure TF_Principal.lblCadEndMouseLeave(Sender: TObject);
begin
  inherited;
   lblCadEnd.Font.Color := clWhite;
end;

procedure TF_Principal.LblCadCidMouseLeave(Sender: TObject);
begin
  inherited;
  LblCadCid.Font.Color := clWhite;
end;

procedure TF_Principal.LblCadCidMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   LblCadCid.Font.Color := clSilver;
  inherited;

end;

procedure TF_Principal.lblCadProdutoClick(Sender: TObject);
begin
   Application.CreateForm(TF_CadProdutos, F_CadProdutos);
   F_CadProdutos.ShowModal;
   F_CadProdutos.Free;
  inherited;
end;

procedure TF_Principal.lblCadTamanhosClick(Sender: TObject);
begin
   Application.CreateForm(TF_CadTamanhos, F_CadTamanhos);
   F_CadTamanhos.ShowModal;
   F_CadTamanhos.Free;
  inherited;
end;

procedure TF_Principal.lblCadModeloClick(Sender: TObject);
begin
   Application.CreateForm(TF_CadModelos, F_CadModelos);
   F_CadModelos.ShowModal;
   F_CadModelos.Free;
  inherited;

end;

procedure TF_Principal.lblCadMarcasClick(Sender: TObject);
begin
   Application.CreateForm(TF_CadMarcas, F_CadMarcas);
   F_CadMarcas.ShowModal;
   F_CadMarcas.Free;
  inherited;
end;

procedure TF_Principal.lblConfigClick(Sender: TObject);
begin
    Application.CreateForm(TF_Configuracoes, F_Configuracoes);
    F_Configuracoes.ShowModal;
    F_Configuracoes.Free;
  inherited;
end;

end.
