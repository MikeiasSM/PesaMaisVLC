unit PesaMais.Model.Conection.FireDac;

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
  TConexaoFiredac = Class(TInterfacedObject, iConexao)



Private
  FConexao : TFDConnection;

Public
  constructor Create;
  destructor Destroy; override;
  class function New : iConexao;
  function Connection : TCustomConnection;

end;

 implementation

uses
  System.SysUtils;


{ TConexaoFiredac }

function TConexaoFiredac.Connection: TCustomConnection;
begin
  Result := FConexao;
end;

constructor TConexaoFiredac.Create;
begin
  FConexao := TFDConnection.Create(nil);
  FConexao.DriverName := 'FB';
  FConexao.Params.Database := 'C:\Delphi\DATATECH.FDB';
  FConexao.Params.UserName := 'SYSDBA';
  FConexao.Params.Password := 'masterkey';
  FConexao.Connected := true;
end;

destructor TConexaoFiredac.Destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

class function TConexaoFiredac.New: iConexao;
begin
  Result := Self.Create;
end;

end.
