program KeyServer;

uses
  Forms,
  KeyServerForm in 'KeyServerForm.pas' {Form1},
  KeyServerInterface in 'KeyServerInterface.pas',
  KeyServerImplementation in 'KeyServerImplementation.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
