unit PesaMais.Controller.FactoryQuery;

interface

uses
  PesaMais.Controller.Interfaces, PesaMais.Model.Conection.Interfaces;

Type
  TControllerFactoryQuery = Class(TInterfacedObject, iFactoryQuery)

Private
Public
  constructor Create;
  destructor Destroy; override;
  class function New : iFactoryQuery;
  function Query(Connection : iConexao) : iQuery;
end;

 implementation

uses
  PesaMaisVCL.Model.Query.FireDac;


{ TConexaoFiredac }

constructor TControllerFactoryQuery.Create;
begin

end;

destructor TControllerFactoryQuery.Destroy;
begin

  inherited;
end;

class function TControllerFactoryQuery.New;
begin
  Result := Self.Create;
end;

function TControllerFactoryQuery.Query(Connection : iConexao): iQuery;
begin
  Result :=  TModelQueryFiredac.New(Connection);
end;

end.
