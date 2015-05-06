unit UBuscasObjeto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_Modelo, ExtCtrls, ComCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TF_Buscas = class(TF_Modelo)
    PnlTitulo: TPanel;
    StbStatus: TStatusBar;
    PnlDados: TPanel;
    PanFiltro: TPanel;
    DBGrid1: TDBGrid;
    RadioOrdem: TRadioGroup;
    RadioStatus: TRadioGroup;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Buscas: TF_Buscas;

implementation

{$R *.dfm}

procedure TF_Buscas.BitBtn2Click(Sender: TObject);
begin
  inherited;
   Close;
end;

end.
