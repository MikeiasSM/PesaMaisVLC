unit PesaMais.View.Pages.Dashboard;

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
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  PesaMaisVCL.Model.Entities.Interfaces.iEntities,
  Router4D.Interfaces;

type
  TFormDashboard = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FUsuario : iEntidade;
    function Render : TForm;
    procedure UnRender;
  public
    { Public declarations }
  end;

var
  FormDashboard: TFormDashboard;

implementation

uses
  PesaMaisVCL.Model.Entities.Usuario;

{$R *.dfm}

procedure TFormDashboard.Button1Click(Sender: TObject);
begin
  //FUsuario.Listar(DataSource1);
end;

procedure TFormDashboard.FormCreate(Sender: TObject);
begin
  FUsuario := TUsuario.New;
end;

function TFormDashboard.Render: TForm;
begin
Result := Self;
end;

procedure TFormDashboard.UnRender;
begin

end;

end.
