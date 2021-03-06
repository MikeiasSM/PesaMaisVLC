unit PesaMaisVCL.Model.Entities.Usuario;

interface

uses
  PesaMais.Model.Conection.Interfaces,
  PesaMaisVCL.Model.Entities.Interfaces.iEntities, Data.DB;
Type
  TUsuario = Class(TInterfacedObject, iEntidade)

Private
  FQuery      : iQuery;
  FId_Usuario : Integer;
  FNome       : String;
  FSenha      : String;

  function getId_Usuario : Integer;
  function getNome       : String;
  function getSenha      : String;

  procedure setId_Usuario (const Id_Usuario : Integer);
  procedure setNome       (const Nome       : String);
  procedure setSenha      (const Senha      : String);

Public
  constructor Create; overload;
  constructor Create(Id_Usuario : Integer; Nome: String; Senha : String); overload;
  destructor Destroy; override;

  property Id_Usuario : Integer read getId_Usuario write setId_Usuario;
  property Nome       : String  read getNome       write setNome;
  property Senha      : String  read getSenha      write setSenha;
  class function New : iEntidade;
  function Listar(Value : TDataSource) : iEntidade;

end;

 implementation

uses
  System.SysUtils, PesaMais.Controller.FactoryQuery;


{ TUsuario }

constructor TUsuario.Create;
begin
  FQuery := TControllerFactoryQuery.New.Query(nil);
end;

constructor TUsuario.Create(Id_Usuario: Integer; Nome, Senha: String);
begin
  FId_Usuario := Id_Usuario;
  FNome       := Nome;
  FSenha      := Senha;
end;

destructor TUsuario.Destroy;
begin

  inherited;
end;

function TUsuario.getId_Usuario: Integer;
begin
  Result := FId_Usuario;
end;

function TUsuario.getNome: String;
begin
  Result := FNome;
end;

function TUsuario.getSenha: String;
begin
  Result := FSenha;
end;

function TUsuario.Listar(Value: TDataSource): iEntidade;
begin
  Result := Self;
  FQuery.SQL('SELECT * FROM USUARIO');
  Value.DataSet := FQuery.DataSet;
end;

class function TUsuario.New: iEntidade;
begin
  Result := Self.Create;
end;

procedure TUsuario.setId_Usuario(const Id_Usuario: Integer);
begin
  FId_Usuario := Id_Usuario;
end;

procedure TUsuario.setNome(const Nome: String);
begin
  if Nome = '' then
    raise Exception.Create('O Nome n?o pode estar vazio!');
  FNome := Nome;
end;

procedure TUsuario.setSenha(const Senha: String);
begin
  if Senha = '' then
    raise Exception.Create('O Senha n?o pode estar vazio!');
  FSenha := Senha;
end;

end.
