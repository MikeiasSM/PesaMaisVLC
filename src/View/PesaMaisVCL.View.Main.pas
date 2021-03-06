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
  Vcl.ComCtrls,
  Vcl.Imaging.pngimage,
  PesaMais.View.Pages.Principal,
  Vcl.Imaging.jpeg,
  Vcl.StdCtrls,
  System.ImageList,
  Vcl.ImgList;

type
  TFormMain = class(TForm)
    pnlMain: TPanel;
    pnlRodape: TPanel;
    Panel3: TPanel;
    pnlMenu: TPanel;
    Panel4: TPanel;
    pnlEmpresa: TPanel;
    stbMain : TStatusBar;
    pnlPrincipal: TPanel;
    ImgLogo: TImage;
    btnRelatorio: TPanel;
    btnLancamento: TPanel;
    btnCadastro: TPanel;
    btnHome: TPanel;
    btnConfiguracao: TPanel;
    btnMenu: TPanel;
    pnlSeparadorMenu: TPanel;
    pnlDadosPropriedade: TPanel;
    lblPropriedade: TLabel;
    lblCnpj: TLabel;
    ImageList1: TImageList;
    Image1: TImage;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFinalizarClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnHomeClick(Sender: TObject);
  private
    { Private declarations }

    procedure setStyles;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation


{$R *.dfm}

uses
  PesaMaisVCL.Model.Entities.Bairro, Router4D;

{ FormMain }

//Finaliza aplica??o
procedure TFormMain.btnFinalizarClick(Sender: TObject);
begin
    Close;
end;

procedure TFormMain.btnHomeClick(Sender: TObject);
begin
  TRouter4D.Link.&To('Dashboard');
end;

procedure TFormMain.btnRelatorioClick(Sender: TObject);
Var
  Bairro : TBairro;
begin
    Bairro := TBairro.Create;
    Bairro.Id_Bairro := 1;
    ShowMessage('Meu Bairro: ' + IntToStr(Bairro.Id_Bairro)  + ' ' + Bairro.Descricao + ' ' +IntToStr(bairro.Id_Bairro));
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if MessageDlg('Tem certeza que deseja finalizar o Pesa+ ERP?', mtwarning, [mbyes, mbno],0) <> mryes then
      Action  :=  caNone;
      Exit;

end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
    setStyles;
    TRouter4D.Render<TFormPrincipal>.SetElement(pnlPrincipal, pnlMain);
end;

procedure TFormMain.setStyles;
begin
    pnlMenu.Color       := COLOR_MENU;
    pnlEmpresa.Color    := COLOR_MENU;
    pnlDadosPropriedade.Color := COLOR_MENU;
    pnlPrincipal.Color  := COLOR_SECUNDARY;

    lblPropriedade.Font.Color := COLOR_TEXT_PRIMARY;
    lblPropriedade.Font.Name  := FONT_NAME1;
    lblPropriedade.FOnt.Size  := FONT_H6;

    lblCnpj.Font.Color := COLOR_TEXT_PRIMARY;
    lblCnpj.Font.Name  := FONT_NAME1;
    lblCnpj.FOnt.Size  := FONT_H6;

        //BUTTON MENU
    btnMenu.Color      := COLOR_MENU;
    btnMenu.Font.Color := COLOR_TEXT_PRIMARY;
    btnMenu.Font.Name  := FONT_NAME1;
    btnMenu.FOnt.Size  := FONT_H6;


        //BUTTON HOME aaf
    btnHome.Color      := COLOR_MENU;
    btnHome.Font.Color := COLOR_TEXT_PRIMARY;
    btnHome.Font.Name  := FONT_NAME1;
    btnHome.FOnt.Size  := FONT_H6;

        //BUTTON CADASTROS
    btnCadastro.Color      := COLOR_MENU;
    btnCadastro.Font.Color := COLOR_TEXT_PRIMARY;
    btnCadastro.Font.Name  := FONT_NAME1;
    btnCadastro.Font.Size  := FONT_H6;

        //BUTTON LANCAMENTOS
    btnLancamento.Color      := COLOR_MENU;
    btnLancamento.Font.Color := COLOR_TEXT_PRIMARY;
    btnLancamento.Font.Name  := FONT_NAME1;
    btnLancamento.FOnt.Size  := FONT_H6;

        //BUTTON RELATORIOS
    btnRelatorio.Color      := COLOR_MENU;
    btnRelatorio.Font.Color := COLOR_TEXT_PRIMARY;
    btnRelatorio.Font.Name  := FONT_NAME1;
    btnRelatorio.Font.Size  := FONT_H6;

        //BUTTON CONFIGURA??ES
    btnConfiguracao.Color      := COLOR_MENU;
    btnConfiguracao.Font.Color := COLOR_TEXT_PRIMARY;
    btnConfiguracao.Font.Name  := FONT_NAME1;
    btnConfiguracao.Font.Size  := FONT_H6;

    //ImgLogo.Canvas.Ar

        //BUTTON FINALIZAR
    //btnFinalizar.Font.Color := COLOR_TEXT_PRIMARY;
    //btnFinalizar.Font.Name  := FONT_NAME1;
    //btnFinalizar.Font.Size  := FONT_H6;
end;

end.
