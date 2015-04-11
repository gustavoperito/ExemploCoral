unit UCadItensVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadObjeto, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls, Grids,
  DBGrids, DBCtrls;

type
  TFrmCadItensVendas = class(TFrmCadObjeto)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBGridItensVendas: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadItensVendas: TFrmCadItensVendas;

implementation

uses Udm;

{$R *.dfm}

end.
