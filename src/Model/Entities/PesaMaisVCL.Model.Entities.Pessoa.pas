unit PesaMaisVCL.Model.Entities.Pessoa;

interface

type
  TPropriedade = class
    private
      FId_propriedade : Integer;
      FRazsocial_Nome : String;

      function getId_Propriedade : Integer;
      function getRazsocial_Nome : String;
      function getFantasia_Nome : String;
      function getCpf_Cnpj : String;

      procedure setId_Propriedade(Value : Integer);
      procedure setRazsocial_nome(Value : String);

    public
      constructor Create; overload;
      constructor Create(Propriedade : TPropriedade); overload;

      property id_propriedade : Integer read getId_Propriedade write setId_Propriedade;
      property razsocial_nome : String read getRazsocial_Nome write setRazsocial_Nome;
      property fantasia_nome : String read getFantasia_Nome write setFantasia_Nome;
      property cpf_cnpj : String read getCpf_Cnpj write setCpf_Cnpj;
      property rg_inscr : String read getRg_Inscr write setRg_Inscr;
      property fone : String read getFone write setFone;
      property email : String read getEmail write setEmail;
  end;

implementation

{ TPessoa }

//GET & SET
constructor TPropriedade.Create(Propriedade: TPropriedade);
begin
  id_propriedade := Propriedade.getId_Propriedade;
  razsocial_nome := Propriedade.getRazsocial_nome;

end;

constructor TPropriedade.Create;
begin

end;

function TPropriedade.getId_Propriedade: Integer;
begin
  Result := FId_Propriedade;
end;

function TPropriedade.getRazsocial_nome: String;
begin
  Result := FRazsocial_Nome;
end;

procedure TPropriedade.setId_Propriedade(Value : Integer);
begin
  FId_propriedade := Value;
end;

procedure TPropriedade.setRazsocial_nome(Value: String);
begin
  FRazsocial_Nome := Value;
end;

end.
