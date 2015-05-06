unit UStatusCid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBusCidade, FMTBcd, SqlExpr, DB, DBClient, Provider, StdCtrls,
  Buttons, ExtCtrls, Grids, DBGrids, ComCtrls;

type
  TF_StatusCid = class(TF_BusCid)
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_StatusCid: TF_StatusCid;

implementation

{$R *.dfm}

procedure TF_StatusCid.DBGrid1DblClick(Sender: TObject);
begin
   If (CDSCIDSTATUS_SIS.AsString = 'D') Then
    Begin
      CDSCID.Edit;
      CDSCIDSTATUS_SIS.AsString := 'A';
      CDSCID.Post;
      CDSCID.ApplyUpdates(0);
    End
  Else
    Begin
      CDSCID.Edit;
      CDSCIDSTATUS_SIS.AsString := 'D';
      CDSCID.Post;
      CDSCID.ApplyUpdates(0);
    End;

end;

end.
