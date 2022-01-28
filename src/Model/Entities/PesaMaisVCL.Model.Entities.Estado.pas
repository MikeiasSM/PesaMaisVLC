unit PesaMaisVCL.Model.Entities.Estado;

interface
type
  TEstado = Class

private
  FId_Estado : Integer;
  FNome      : String;
  Fuf        : String;

  function getId_estado : Integer;
  function getNome      : String;
  function getUf        : String;

  procedure setId_Estado  (const Id_estado : Integer);
  procedure setNome       (const nome : String);
  procedure setUf         (const uf : string);

public
  constructor Create; overload;
  constructor Create(Id_estado : Integer; Nome: String; uf : String); overload; //pode ser sobregarregada

  property id_estado : integer read getId_estado write setId_estado;
  property Nome      : String  read getNome      write setNome;
  property UF        : String  read getUf        write setUf;

end;

implementation

uses
  System.SysUtils;

{ TEstado }

constructor TEstado.Create;
begin

end;

constructor TEstado.Create(Id_estado: Integer; Nome, uf: String);
begin
  FId_Estado := Id_estado;
  FNome      := Nome;
  Fuf        := uf;
end;

function TEstado.getId_estado: Integer;
begin
  Result := FId_Estado;
end;

function TEstado.getNome: String;
begin
  Result := FNome;
end;

function TEstado.getUf: String;
begin
  Result := Fuf;
end;

procedure TEstado.setId_Estado(const Id_estado: Integer);
begin
  FId_Estado := Id_estado;
end;

procedure TEstado.setNome(const nome: String);
begin
  if Nome = '' then
    raise Exception.Create('o nome do estado deve ser informado!');

  FNome := nome;
end;

procedure TEstado.setUf(const uf: string);
begin
  if UF = '' then
    raise Exception.Create('O campo UF deve ser informado!');
  Fuf := uf;
end;

end.
