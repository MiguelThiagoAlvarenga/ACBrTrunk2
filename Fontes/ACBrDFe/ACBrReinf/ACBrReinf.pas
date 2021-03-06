{******************************************************************************}
{ Projeto: Componente ACBrReinf                                                }
{  Biblioteca multiplataforma de componentes Delphi para envio de eventos do   }
{ Reinf                                                                        }

{ Direitos Autorais Reservados (c) 2017 Leivio Ramos de Fontenele              }
{                                                                              }

{ Colaboradores nesse arquivo:                                                 }

{  Voc� pode obter a �ltima vers�o desse arquivo na pagina do Projeto ACBr     }
{ Componentes localizado em http://www.sourceforge.net/projects/acbr           }


{  Esta biblioteca � software livre; voc� pode redistribu�-la e/ou modific�-la }
{ sob os termos da Licen�a P�blica Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a vers�o 2.1 da Licen�a, ou (a seu crit�rio) }
{ qualquer vers�o posterior.                                                   }

{  Esta biblioteca � distribu�da na expectativa de que seja �til, por�m, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia impl�cita de COMERCIABILIDADE OU      }
{ ADEQUA��O A UMA FINALIDADE ESPEC�FICA. Consulte a Licen�a P�blica Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICEN�A.TXT ou LICENSE.TXT)              }

{  Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral Menor do GNU junto}
{ com esta biblioteca; se n�o, escreva para a Free Software Foundation, Inc.,  }
{ no endere�o 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Voc� tamb�m pode obter uma copia da licen�a em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Leivio Ramos de Fontenele  -  leivio@yahoo.com.br                            }
{******************************************************************************}
{******************************************************************************
|* Historico
|*
|* 24/10/2017: Renato Rubinho
|*  - Compatibilizado Fonte com Delphi 7
*******************************************************************************}

{$I ACBr.inc}

unit ACBrReinf;

interface

uses
  Classes, SysUtils, TypInfo, ACBrDFe, ACBrDFeException, ACBrDFeConfiguracoes,
  ACBrReinfConfiguracoes, pcnConversao, ACBrUtil, pcnConversaoReinf,
  pcnReinfClasses, ACBrReinfEventos, ACBrReinfWebServices;

resourcestring
  ACBRREINF_CErroAmbienteDiferente = 'Ambiente do XML (tpAmb) � diferente do configurado no Componente (Configuracoes.WebServices.Ambiente)';
  ACBRREINF_CErroSignLib = 'Necess�rio DigestMethod Algorithm SHA256. use xsXmlSec ou xsLibXml2 na propriedade SSLXmlSignLib.';
  ACBRREINF_CErroCryptLib = 'Necess�rio DigestMethod Algorithm SHA256. use cryOpenSSL ou cryWinCrypt na propriedade SSLCryptLib.';

const
  ACBRREINF_VERSAO = '1.2';
  ACBRREINF_NAMESPACE_ENV = 'http://sped.fazenda.gov.br/RecepcaoLoteReinf';
  ACBRREINF_NAMESPACE_CON = 'http://sped.fazenda.gov.br/ConsultasReinf';
  ACBRREINF_MODELODF = 'Reinf';

type

  EACBReinfException = class(EACBrDFeException);

  TXmlSender = procedure(const Axml: string) of object;

  { TACBreSocial }
  {$IFDEF RTL230_UP}
  [ComponentPlatformsAttribute(pidWin32 or pidWin64)]
  {$ENDIF RTL230_UP}
  TACBrReinf = class(TACBrDFe)
  private
    FContribuinte: TIdeContribuinte;
    FIdeEvento: TIdeEvento;
    FOnAfterEnviar: TXmlSender;
    FOnBeforeEnviar: TXmlSender;

    FEventos: TEventos;
    FStatus : TStatusReinf;
    FWebServices: TWebServices;

//    FOnTransmissaoEventos: TNotifyEventoseSocial;

    function GetConfiguracoes: TConfiguracoesReinf;
    procedure SetConfiguracoes(AValue: TConfiguracoesReinf);
  protected
    function CreateConfiguracoes: TConfiguracoes; override;
    function GetAbout: String; override;

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

//    procedure AfterConstruction; override;
//    procedure BeforeDestruction; override;

    procedure LerServicoDeParams(LayOutServico: TLayOutReinf; var Versao: Double; var URL: String); overload;
    procedure SetStatus(const stNewStatus: TStatusReinf);

    function GetNomeModeloDFe: string; override;
    function GetNameSpaceURI: string; override;
    function LerVersaoDeParams(LayOutServico: TLayOutReinf): String; reintroduce; overload;
    function NomeServicoToNomeSchema(const NomeServico: String): String; override;

    function Enviar: boolean;
    function Consultar(const AProtocolo: string): boolean;

    property ideContri: TIdeContribuinte read FContribuinte;
    property ideEvento: TIdeEvento read FIdeEvento write FIdeEvento;
    property Eventos: TEventos read FEventos write FEventos;
    property Status: TStatusReinf read FStatus;
    property WebServices: TWebServices read FWebServices write FWebServices;

  published
    property Configuracoes: TConfiguracoesReinf read GetConfiguracoes write SetConfiguracoes;
    property OnBeforeEnviar: TXmlSender read FOnBeforeEnviar write FOnBeforeEnviar;
    property OnAfterEnviar: TXmlSender read FOnAfterEnviar write FOnAfterEnviar;
//    property OnTransmissaoEventos: TNotifyEventoseSocial read FOnTransmissaoEventos write FOnTransmissaoEventos;
  end;
(*
  TACBrReinf = class(TACBrDFe)
  private
//    FConfiguracoes: TConfiguracoesReinf;
//    FContribuinte: TIdeContribuinte;
//    FIdeEvento: TIdeEvento;
//    FEventos: TEventos;
//    FWebServices: TWebServices;
//    FOnAfterEnviar: TXmlSender;
//    FOnBeforeEnviar: TXmlSender;
//    function GetConfiguracoes: TConfiguracoesReinf;
//    procedure SetConfiguracoes(const Value: TConfiguracoesReinf);
//    function GetVersao: string;
  protected
  public
//    procedure LerServicoDeParams(ALayOutReinf: TLayReinf; var URL: String); reintroduce;
//    procedure AfterConstruction; override;
//    procedure BeforeDestruction; override;
//    function Enviar: Boolean;
//    function GetNameSpaceURI: string; override;
//    property ideContri: TIdeContribuinte read FContribuinte;
//    property ideEvento: TIdeEvento read FIdeEvento write FIdeEvento;
//    property Eventos: TEventos read FEventos;
//    property WebServices: TWebServices read FWebServices write FWebServices;
  published
    property Configuracoes: TConfiguracoesReinf read GetConfiguracoes write SetConfiguracoes;
    property OnBeforeEnviar: TXmlSender read FOnBeforeEnviar write FOnBeforeEnviar;
    property OnAfterEnviar: TXmlSender read FOnAfterEnviar write FOnAfterEnviar;
    property Versao: string read GetVersao;
  end;
*)
implementation

{$IFDEF FPC}
 {$IFDEF CPU64}
  {$R ACBrReinfServicos.res}  // Dificuldades de compilar Recurso em 64 bits
 {$ELSE}
  {$R ACBrReinfServicos.rc}
 {$ENDIF}
{$ELSE}
 {$R ACBrReinfServicos.res}
{$ENDIF}

{ TACBrReinf }

uses
  ACBrDFeSSL;

type
  THackEventos = class(TEventos);

constructor TACBrReinf.Create(AOwner: TComponent);
begin
  inherited;

  SSL.SSLDgst := dgstSHA256;
  FEventos := TEventos.Create(Self);
  FWebServices := TWebServices.Create(Self);

  FContribuinte := TIdeContribuinte.Create;
  FIdeEvento := TIdeEvento.Create;
end;

destructor TACBrReinf.Destroy;
begin
  FEventos.Free;
  FWebServices.Free;

  FContribuinte.Free;
  FIdeEvento.Free;

  inherited;
end;

function TACBrReinf.GetConfiguracoes: TConfiguracoesReinf;
begin
  Result := TConfiguracoesReinf(FPConfiguracoes);
end;

procedure TACBrReinf.SetConfiguracoes(AValue: TConfiguracoesReinf);
begin
  FPConfiguracoes := AValue;
end;

function TACBrReinf.CreateConfiguracoes: TConfiguracoes;
begin
  Result := TConfiguracoesReinf.Create(Self);
end;

function TACBrReinf.GetAbout: String;
begin
  Result := 'ACBrReinf Ver: ' + ACBRReinf_VERSAO;
end;

function TACBrReinf.Enviar: boolean;
var
  xml: string;
begin
  if SSL.SSLXmlSignLib in [xsXmlSec, xsLibXml2] then
  begin
    xml := Eventos.GetXml;

    if Assigned(FOnBeforeEnviar) then
      FOnBeforeEnviar(xml);

    Result := FWebServices.Enviar(xml);
    
    if Result and Assigned(FOnAfterEnviar) then
      FOnAfterEnviar(FWebServices.EnvioLote.RetornoWS);
  end
  else
    raise EACBReinfException.Create('Necess�rio DigestMethod Algorithm = sha256 -> SSLLib = libOpenSSL');
end;

function TACBrReinf.Consultar(const AProtocolo: string): boolean;
begin
  Result := WebServices.Consulta(AProtocolo);
end;

function TACBrReinf.NomeServicoToNomeSchema(const NomeServico: String): String;
var
  ok: Boolean;
  ALayout: TLayOutReinf;
begin
  ALayout := ServicoToLayOut(ok, NomeServico);
  if ok then
    Result := SchemaReinfToStr( LayOutReinfToSchema( ALayout ) )
  else
    Result := '';
end;

procedure TACBrReinf.LerServicoDeParams(LayOutServico: TLayOutReinf; var Versao: Double; var URL: String);
var
  Sessao: string;
begin
  if Configuracoes.WebServices.Ambiente = taHomologacao then
    Sessao := 'Reinf_H'
  else
    Sessao := 'Reinf_P';

  LerServicoChaveDeParams(Sessao, LayOutReinfToServico(LayOutServico), Versao, URL);
  Versao := VersaoReinfToDbl(Configuracoes.Geral.VersaoDF);
end;

function TACBrReinf.LerVersaoDeParams(LayOutServico: TLayOutReinf): String;
var
  Versao: Double;
begin
  Versao := LerVersaoDeParams(GetNomeModeloDFe, Configuracoes.WebServices.UF,
    Configuracoes.WebServices.Ambiente, LayOutReinfToServico(LayOutServico),
    VersaoReinfToDbl(Configuracoes.Geral.VersaoDF));

  Result := FloatToString(Versao, '.', '0.00');
end;

procedure TACBrReinf.SetStatus(const stNewStatus: TStatusReinf);
begin
  if stNewStatus <> FStatus then
  begin
    FStatus := stNewStatus;
    if Assigned(OnStatusChange) then
      OnStatusChange(Self);
  end;
end;

function TACBrReinf.GetNomeModeloDFe: string;
begin
  Result := 'Reinf';
end;

function TACBrReinf.GetNameSpaceURI: string;
begin
//  case LayOutServico of
//    LayEnvioLoteEventos:    Result := ACBRREINF_NAMESPACE_ENV;
//    LayConsultaLoteEventos: Result := ACBRREINF_NAMESPACE_CON;
//  end;
  Result := ACBRREINF_NAMESPACE_ENV;
end;

end.
