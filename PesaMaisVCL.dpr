program PesaMaisVCL;

uses
  Vcl.Forms,
  PesaMaisVCL.View.Main in 'src\View\PesaMaisVCL.View.Main.pas' {Form1},
  PesaMaisVCL.View.Styles.FontColors in 'src\View\Styles\PesaMaisVCL.View.Styles.FontColors.pas',
  PesaMaisVCL.Model.Entities.Pessoa in 'src\Model\Entities\PesaMaisVCL.Model.Entities.Pessoa.pas',
  PesaMais.View.Pages.FormTemplate in 'src\View\Pages\PesaMais.View.Pages.FormTemplate.pas' {Form2},
  PesaMaisVCL.Model.Entities.Bairro in 'src\Model\Entities\PesaMaisVCL.Model.Entities.Bairro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
