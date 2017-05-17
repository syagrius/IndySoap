unit KeyServerForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IdTCPServer, IdCustomHTTPServer, IdSoapServerHTTP, IdBaseComponent,
  IdComponent, IdSoapComponent, IdSoapITIProvider, IdSoapServer;

type
  TForm1 = class(TForm)
    IdSoapServer1: TIdSoapServer;
    IdSOAPServerHTTP1: TIdSOAPServerHTTP;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

uses
  KeyServerCore;

procedure TForm1.FormCreate(Sender: TObject);
begin
  KeyServerCore.Start;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  KeyServerCore.Stop;
end;

end.
