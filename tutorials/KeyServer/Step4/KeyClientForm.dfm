object Form1: TForm1
  Left = 395
  Top = 196
  Width = 407
  Height = 289
  Caption = 'KeyServer Admin Client'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 399
    Height = 91
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 12
      Top = 10
      Width = 49
      Height = 13
      Caption = 'Key Name'
    end
    object Label3: TLabel
      Left = 12
      Top = 30
      Width = 48
      Height = 13
      Caption = 'Key Value'
    end
    object Label4: TLabel
      Left = 212
      Top = 10
      Width = 53
      Height = 13
      Caption = 'User Name'
    end
    object Label5: TLabel
      Left = 220
      Top = 34
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object Bevel1: TBevel
      Left = 0
      Top = 79
      Width = 399
      Height = 12
      Align = alBottom
      Shape = bsBottomLine
    end
    object eKeyName: TEdit
      Left = 70
      Top = 6
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'eKeyName'
    end
    object eKeyValue: TEdit
      Left = 70
      Top = 30
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'eKeyValue'
    end
    object eUserName: TEdit
      Left = 270
      Top = 6
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'eUserName'
    end
    object ePassword: TEdit
      Left = 270
      Top = 30
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'ePassword'
    end
    object bGetKey: TButton
      Left = 240
      Top = 58
      Width = 75
      Height = 25
      Caption = 'Get Key'
      TabOrder = 4
      OnClick = bGetKeyClick
    end
    object bResetKey: TButton
      Left = 316
      Top = 58
      Width = 75
      Height = 25
      Caption = 'Reset Key'
      TabOrder = 5
      OnClick = bResetKeyClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 91
    Width = 399
    Height = 171
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 399
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label6: TLabel
        Left = 6
        Top = 6
        Width = 30
        Height = 13
        Caption = 'Status'
      end
      object bUpdate: TButton
        Left = 44
        Top = 2
        Width = 75
        Height = 23
        Caption = 'Update'
        TabOrder = 0
        OnClick = bUpdateClick
      end
    end
    object mDetails: TMemo
      Left = 0
      Top = 29
      Width = 399
      Height = 142
      Align = alClient
      Lines.Strings = (
        'mDetails')
      TabOrder = 1
    end
  end
  object IdSoapClientHTTP1: TIdSoapClientHTTP
    Active = True
    DefaultNamespace = 'urn:nevrona.com/indysoap/v1/'
    EncodingOptions = [seoUseCrLf, seoCheckStrings, seoReferences, seoRequireTypes]
    EncodingType = etIdAutomatic
    ITIResourceName = 'KeyServerInterface'
    ITISource = islResource
    RTTINamesType = rntInclude
    GarbageCollectObjects = False
    SoapVersion = IdSoapV1_1
    SoapURL = 'http://localhost:2445/soap/'
    Left = 16
    Top = 56
  end
  object IdSoapClientTCPIP1: TIdSoapClientTCPIP
    Active = True
    DefaultNamespace = 'urn:nevrona.com/indysoap/v1/'
    EncodingOptions = [seoUseCrLf, seoCheckStrings, seoReferences, seoRequireTypes]
    EncodingType = etIdAutomatic
    ITIResourceName = 'KeyServerInterface'
    ITISource = islResource
    RTTINamesType = rntInclude
    GarbageCollectObjects = False
    SoapVersion = IdSoapV1_1
    SoapHost = 'localhost'
    SoapPort = 9001
    SoapTimeout = 60000
    Left = 46
    Top = 56
  end
end
