object Form1: TForm1
  Left = 483
  Top = 397
  Width = 301
  Height = 130
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object IdSoapServer1: TIdSoapServer
    Active = True
    DefaultNamespace = 'urn:nevrona.com/indysoap/v1/'
    EncodingOptions = [seoUseCrLf, seoCheckStrings, seoReferences, seoRequireTypes]
    EncodingType = etIdAutomatic
    ITIResourceName = 'KeyServerInterface'
    ITISource = islResource
    RTTINamesType = rntInclude
    SoapVersions = [IdSoapV1_1]
    Left = 2
    Top = 2
  end
  object IdSOAPServerHTTP1: TIdSOAPServerHTTP
    Active = True
    Bindings = <>
    CommandHandlers = <>
    DefaultPort = 2445
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    SOAPPath = '/soap/'
    SOAPServer = IdSoapServer1
    WSDLPath = '/wsdl'
    Left = 32
    Top = 2
  end
end
