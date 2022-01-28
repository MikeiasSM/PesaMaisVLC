unit PesaMaisVCL.Model.Entities.Endereco;

{
  @Rodrigo
  @Miqueias
}

interface
type
  TEndereco = Class

  private
    //Atributos Privados
    FId_Endereco   : Integer;
    FIdentificacao : String;
    FLogradouro    : String;
    FNumero        : String;
    FCep           : String;
    FComplemento   : String;
    FId_Bairro     : Integer;
    FId_Cidade     : Integer;
    FId_estado     : Integer;
    //Funções GET para acesso á atributos privados
    function getId_endereco     : Integer;
    function getIdentificacao   : String;
    function getLogradouro      : String;
    function getNumero          : String;
    function getCep             : String;
    function getComplemento     : String;
    function getId_Bairro       : Integer;
    function getId_cidade       : Integer;
    function getId_estado       : Integer;
    //Funções SET para alteração dos atributos privados
    procedure setId_endereco      (const Id_endereco : Integer);
    procedure setIdentificacao    (const Identificao : String);
    procedure setLograduro        (const Logradouro  : String);
    procedure setNumero           (const Numero      : String);
    procedure setCep              (const Cep         : String);
    procedure setComplemento      (const Complemento : String);
    procedure setId_Bairro        (const Id_Bairro   : Integer);
    procedure setId_Cidade        (const Id_Cidade   : Integer);
    procedure setId_Estado        (const Id_Estado   : Integer);

  public
    //Construtor vazio
    constructor Create; Overload;
    //Construtor completo do objeto
    constructor Create(Id_endereco : Integer; Identificacao : String; Logradouro : String; Numero : String;
                       Cep : String; Complemento : String; Id_Bairro : Integer; Id_Cidade : Integer; Id_estado : Integer); Overload;
    destructor Destroy; override;

    //Propertys de atributos privados
    property id_endereco   : Integer read getId_Endereco   write setId_Endereco;
    property identificacao : String  read getIdentificacao write setIdentificacao;
    property logradouro    : String  read getLogradouro    write setLograduro;
    property numero        : String  read getNumero        write setNumero;
    property cep           : String  read getCep           write setCep;
    property complemento   : String  read getComplemento   write setComplemento;
    property id_bairro     : Integer read getId_Bairro     write setId_Bairro;
    property id_cidade     : Integer read getId_Cidade     write setId_Cidade;
    property id_estado     : Integer read getId_Estado     write setId_Estado;

end;

implementation

{ TEndereco }

constructor TEndereco.Create;
begin

end;

constructor TEndereco.Create(Id_endereco: Integer; Identificacao, Logradouro,
                             Numero, Cep, Complemento: String; Id_Bairro, Id_Cidade, Id_estado: Integer);
begin
  FId_Endereco := Id_endereco;
end;

destructor TEndereco.Destroy;
begin

  inherited;
end;

function TEndereco.getCep: String;
begin
  Result := FCep;
end;

function TEndereco.getComplemento: String;
begin
  Result := FComplemento;
end;

function TEndereco.getIdentificacao: String;
begin
  Result := FIdentificacao;
end;

function TEndereco.getId_Bairro: Integer;
begin
  Result := FId_Bairro;
end;

function TEndereco.getId_cidade: Integer;
begin
  Result := FId_Cidade;
end;

function TEndereco.getId_endereco: Integer;
begin
  Result := FId_Endereco;
end;

function TEndereco.getId_estado: Integer;
begin
  Result := FId_Estado;
end;

function TEndereco.getLogradouro: String;
begin
  Result := FLogradouro;
end;

function TEndereco.getNumero: String;
begin
  Result := FNumero;
end;

procedure TEndereco.setCep(const Cep: String);
begin
  FCep := Cep;
end;

procedure TEndereco.setComplemento(const Complemento: String);
begin
  FComplemento := Complemento;
end;

procedure TEndereco.setIdentificacao(const Identificao: String);
begin
  FIdentificacao := Identificao;
end;

procedure TEndereco.setId_Bairro(const Id_Bairro: Integer);
begin
  FId_Bairro := Id_Bairro;
end;

procedure TEndereco.setId_Cidade(const Id_Cidade: Integer);
begin
  FId_Cidade := Id_Cidade;
end;

procedure TEndereco.setId_endereco(const Id_endereco: Integer);
begin
  FId_Endereco := Id_endereco;
end;

procedure TEndereco.setId_Estado(const Id_Estado: Integer);
begin
  FId_estado := Id_Estado;
end;

procedure TEndereco.setLograduro(const Logradouro: String);
begin
  FLogradouro := Logradouro;
end;

procedure TEndereco.setNumero(const Numero: String);
begin
  FNumero := Numero;
end;

end.
