unit PesaMaisVCL.Model.Entities.Interfaces.iEntities;

interface

uses
  Data.DB;


type
    iEntidade = interface
    ['{F3CE94C6-209E-4A41-BACC-2E388D0B5AF1}']
    function Listar(Value : TDataSource) : iEntidade;
  end;

implementation

end.
