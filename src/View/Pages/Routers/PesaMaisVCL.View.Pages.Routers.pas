unit PesaMaisVCL.View.Pages.Routers;

interface
type
  TRouter = class
    private
    public
      constructor Create;
      destructor Destroy; override;
  end;

  var
    Routers : TRouter;

implementation

uses
  Router4D,
  PesaMais.View.Pages.Principal,
  PesaMais.View.Pages.Dashboard;

{ TRouter }

constructor TRouter.Create;
begin
  TRouter4D
    .Switch
      .Router('Principal', TFormPrincipal)
      .Router('Dashboard', TFormDashboard);
end;

destructor TRouter.Destroy;
begin

  inherited;
end;

initialization
  Routers := TRouter.Create;

finalization
  Routers.Free;

end.
