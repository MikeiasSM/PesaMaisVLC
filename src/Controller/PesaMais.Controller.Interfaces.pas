unit PesaMais.Controller.Interfaces;

interface

uses
  PesaMais.Model.Conection.Interfaces;


type
  iFactoryQuery = interface
    ['{AF46D730-3892-472D-86DF-3661A63AD377}']
    function Query(Connection : iConexao) : iQuery;
  end;

implementation

end.
