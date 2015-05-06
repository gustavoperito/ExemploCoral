unit UCadVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, StdCtrls, ExtCtrls, Mask, Buttons, ComCtrls, DBCtrls,
  Grids, DBGrids;

type
  TF_CadVendas = class(TF_CadObjeto)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadVendas: TF_CadVendas;

implementation

uses Udm;

{$R *.dfm}

end.
