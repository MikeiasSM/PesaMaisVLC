unit PesaMaisVCL.View.Main;

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
  Vcl.ExtCtrls,
  PesaMaisVCL.View.Styles.FontColors,
  Vcl.Buttons,
  Vcl.ComCtrls, Vcl.Imaging.pngimage;

type
  TFrmMain = class(TForm)
    pnlMain: TPanel;
    pnlRodape: TPanel;
    Panel3: TPanel;
    pnlMenu: TPanel;
    Panel4: TPanel;
    pnlEmpresa: TPanel;
    stbMain : TStatusBar;
    pnlPrincipal: TPanel;
    btnHome : TSpeedButton;
    btnCadastros : TSpeedButton;
    btnLancamento : TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    btnFinalizar: TSpeedButton;
    btnRelatorio: TSpeedButton;
    Image1: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFinalizarClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    { Private declarations }

    procedure setStyles;
  public
    { Public declarations }
  end;

var
  Form1: TFrmMain;

implementation


{$R *.dfm}

uses PesaMaisVCL.Model.Entities.Bairro;

{ TForm1 }

//Finaliza aplicação
procedure TFrmMain.btnFinalizarClick(Sender: TObject);
begin
    Close;
end;

procedure TFrmMain.btnRelatorioClick(Sender: TObject);
Var
  Bairro : TBairro;
begin
    Bairro := TBairro.Create;
    Bairro.Id_Bairro := 1;
    ShowMessage('Meu Bairro: ' + IntToStr(Bairro.Id_Bairro)  + ' ' + Bairro.Descricao + ' ' +IntToStr(bairro.Id_Bairro));
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if MessageDlg('Tem certeza que deseja finalizar o Pesa + ERP?', mtwarning, [mbyes, mbno],0) <> mryes then
    Action  :=  caNone;
    Exit;

end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
    setStyles;
    Form1.Position  :=  poDesktopCenter;
end;

procedure TFrmMain.setStyles;
begin
    pnlMenu.Color       := COLOR_PRIMARY;
    pnlEmpresa.Color    := COLOR_PRIMARY;
    pnlPrincipal.Color  := COLOR_SECUNDARY;

        //BUTTON HOME
    btnHome.Font.Color  := COLOR_TEXT_PRIMARY_MENU;
    btnHome.Font.Name   := FONT_NAME1;
    btnHome.FOnt.Size   := FONT_H6;

        //BUTTON CADASTROS
    btnCadastros.Font.Color   := COLOR_TEXT_PRIMARY_MENU;
    btnCadastros.Font.Name    := FONT_NAME1;
    btnCadastros.FOnt.Size    := FONT_H6;

        //BUTTON LANCAMENTOS
    btnLancamento.Font.Color  := COLOR_TEXT_PRIMARY_MENU;
    btnLancamento.Font.Name   := FONT_NAME1;
    btnLancamento.FOnt.Size   := FONT_H6;

        //BUTTON RELATORIOS
    btnRelatorio.Font.Color   := COLOR_TEXT_PRIMARY_MENU;
    btnRelatorio.Font.Name    := FONT_NAME1;
    btnRelatorio.Font.Size    := FONT_H6;

        //BUTTON CONFIGURAÇÕES
    btnConfiguracoes.Font.Color := COLOR_TEXT_PRIMARY_MENU;
    btnConfiguracoes.Font.Name  := FONT_NAME1;
    btnConfiguracoes.Font.Size  := FONT_H6;

        //BUTTON CONFIGURAÇÕES
    btnFinalizar.Font.Color := COLOR_TEXT_PRIMARY_MENU;
    btnFinalizar.Font.Name  := FONT_NAME1;
    btnFinalizar.Font.Size  := FONT_H6;
end;

end.
