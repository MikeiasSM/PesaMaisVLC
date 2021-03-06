program PesaMaisVCL;

uses
  Vcl.Forms,
  PesaMaisVCL.View.Main in 'src\View\PesaMaisVCL.View.Main.pas' {FormMain},
  PesaMaisVCL.View.Styles.FontColors in 'src\View\Styles\PesaMaisVCL.View.Styles.FontColors.pas',
  PesaMais.View.Pages.FormTemplate in 'src\View\Pages\PesaMais.View.Pages.FormTemplate.pas' {formTemplate},
  PesaMaisVCL.Model.Entities.Bairro in 'src\Model\Entities\PesaMaisVCL.Model.Entities.Bairro.pas',
  PesaMaisVCL.Model.Entities.Cidade in 'src\Model\Entities\PesaMaisVCL.Model.Entities.Cidade.pas',
  PesaMaisVCL.Model.Entities.Endereco in 'src\Model\Entities\PesaMaisVCL.Model.Entities.Endereco.pas',
  PesaMaisVCL.Model.Entities.Estado in 'src\Model\Entities\PesaMaisVCL.Model.Entities.Estado.pas',
  PesaMaisVCL.Model.Entities.Propriedade in 'src\Model\Entities\PesaMaisVCL.Model.Entities.Propriedade.pas',
  PesaMais.View.Pages.Dashboard in 'src\View\Pages\PesaMais.View.Pages.Dashboard.pas' {FormDashboard},
  PesaMais.View.Pages.Principal in 'src\View\Pages\PesaMais.View.Pages.Principal.pas' {FormPrincipal},
  PesaMaisVCL.View.Pages.Routers in 'src\View\Pages\Routers\PesaMaisVCL.View.Pages.Routers.pas',
  PesaMaisVCL.Model.Entities.Usuario in 'src\Model\Entities\PesaMaisVCL.Model.Entities.Usuario.pas',
  PesaMais.Model.Conection.Interfaces in 'src\Model\Connection\PesaMais.Model.Conection.Interfaces.pas',
  PesaMais.Model.Conection.FireDac in 'src\Model\Connection\PesaMais.Model.Conection.FireDac.pas',
  PesaMaisVCL.Model.Query.FireDac in 'src\Model\Query\PesaMaisVCL.Model.Query.FireDac.pas',
  PesaMais.Controller.FactoryQuery in 'src\Controller\PesaMais.Controller.FactoryQuery.pas',
  PesaMais.Controller.Interfaces in 'src\Controller\PesaMais.Controller.Interfaces.pas',
  PesaMaisVCL.Model.Entities.Interfaces.iEntities in 'src\Model\Entities\Interfaces\PesaMaisVCL.Model.Entities.Interfaces.iEntities.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
