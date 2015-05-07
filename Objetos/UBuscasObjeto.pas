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
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TF_Buscas.FormShow(Sender: TObject);
var
   i:integer;
begin
  PnlTitulo.Color := StringToColor(DadosConfigura.Corum);
  PnlTitulo.Font.Color := StringToColor(DadosConfigura.Cordois);

  inherited;
end;

procedure TF_Buscas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with DBGrid1 do
  begin
    if Odd( DataSource.DataSet.RecNo) then
      Canvas.Brush.Color := $00EFEFEF
    else
      Canvas.Brush.Color := $00D2D2D2;

    if (gdSelected in State) then
    begin
        Canvas.Brush.Color := clGray;
        Canvas.Font.Color := clBlack;
    end
      else
      begin
        Canvas.Font.Style := [fsBold];
        Canvas.Font.Color := clBlack;
      end;
 
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  inherited;
end;

end.
