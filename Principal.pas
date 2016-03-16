unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.FMTBcd,
  Datasnap.Provider, Data.DB, Data.SqlExpr, Vcl.ExtCtrls, Vcl.Mask;

type
  TFormPrincipal = class(TForm)
    Button2: TButton;
    Button4: TButton;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses
  FactoryView, EnumEntity;

procedure TFormPrincipal.Button1Click(Sender: TObject);
begin
  TFactoryForm.GetForm( tpFabricante );
end;

procedure TFormPrincipal.Button2Click(Sender: TObject);
begin
  TFactoryForm.GetForm( tpCliente );
end;

procedure TFormPrincipal.Button4Click(Sender: TObject);
begin
  TFactoryForm.GetForm( tpFornecedor );
end;

end.

