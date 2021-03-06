unit PesaMais.Model.Conection.Interfaces;

interface

uses
  Data.DB;

type
  iConexao = interface
  ['{EFDE1D45-F0D9-4346-B003-92F64BAC3750}']
  function Connection : TCustomConnection;

  end;

  iQuery = interface
    ['{ADD212BE-FC6E-409F-BBBC-B1DCC603FB7C}']
    function SQL(Value : String) : iQuery;
    function DataSet : TDataSet;
  end;

implementation

end.
