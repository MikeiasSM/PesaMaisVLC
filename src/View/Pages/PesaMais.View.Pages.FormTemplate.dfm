object formTemplate: TformTemplate
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'formTemplate'
  ClientHeight = 780
  ClientWidth = 1037
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRaiz: TPanel
    Left = 0
    Top = 0
    Width = 1037
    Height = 780
    Align = alClient
    BevelOuter = bvNone
    Color = clSilver
    Padding.Left = 15
    Padding.Top = 15
    Padding.Right = 15
    Padding.Bottom = 15
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 990
    ExplicitHeight = 682
    object pnlMain: TPanel
      Left = 15
      Top = 15
      Width = 1007
      Height = 750
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 648
      ExplicitTop = 416
      ExplicitWidth = 185
      ExplicitHeight = 41
      object pnlMenu: TPanel
        Left = 0
        Top = 0
        Width = 1007
        Height = 100
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 20
        Padding.Top = 20
        Padding.Right = 20
        Padding.Bottom = 20
        ParentBackground = False
        TabOrder = 0
        ExplicitTop = -6
        object btnLocalizar: TSpeedButton
          Left = 707
          Top = 20
          Width = 140
          Height = 59
          Align = alRight
          Caption = 'Localizar'
          Flat = True
          ExplicitLeft = 827
          ExplicitHeight = 60
        end
        object btnExcluir: TSpeedButton
          Left = 567
          Top = 20
          Width = 140
          Height = 59
          Align = alRight
          Caption = 'Excluir'
          Flat = True
          ExplicitLeft = 561
          ExplicitTop = 14
        end
        object lblNomeTela: TLabel
          Left = 20
          Top = 20
          Width = 181
          Height = 59
          Align = alLeft
          Caption = 'Label da Tela'
          Layout = tlCenter
          ExplicitHeight = 60
        end
        object btnSair: TSpeedButton
          Left = 847
          Top = 20
          Width = 140
          Height = 59
          Align = alRight
          Caption = 'Sair'
          Flat = True
          ExplicitLeft = 827
          ExplicitHeight = 60
        end
        object btnIncuir: TSpeedButton
          Left = 427
          Top = 20
          Width = 140
          Height = 59
          Align = alRight
          Caption = 'Incluir'
          Flat = True
          ExplicitLeft = 561
          ExplicitTop = 14
        end
        object pnlSeparador: TPanel
          Left = 20
          Top = 79
          Width = 967
          Height = 1
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'pnlSeparador'
          Color = clHighlight
          ParentBackground = False
          TabOrder = 0
          ExplicitTop = 39
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 100
        Width = 1007
        Height = 650
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 20
        Padding.Right = 20
        Padding.Bottom = 20
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 106
        object pnlBotao: TPanel
          Left = 20
          Top = 580
          Width = 967
          Height = 50
          Align = alBottom
          BevelOuter = bvNone
          Padding.Left = 10
          Padding.Top = 10
          Padding.Right = 10
          Padding.Bottom = 10
          ParentBackground = False
          TabOrder = 0
          ExplicitTop = 586
          object btnSalvar: TSpeedButton
            Left = 10
            Top = 10
            Width = 150
            Height = 30
            Align = alLeft
            Caption = 'Salvar'
            Flat = True
          end
          object btnCancelar: TSpeedButton
            Left = 160
            Top = 10
            Width = 150
            Height = 30
            Align = alLeft
            Caption = 'Cancelar'
            Flat = True
            ExplicitLeft = 10
          end
        end
        object pnlPrincipal: TPanel
          Left = 20
          Top = 0
          Width = 967
          Height = 580
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          ExplicitLeft = 440
          ExplicitTop = 256
          ExplicitWidth = 185
          ExplicitHeight = 41
        end
      end
    end
  end
end
