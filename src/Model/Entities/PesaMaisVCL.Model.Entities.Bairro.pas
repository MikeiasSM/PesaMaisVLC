unit PesaMaisVCL.Model.Entities.Bairro;

interface
Type
  TBairro = Class

Private
  FId_Bairro : Integer;
  FDescricao : String;
  FId_Cidade : Integer;

  function getId_bairro : Integer;
  function getDescricao : String;
  function getId_Cidade : Integer;

  procedure setId_bairro (const id_bairro : Integer);
  procedure setDescricao (const Descricao : String);
  procedure setId_Cidade (const Id_Cidade : Integer);

Public
  constructor Create; overload;
  constructor Create(Id_bairro : Integer; Descicao: String; Id_Cidade : Integer); overload; //pode ser sobregarregada
  destructor Destroy; override;

  property Id_Bairro : Integer read getId_bairro write setid_bairro;
  property Descricao : String  read getDescricao write setDescricao;
  property Id_Cidade : Integer read getId_Bairro write setId_bairro;

end;

 implementation

uses
  System.SysUtils;


{ TPessoa }

constructor TBairro.Create;
begin

end;

constructor TBairro.Create(Id_bairro: Integer; Descicao: String; Id_Cidade: Integer);
begin
   FId_Bairro := Id_bairro;
   FDescricao := Descicao;
   FId_Cidade := Id_Cidade;
end;

destructor TBairro.Destroy;
begin

  inherited;
end;

function TBairro.getDescricao: String;
begin
   Result := FDescricao;
end;

function TBairro.getId_bairro: Integer;
begin
   Result := FId_Bairro;
end;

function TBairro.getId_Cidade: Integer;
begin
  Result := FId_Cidade;
end;

procedure TBairro.setId_Cidade(const Id_cidade: Integer);
begin
   FId_Cidade := Id_Cidade;
end;

procedure TBairro.setDescricao(const Descricao: String);
begin
   if Descricao = '' then
    raise Exception.Create('O campo descrição bairro deve ser informado!');
   FDescricao := Descricao;
end;

procedure TBairro.setId_bairro(const Id_Bairro: Integer);
begin
   FId_Bairro := Id_bairro;
end;

//modificado

end.
