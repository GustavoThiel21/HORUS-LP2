unit Dm.Database;

interface

uses
  System.SysUtils, System.Classes, Data.DbxFirebird, Data.DB, Data.SqlExpr;

type
  TDmDatabse = class(TDataModule)
    Conexao: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDatabse: TDmDatabse;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
