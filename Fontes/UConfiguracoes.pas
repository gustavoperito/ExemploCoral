unit UConfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Inifiles;

type
  TF_Configuracoes = class(TForm)
    Label1: TLabel;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    Label2: TLabel;
    btnSalvar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Configuracoes: TF_Configuracoes;

implementation

uses U_Modelo, Uprincipal;

{$R *.dfm}

end.
