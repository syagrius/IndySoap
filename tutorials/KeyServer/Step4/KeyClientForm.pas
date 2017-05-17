unit KeyClientForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IdBaseComponent, IdComponent, IdSoapComponent, IdSoapITIProvider,
  IdSoapClient, IdSoapClientHTTP, StdCtrls, ExtCtrls, IdSoapClientTCPIP;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    eKeyName: TEdit;
    eKeyValue: TEdit;
    eUserName: TEdit;
    ePassword: TEdit;
    bGetKey: TButton;
    bResetKey: TButton;
    Bevel1: TBevel;
    Panel3: TPanel;
    Label6: TLabel;
    bUpdate: TButton;
    mDetails: TMemo;
    IdSoapClientHTTP1: TIdSoapClientHTTP;
    IdSoapClientTCPIP1: TIdSoapClientTCPIP;
    procedure bGetKeyClick(Sender: TObject);
    procedure bUpdateClick(Sender: TObject);
    procedure bResetKeyClick(Sender: TObject);
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
  KeyServerInterface;
  
procedure TForm1.bGetKeyClick(Sender: TObject);
var
  IKey : IKeyServer;
begin
  IKey := IdSoapClientTCPIP1 as IKeyServer;
  eKeyValue.Text := inttostr(IKey.GetNextKey(eKeyName.Text));
end;

procedure TForm1.bUpdateClick(Sender: TObject);
var
  KeyList : TKeyList;
  IKey : IKeyServer;
  i : integer;
begin
  IKey := IdSoapClientHTTP1 as IKeyServer;
  IKey.ListKeys(KeyList);
  mDetails.Lines.Clear;
  for i := Low(KeyList) to High(KeyList) do
    begin
    mDetails.lines.add(KeyList[i].Name+
         ' '+inttostr(KeyList[i].StartKey)+
         '/'+inttostr(KeyList[i].NextKey));
    FreeAndNil(KeyList[i]);
    end;
end;

procedure TForm1.bResetKeyClick(Sender: TObject);
var
  IKey : IKeyServer;
begin
  IKey := IdSoapClientHTTP1 as IKeyServer;
  IKey.ResetKey(eUsername.Text, ePassword.Text, eKeyName.Text, StrToInt(eKeyValue.Text));
end;

end.
