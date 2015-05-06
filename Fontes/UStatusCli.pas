unit UStatusCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBusClientes, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask,
  StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, ComCtrls;

type
  TF_StatusCli = class(TF_BusCli)
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_StatusCli: TF_StatusCli;

implementation

{$R *.dfm}

procedure TF_StatusCli.DBGrid1DblClick(Sender: TObject);
begin

  If (CdsCliSTATUS_SIS.AsString = 'D') Then
    Begin
      CdsCli.Edit;
      CdsCliSTATUS_SIS.AsString := 'A';
      CdsCli.Post;
      CdsCli.ApplyUpdates(0);
    End
  Else
    Begin
      CdsCli.Edit;
      CdsCliSTATUS_SIS.AsString := 'D';
      CdsCli.Post;
      CdsCli.ApplyUpdates(0);
    End;

end;

end.
