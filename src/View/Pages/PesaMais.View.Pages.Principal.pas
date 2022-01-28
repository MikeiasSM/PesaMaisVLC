unit PesaMais.View.Pages.Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Router4D.Interfaces;

type
  TFormPrincipal = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    function Render : TForm;
    procedure UnRender;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  PesaMaisVCL.View.Styles.FontColors;

{$R *.dfm}


{ TFormPrincipal }

function TFormPrincipal.Render: TForm;
begin
  Result := Self;
  Panel1.Color := COLOR_SECUNDARY;
end;

procedure TFormPrincipal.UnRender;
begin

end;

end.
