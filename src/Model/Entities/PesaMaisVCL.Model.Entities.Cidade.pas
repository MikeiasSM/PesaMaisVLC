unit PesaMaisVCL.Model.Entities.Cidade;

interface
type
  TCidade = Class

private
  FId_cidade   : Integer;
  FNome        : String;
  FCep         : String;
  FCodmun_ibge : String;
  FId_Estado   : Integer;

  function getId_cidade   : Integer;
  function getNome        : String;
  function getCep         : String;
  function getCodmun_ibge : String;
  Function getId_Estado   : integer;

  procedure setId_cidade  (const Id_cidade : Integer);
  procedure setNome       (const Nome : String);
  procedure setCep        (const Cep : String);
  procedure setCodmun_ibge(const Codmun_ibge : String);
  procedure setId_Estado  (const Id_estado : Integer);

public
  constructor Create; overload;
  constructor Create(Id_Cidade : Integer; Nome: String; Cep : String; Codmun_ibge : String; Id_Estado : Integer); overload; //pode ser sobregarregada
  destructor Destroy; override;

  property Id_cidade   : Integer read getId_cidade   write setId_cidade;
  property Nome        : String  read getNome        write setNome;
  property Cep         : String  read getCep         write setCep;
  property Codmun_Ibge : String  read getCodmun_ibge write setCodmun_ibge;

end;

implementation

uses
  System.SysUtils;

{ TCidade }

constructor TCidade.Create;
begin

end;

constructor TCidade.Create(Id_Cidade: Integer; Nome, Cep, Codmun_ibge: String; Id_Estado: Integer);
begin
   FId_cidade   := Id_Cidade;
   FNome        := Nome;
   FCep         := Cep;
   FCodmun_ibge := Codmun_ibge;
   FId_Estado   := Id_Estado;
end;

destructor TCidade.Destroy;
begin

  inherited;
end;

function TCidade.getCep: String;
begin
   Result := FCep;
end;

function TCidade.getCodmun_ibge: String;
begin
   Result := FCodmun_ibge;
end;

function TCidade.getId_cidade: Integer;
begin
  Result := FId_cidade;
end;

function TCidade.getId_Estado: integer;
begin
  Result := FId_Estado;
end;

function TCidade.getNome: String;
begin
  Result := FNome;
end;

procedure TCidade.setCep(const Cep: String);
begin
  FCep := Cep;
end;

procedure TCidade.setCodmun_ibge(const Codmun_ibge: String);
begin
  FCodmun_ibge := Codmun_ibge;
end;

procedure TCidade.setId_cidade(const Id_cidade: Integer);
begin
   FId_cidade := Id_cidade;
end;

procedure TCidade.setId_Estado(const Id_estado: Integer);
begin
   FId_Estado := FId_Estado;
end;

procedure TCidade.setNome(const Nome: String);
begin
  if Nome = '' then
  raise Exception.Create('O campo nome cidade deve ser informado!');


  FNome := Nome;
end;

end.
