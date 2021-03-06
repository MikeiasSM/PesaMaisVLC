unit PesaMais.View.Pages.FormTemplate;

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
  Vcl.Buttons;

type
  TformTemplate = class(TForm)
    pnlRaiz: TPanel;
    pnlMain: TPanel;
    pnlMenu: TPanel;
    lblNomeTela: TLabel;
    btnSair: TSpeedButton;
    btnLocalizar: TSpeedButton;
    btnExcluir: TSpeedButton;
    pnlSeparador: TPanel;
    Panel5: TPanel;
    pnlBotao: TPanel;
    pnlPrincipal: TPanel;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnIncuir: TSpeedButton;
  private
    { Private declarations }

    procedure setStyles;
  public
    { Public declarations }
  end;

var
  formTemplate: TformTemplate;

implementation

uses
  PesaMaisVCL.View.Styles.FontColors;

{$R *.dfm}

procedure TformTemplate.setStyles;
begin
  pnlMain.Color := COLOR_PRIMARY;
end;

end.
