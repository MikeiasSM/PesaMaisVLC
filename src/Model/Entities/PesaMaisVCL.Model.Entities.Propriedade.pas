unit PesaMaisVCL.Model.Entities.Propriedade;

interface

type
  TPropriedade = class
    private
      FId_propriedade   : Integer;
      FRazsocial_Nome   : String;
      FFantasia_Apelido : String;
      FCpf_Cnpj         : String;
      FRg_Inscr         : String;
      FFone             : String;
      FEmail            : String;
      FLogradouro       : String;
      FComplemento      : String;
      FNumero           : String;
      FId_Bairro        : Integer;
      FId_Cidade        : Integer;
      FId_Estado        : Integer;
      FId_Endereco      : Integer;

      function getId_Propriedade : Integer;
      function getRazsocial_Nome : String;
      function getFantasia_Nome  : String;
      function getCpf_Cnpj       : String;
      function getRg_Inscr       : String;
      function getFone           : String;
      function getEmail          : String;
      function getLogradouro     : String;
      function getComplemento    : String;
      function getNumero         : String;
      function getId_Bairro      : Integer;
      function getId_Cidade      : Integer;
      function getId_Estado      : Integer;
      function getId_Endereco    : Integer;

      procedure setId_Propriedade(const Id_Propriedade : Integer);
      procedure setRazsocial_Nome(const Razsocial_Nome : String);
      procedure setFantasia_Nome (const Fantasia_Nome: String);
      procedure setRg_Inscr      (const Rg_Inscr: String);
      procedure setCpf_Cnpj      (const Cpf_Cnpj : String);
      procedure setFone          (const Fone: String);
      procedure setEmail         (const Email: String);
      procedure setLogradouro    (const Logradouro : String);
      procedure setComplemento   (const Complemento : String);
      procedure setNumero        (const Numero : String);
      procedure setId_Bairro     (const Id_Bairro : Integer);
      procedure setId_Cidade     (const Id_Cidade : Integer);
      procedure setId_Estado     (const Id_Estado : Integer);
      procedure setId_Endereco   (const Id_Endereco : Integer);

    public
      constructor Create; overload;
      constructor Create(Id_Propriedade : Integer;
                         Razsocial_Nome : String;
                         Fantasia_Nome : String;
                         Cpf_Cnpj : String;
                         Rg_Inscr : String;
                         Fone : String;
                         Email : String;
                         Logradouro : String;
                         Complemento : String;
                         Numero : String;
                         Id_Bairro  : Integer;
                         Id_Cidade  : Integer;
                         Id_Estado : Integer;
                         Id_Endereco : Integer
                         ); overload;
      destructor Destroy; override;

      property id_propriedade : Integer read getId_Propriedade write setId_Propriedade;
      property razsocial_nome : String  read getRazsocial_Nome write setRazsocial_Nome;
      property fantasia_nome  : String  read getFantasia_Nome  write setFantasia_Nome;
      property cpf_cnpj       : String  read getCpf_Cnpj       write setCpf_Cnpj;
      property rg_inscr       : String  read getRg_Inscr       write setRg_Inscr;
      property fone           : String  read getFone           write setFone;
      property email          : String  read getEmail          write setEmail;
      property logradouro     : String  read getLogradouro     write setLogradouro;
      property complemento    : String  read getComplemento    write setComplemento;
      property numero         : String  read getNumero         write setNumero;
      property id_Bairro      : Integer read getId_Bairro      write setId_Bairro;
      property id_cidade      : Integer read getId_Cidade      write setId_Cidade;
      property id_estado      : Integer read getId_Estado      write setId_Estado;
      property id_endereco    : Integer read getId_Endereco    write setId_endereco;

  end;

implementation

uses
  System.SysUtils;

{ TPropriedade }

constructor TPropriedade.Create;
begin

end;

constructor TPropriedade.Create(Id_Propriedade : Integer; Razsocial_Nome : String; Fantasia_Nome : String; Cpf_Cnpj : String; Rg_Inscr : String;
                                Fone : String; Email : String; Logradouro : String; Complemento : String; Numero : String; Id_Bairro  : Integer;
                                Id_Cidade  : Integer; Id_Estado : Integer; Id_Endereco : Integer);
begin
  FId_propriedade := Id_Propriedade;
  FRazsocial_Nome := Razsocial_Nome;
  FFantasia_Apelido := Fantasia_Nome;
  FCpf_Cnpj := Cpf_Cnpj;
  FRg_Inscr := Rg_Inscr;
  FFone := Fone;
  FEmail := Email;
  FLogradouro := Logradouro;
  FComplemento := Complemento;
  FNumero := Numero;
  FId_Bairro := Id_Bairro;
  FId_Cidade := Id_Cidade;
  FId_Estado := Id_Estado;
  FId_Endereco := Id_Endereco;

end;

destructor TPropriedade.Destroy;
begin

  inherited;
end;

function TPropriedade.getComplemento: String;
begin
  Result := FComplemento;
end;

function TPropriedade.getCpf_Cnpj: String;
begin
  Result := FCpf_Cnpj;
end;

function TPropriedade.getEmail: String;
begin
  Result := FEmail;
end;

function TPropriedade.getFantasia_Nome: String;
begin
  Result := FFantasia_Apelido;
end;

function TPropriedade.getFone: String;
begin
  Result := FFone;
end;

function TPropriedade.getId_Bairro: Integer;
begin
  Result := FId_Bairro;
end;

function TPropriedade.getId_Cidade: Integer;
begin
  Result := FId_Cidade;
end;

function TPropriedade.getId_Endereco: Integer;
begin
  Result := FId_Endereco;
end;

function TPropriedade.getId_Estado: Integer;
begin
  Result := FId_Estado;
end;

function TPropriedade.getId_Propriedade: Integer;
begin
  Result := FId_propriedade;
end;

function TPropriedade.getLogradouro: String;
begin
  Result := FLogradouro;
end;

function TPropriedade.getNumero: String;
begin
  Result := FNumero;
end;

function TPropriedade.getRazsocial_Nome: String;
begin
  Result := FRazsocial_Nome;
end;

function TPropriedade.getRg_Inscr: String;
begin
  Result := FRg_Inscr;
end;

procedure TPropriedade.setComplemento(const Complemento: String);
begin
  FComplemento := Complemento;
end;

procedure TPropriedade.setCpf_Cnpj(const Cpf_Cnpj: String);
begin
  FCpf_Cnpj := Cpf_Cnpj;
end;

procedure TPropriedade.setEmail(const Email: String);
begin
  FEmail := Email;
end;

procedure TPropriedade.setFantasia_Nome(const Fantasia_Nome: String);
begin
  FFantasia_Apelido := Fantasia_Nome;
end;

procedure TPropriedade.setFone(const Fone: String);
begin
  FFone := Fone;
end;

procedure TPropriedade.setId_Bairro(const Id_Bairro: Integer);
begin
  FId_Bairro := Id_Bairro;
end;

procedure TPropriedade.setId_Cidade(const Id_Cidade: Integer);
begin
  FId_Cidade := Id_Cidade;
end;

procedure TPropriedade.setId_Endereco(const Id_Endereco: Integer);
begin
  FId_Endereco := Id_Endereco;
end;

procedure TPropriedade.setId_Estado(const Id_Estado: Integer);
begin
  FId_Estado := Id_Estado;
end;

procedure TPropriedade.setId_Propriedade(const Id_Propriedade: Integer);
begin
  FId_propriedade := Id_Propriedade;
end;

procedure TPropriedade.setLogradouro(const Logradouro: String);
begin
  FLogradouro := Logradouro;
end;

procedure TPropriedade.setNumero(const Numero: String);
begin
  FNumero := Numero;
end;

procedure TPropriedade.setRazsocial_Nome(const Razsocial_Nome: String);
begin
  if Complemento = '' then
    raise Exception.Create('O Complemento n?o pode ser vazio!');
  FComplemento := Complemento;
end;

procedure TPropriedade.setRg_Inscr(const Rg_Inscr: String);
begin
  FRg_Inscr := Rg_Inscr;
end;

end.
