unit PesaMaisVCL.Model.Query.FireDac;

interface

uses
  PesaMais.Model.Conection.Interfaces,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Data.DB;

Type
  TModelQueryFiredac = Class(TInterfacedObject, iQuery)



Private
  FParent : iConexao;
  FQuery  : TFDQuery;
Public
  constructor Create(Parent : iConexao);
  destructor Destroy; override;
  class function New(Parent : iConexao) : iQuery;
  function SQL(Value : String) : iQuery;
  function DataSet : TDataSet;
end;

 implementation

uses
  System.SysUtils, PesaMais.Model.Conection.FireDac;


{ TConexaoFiredac }

constructor TModelQueryFiredac.Create(Parent : iConexao);
begin
  FParent := Parent;
  FQuery  := TFDQuery.Create(nil);

  if not Assigned(FParent) then
    FParent := TConexaoFiredac.New;

  FQuery.Connection := TFDConnection(FParent.Connection);
end;

function TModelQueryFiredac.DataSet: TDataSet;
begin
  Result := FQuery;
end;

destructor TModelQueryFiredac.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

class function TModelQueryFiredac.New(Parent : iConexao) : iQuery;
begin
  Result := Self.Create(Parent);
end;

function TModelQueryFiredac.SQL(Value: String): iQuery;
begin
  Result := Self;
  FQuery.SQL.Clear;
  FQuery.SQL.Add(Value);
  FQuery.Active := true;
end;

end.
