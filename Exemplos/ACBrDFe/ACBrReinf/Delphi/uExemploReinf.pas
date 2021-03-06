{$I ACBr.inc}

unit uExemploReinf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, ComCtrls,
  ACBrReinf, ACBrReinfWebServices, pcnConversaoReinf, ACBrReinfEventos, ACBrBase,
  ACBrDFe, Spin, Buttons, ACBrUtil, IniFiles, Math, blcksock, StrUtils, TypInfo,
  FileCtrl, pcnReinfR2010_Class, pcnReinfR5001, pcnReinfR5011;

type
  TForm2 = class(TForm)
    Panel2: TPanel;
    lblColaborador: TLabel;
    lblPatrocinador: TLabel;
    lblDoar1: TLabel;
    lblDoar2: TLabel;
    btnSalvarConfig: TBitBtn;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    PageControl4: TPageControl;
    TabSheet6: TTabSheet;
    lSSLLib: TLabel;
    lCryptLib: TLabel;
    lHttpLib: TLabel;
    lXmlSign: TLabel;
    gbCertificado: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label25: TLabel;
    sbtnGetCert: TSpeedButton;
    SpeedButton1: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button10: TButton;
    GroupBox2: TGroupBox;
    Button6: TButton;
    cbAssinar: TCheckBox;
    Button7: TButton;
    Button9: TButton;
    cbSSLLib: TComboBox;
    cbCryptLib: TComboBox;
    cbHttpLib: TComboBox;
    cbXmlSignLib: TComboBox;
    TabSheet7: TTabSheet;
    GroupBox3: TGroupBox;
    sbtnPathSalvar: TSpeedButton;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label42: TLabel;
    spPathSchemas: TSpeedButton;
    edtPathLogs: TEdit;
    ckSalvar: TCheckBox;
    cbFormaEmissao: TComboBox;
    cbxAtualizarXML: TCheckBox;
    cbxExibirErroSchema: TCheckBox;
    edtFormatoAlerta: TEdit;
    cbxRetirarAcentos: TCheckBox;
    cbVersaoDF: TComboBox;
    edtPathSchemas: TEdit;
    TabSheet8: TTabSheet;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    lTimeOut: TLabel;
    lSSLLib1: TLabel;
    cbxVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    cbxSalvarSOAP: TCheckBox;
    seTimeOut: TSpinEdit;
    cbSSLType: TComboBox;
    gbProxy: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    gbxRetornoEnvio: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    cbxAjustarAut: TCheckBox;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    TabSheet12: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCodCidade: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    TabSheet13: TTabSheet;
    sbPathReinf: TSpeedButton;
    Label35: TLabel;
    Label47: TLabel;
    sbPathEvento: TSpeedButton;
    cbxSalvarArqs: TCheckBox;
    cbxPastaMensal: TCheckBox;
    cbxAdicionaLiteral: TCheckBox;
    cbxSalvaPathEvento: TCheckBox;
    cbxSepararPorCNPJ: TCheckBox;
    edtPathReinf: TEdit;
    edtPathEvento: TEdit;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    chk1000: TCheckBox;
    chk2010: TCheckBox;
    chk2020: TCheckBox;
    chk2098: TCheckBox;
    chk1070: TCheckBox;
    chk2099: TCheckBox;
    chk9000: TCheckBox;
    chk2060: TCheckBox;
    chk2070: TCheckBox;
    btnConsultaFechamento: TButton;
    TabSheet2: TTabSheet;
    mmoRet: TMemo;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    TabSheet4: TTabSheet;
    Memo2: TMemo;
    Panel4: TPanel;
    btnGerar: TButton;
    GroupBox4: TGroupBox;
    edProtocolo: TEdit;
    Label1: TLabel;
    lblRecibo: TLabel;
    edRecibo: TEdit;
    lblEvento: TLabel;
    cbEvento: TComboBox;
    ChkRetificadora: TCheckBox;
    OpenDialog1: TOpenDialog;
    PageControl3: TPageControl;
    TabSheet9: TTabSheet;
    Label5: TLabel;
    edContNome: TEdit;
    Label26: TLabel;
    edContCPF: TEdit;
    Label27: TLabel;
    edContFone: TEdit;
    Label28: TLabel;
    edContCel: TEdit;
    Label39: TLabel;
    edContEmail: TEdit;
    TabSheet10: TTabSheet;
    Label40: TLabel;
    edSoftRazao: TEdit;
    Label41: TLabel;
    edSoftCNPJ: TEdit;
    Label43: TLabel;
    edSoftEmail: TEdit;
    Label44: TLabel;
    edSoftFone: TEdit;
    Label45: TLabel;
    edSoftContato: TEdit;
    edHash: TEdit;
    btnValidarSchema: TButton;
    btnValidarAssinatura: TButton;
    chk3010: TCheckBox;
    chk2030: TCheckBox;
    chk2040: TCheckBox;
    chk2050: TCheckBox;
    rdgOperacao: TRadioGroup;
    ACBrReinf1: TACBrReinf;
    btnConsultar: TButton;
    procedure btnGerarClick(Sender: TObject);
    procedure lblColaboradorClick(Sender: TObject);
    procedure lblPatrocinadorClick(Sender: TObject);
    procedure lblDoar1Click(Sender: TObject);
    procedure lblColaboradorMouseEnter(Sender: TObject);
    procedure lblColaboradorMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure spPathSchemasClick(Sender: TObject);
    procedure PathClick(Sender: TObject);
    procedure sbPathReinfClick(Sender: TObject);
    procedure sbPathEventoClick(Sender: TObject);
    procedure cbSSLLibChange(Sender: TObject);
    procedure cbCryptLibChange(Sender: TObject);
    procedure cbHttpLibChange(Sender: TObject);
    procedure cbXmlSignLibChange(Sender: TObject);
    procedure cbSSLTypeChange(Sender: TObject);
    procedure btnValidarSchemaClick(Sender: TObject);
    procedure btnValidarAssinaturaClick(Sender: TObject);
    procedure chk1000Click(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    procedure GravarConfiguracao;
    procedure LerConfiguracao;
    procedure AtualizaSSLLibsCombo;

    procedure PreencherXMLEventos;
    procedure LimparDocsPasta;
    function GetTipoOperacao: TindOperacao;
    {Eventos}
    procedure GerarReinf1000;
    procedure GerarReinf1070;
    procedure GerarReinf2010;
    procedure GerarReinf2020;
    procedure GerarReinf2030;
    procedure GerarReinf2040;
    procedure GerarReinf2050;
    procedure GerarReinf2060;
    procedure GerarReinf2070;
    procedure GerarReinf2098;
    procedure GerarReinf2099;
    procedure GerarReinf3010;
    procedure GerarReinf9000;
  public
    procedure DepoisDeEnviar(const Axml: string);
    procedure AntesDeEnviar(const Axml: string);
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses
  ACBrDFeSSL, pcnConversao, ShellAPI, pcnReinfClasses, Unit2,
  ACBrReinfEventosBase;

const
  SELDIRHELP = 1000;
  
procedure TForm2.AntesDeEnviar(const Axml: string);
begin
  Memo1.Lines.Text := Axml;
end;

procedure TForm2.btnConsultarClick(Sender: TObject);
var
  Protocolo: string;
  i, J: Integer;
  evtR5001: TR5001;
  evtR5011: TR5011;
begin
  Protocolo := '';
  if not(InputQuery('WebServices: Consulta Protocolo', 'Protocolo', Protocolo))
  then
    Exit;

  if ACBrReinf1.Consultar(Protocolo) then
  begin

    MmoRet.Lines.Text := ACBrReinf1.WebServices.Consultar.RetWS;

    with Memo2.Lines do
    begin

      with ACBrReinf1.WebServices.Consultar.RetConsulta do
      begin
        Add('');

        for i := 0 to RetEventos.Count - 1 do
        begin
          Add(' Evento: ' + IntToStr(J));
          Add('   Tipo.........: ' + retEventos.Items[i].Tipo);
          case retEventos.Items[i].Evento.TipoEvento of
            teR5001:
              begin
                evtR5001 := TR5001(retEventos.Items[i].Evento.GetEvento);
                Add('   Id...........: ' + evtR5001.EvtTotal.Id);
                Add('   C�d Retorno..: ' + evtR5001.EvtTotal.IdeStatus.cdRetorno);
                Add('   Descri��o....: ' + evtR5001.EvtTotal.IdeStatus.descRetorno);
              end;
            teR5011:
              begin
                evtR5011 := TR5011(retEventos.Items[i].Evento.GetEvento);
                Add('   Id...........: ' + evtR5011.EvtTotalContrib.Id);
                Add('   C�d Retorno..: ' + evtR5011.EvtTotalContrib.IdeStatus.cdRetorno);
                Add('   Descri��o....: ' + evtR5011.EvtTotalContrib.IdeStatus.descRetorno);
              end;
          end;
        end;
      end;

    end;

    PageControl1.ActivePageIndex := 1;
  end;
end;

procedure TForm2.btnGerarClick(Sender: TObject);
var
  i: Integer;
begin
  mmoRet.Clear;
  edProtocolo.Text := '';
  ACBrReinf1.Configuracoes.Geral.VersaoDF := TVersaoReinf(cbVersaoDF.ItemIndex);

  {IdeEvento}
  ACBrReinf1.IdeEvento.TpAmb := TtpAmb( rgTipoAmb.ItemIndex + 1 );
  ACBrReinf1.IdeEvento.ProcEmi := peAplicEmpregador;
  ACBrReinf1.IdeEvento.VerProc := '1.0';
  {IdeEvento}
  ACBrReinf1.ideContri.TpInsc := tiCNPJ;
  ACBrReinf1.ideContri.NrInsc := edtEmitCNPJ.Text;

  ACBrReinf1.OnBeforeEnviar := AntesDeEnviar;
  ACBrReinf1.OnAfterEnviar := DepoisDeEnviar;
  try
    ACBrReinf1.Eventos.Items.Clear;
    PreencherXMLEventos;

    if ACBrReinf1.Enviar then
    begin
      mmoRet.Lines.Add('ideTransmissor: '+ ACBrReinf1.WebServices.EnvioLote.RetEnvioLote.IdeTransmissor.IdTransmissor);
      mmoRet.Lines.Add('cdStatus      : '+ IntToStr(ACBrReinf1.WebServices.EnvioLote.RetEnvioLote.Status.cdStatus));
      mmoRet.Lines.Add('descRetorno   : '+ ACBrReinf1.WebServices.EnvioLote.RetEnvioLote.Status.descRetorno);

      mmoRet.Lines.Add(' **Ocorrencias');

      for i := 0 to ACBrReinf1.WebServices.EnvioLote.RetEnvioLote.Status.Ocorrencias.Count - 1 do
      begin
        with  ACBrReinf1.WebServices.EnvioLote.RetEnvioLote.Status.Ocorrencias.Items[i] do
        begin
          mmoRet.Lines.Add('   tipo: ' + Inttostr(tipo));
          mmoRet.Lines.Add('   localizacaoErroAviso: ' + localizacao);
          mmoRet.Lines.Add('   codigo: ' + inttostr(codigo));
          mmoRet.Lines.Add('   descricao: ' + descricao);
        end;
      end;

      mmoRet.Lines.Add('retornoEventos');
      for i:=0 to ACBrReinf1.WebServices.EnvioLote.RetEnvioLote.evento.Count - 1 do
      begin
        with ACBrReinf1.WebServices.EnvioLote.RetEnvioLote.evento.Items[i] do
        begin
          mmoRet.Lines.Add('Evento Id: ' + Id);
          (*
          mmoRet.Lines.Add('*ideContrib ');
          mmoRet.Lines.Add(' ideContrib: ' + Inttostr(ord(Evento.ideContrib.TpInsc)));
          mmoRet.Lines.Add(' NrInsc: ' + Evento.ideContrib.NrInsc);
          mmoRet.Lines.Add('*dadosRecepcaoEvento ');
          mmoRet.Lines.Add(' dhProcessamento ' + Datetostr(Evento.dadosRecepcaoEvento.dhProcessamento));
          mmoRet.Lines.Add(' tipoEvento ' + Evento.dadosRecepcaoEvento.tipoEvento);
          mmoRet.Lines.Add(' IdEvento ' + Evento.dadosRecepcaoEvento.IDEvento);
          mmoRet.Lines.Add(' Hash ' + Evento.dadosRecepcaoEvento.Hash);
          edProtocolo.Text := Evento.dadosRecepcaoEvento.Hash;
          mmoRet.Lines.Add('*Status ');
          mmoRet.Lines.Add(' cdRetorno ' + Inttostr(Evento.Status.cdRetorno));
          mmoRet.Lines.Add(' descRetorno ' + Evento.Status.descRetorno);
          if Evento.Status.cdRetorno = 0 then {Sucesso}
          begin
            mmoRet.Lines.Add('*dadosReciboEntrega');
            mmoRet.Lines.Add(' numeroRecibo ' + Evento.dadosReciboEntrega.numeroRecibo);
          end;
          *)
        end;
      end;
    end
    else
      ShowMessage('Falha');
  finally

  end;
end;

procedure TForm2.DepoisDeEnviar(const Axml: string);
begin
  Memo2.Lines.Text := Axml;
end;

procedure TForm2.LimparDocsPasta;
var
  path: string;
  FileOp: TSHFileOpStruct;
begin
  try
    path := edtPathReinf.Text;
    FillChar(FileOp, SizeOf(FileOp), 0);
    FileOp.wFunc := FO_DELETE;
    FileOp.pFrom := PChar(path+#0);//double zero-terminated
    FileOp.fFlags := FOF_SILENT or FOF_NOERRORUI or FOF_NOCONFIRMATION;
    SHFileOperation(FileOp);
    ForceDirectories(path);
  except
  end;
end;

procedure TForm2.PreencherXMLEventos;
begin
  if chk1000.Checked then
    GerarReinf1000;

  if chk1070.Checked then
    GerarReinf1070;

  if chk2010.Checked then
    GerarReinf2010;

  if chk2020.Checked then
    GerarReinf2020;

  if chk2030.Checked then
    GerarReinf2030;

  if chk2040.Checked then
    GerarReinf2040;

  if chk2050.Checked then
    GerarReinf2050;

  if chk2060.Checked then
    GerarReinf2060;

  if chk2070.Checked then
    GerarReinf2070;

  if chk2098.Checked then
    GerarReinf2098;

  if chk2099.Checked then
    GerarReinf2099;

  if chk3010.Checked then
    GerarReinf3010;

  if chk9000.Checked then
    GerarReinf9000;
end;


procedure TForm2.GerarReinf1000;
begin
  with ACBrReinf1.Eventos.AddR1000 do
  begin
    TipoOperacao := GetTipoOperacao;

    infoContri.IdePeriodo.IniValid := '2017-01';
    infoContri.IdePeriodo.FimValid := '2099-12';

    if ( TipoOperacao = toAlteracao ) then
    begin
      NovaValidade.IniValid := '2017-01';
      NovaValidade.FimValid := '2099-12';
    end;

    if ( TipoOperacao in [ toInclusao, toAlteracao ] ) then
    begin
      // TESTE 2030 2040 3010
      infoContri.InfoCadastro.ClassTrib := '11';
      // TESTE 2050
      // infoContri.InfoCadastro.ClassTrib := '07';
      // OUTROS
      //infoContri.InfoCadastro.ClassTrib := '99';

      infoContri.InfoCadastro.indEscrituracao    := TindEscrituracao(0);
      infoContri.InfoCadastro.indDesoneracao     := TindDesoneracao(1);
      infoContri.InfoCadastro.indAcordoIsenMulta := TindAcordoIsenMulta(0);

      infoContri.InfoCadastro.Contato.NmCtt    := edContNome.Text;
      infoContri.InfoCadastro.Contato.CpfCtt   := edContCPF.Text;
      infoContri.InfoCadastro.Contato.FoneFixo := edContFone.Text;
      infoContri.InfoCadastro.Contato.FoneCel  := edContCel.Text;
      infoContri.InfoCadastro.Contato.email    := edContEmail.Text;

      with infoContri.InfoCadastro.SoftwareHouse do
      begin
        CnpjSoftHouse := edSoftCNPJ.Text;
        NmRazao       := edSoftRazao.Text;
        NmCont        := edSoftContato.Text;
        Telefone      := edSoftFone.Text;
        email         := edSoftEmail.Text;
      end;

      infoContri.InfoCadastro.indSitPJ := spNormal;
    end;  
  end;
end;

procedure TForm2.GerarReinf1070;
begin
  with ACBrReinf1.Eventos.AddR1070 do
  begin
    TipoOperacao := GetTipoOperacao;
    InfoProcesso.IdePeriodo.IniValid := '2017-01';

    if ( TipoOperacao = toExclusao ) then
      InfoProcesso.IdePeriodo.FimValid := '2099-12';

    if ( TipoOperacao = toAlteracao ) then
    begin
      NovaValidade.IniValid := '2017-01';
      NovaValidade.FimValid := '2099-12';
    end;

    InfoProcesso.IdeProcesso.tpProc := tpJudicial;
    InfoProcesso.IdeProcesso.nrProc := '12345678901234567890';
    InfoProcesso.IdeProcesso.DadosProcJud.UfVara     := 'SP';
    InfoProcesso.IdeProcesso.DadosProcJud.codMunic   := 3550308;
    InfoProcesso.IdeProcesso.DadosProcJud.IdVara     := '03';
    InfoProcesso.IdeProcesso.DadosProcJud.indAutoria := TindAutoria(1);

    with InfoProcesso.IdeProcesso.infoSusps.New do
    begin
      //codSusp := '1';
      indSusp := siDecisaoDefinitivaAFavorDoContribuinte;
      dtDecisao := StrtoDate('01/01/2017');
      indDeposito := tpNao;
    end;
  end;
end;

procedure TForm2.GerarReinf2010;
begin
  with ACBrReinf1.Eventos.AddR2010 do
  begin
    indRetif := trOriginal;

    if ChkRetificadora.Checked then
      indRetif := trRetificacao;

    if indRetif = trRetificacao then
      nrRecibo := edRecibo.Text;

    perApur := FormatDateTime( 'yyyy-mm', Now );

    infoServTom.IdePeriodo.IniValid := '2017-01';

    infoServTom.ideEstabObra.tpInscEstab := tiCNPJ;
    infoServTom.ideEstabObra.nrInscEstab := edtEmitCNPJ.Text;
    infoServTom.ideEstabObra.indObra := ioNaoeObraDeConstrucaoCivil;

    with infoServTom.ideEstabObra.idePrestServs.New do
    begin
      cnpjPrestador := '00000000000000';
      vlrTotalBruto := 100;
      vlrTotalBaseRet := 100;
      vlrTotalRetPrinc := 11;
      // vlrTotalRetAdic := 0;
      // vlrTotalNRetPrinc := 100;
      codAnaCont := '001';
      indCPRB := icNaoContribuintePrevidenciariaReceitaBruta;
      with nfss.Items[nfss.Add(Tnfs.Create)] do
      begin
        serie := '00001';
        numDocto  := '0000000001';
        dtEmissaoNF := Now;
        vlrBruto  := 100;
        obs := '';
        with infoTpServs.Items[infoTpServs.Add(TinfoTpServ.Create)] do
        begin
          tpServico := '100000003'; {Tabela 06}
          //codAtivEcon := '00000025';
          vlrMatEquip := 0;
          vlrDedAlim := 0;
          vlrDedTrans := 0;
          vlrBaseRet := 100;
          vlrRetencao := 11;
          //vlrRetSub := 0;
        end;
      end;

      with infoProcRetPr.Items[infoProcRetPr.Add(TinfoProcRetPr.Create)] do
      begin
        tpProcRetPrinc := tpAdministrativo;
        nrProcRetPrinc := '1122112';
        codSuspPrinc := 001;
        valorPrinc := 100.00;
      end;

      with infoProcRetAd.Items[infoProcRetAd.Add(TinfoProcRetPr.Create)] do
      begin
        tpProcRetPrinc := tpAdministrativo;
        nrProcRetPrinc := '1122112';
        codSuspPrinc := 001;
        valorPrinc := 100.00;
      end;

    end;
  end;
end;

procedure TForm2.GerarReinf2020;
begin
  with ACBrReinf1.Eventos.AddR2020 do
  begin
    indRetif := trOriginal;

    if ChkRetificadora.Checked then
      indRetif := trRetificacao;

    if indRetif = trRetificacao then
      nrRecibo := edRecibo.Text;
      
    perApur := FormatDateTime( 'yyyy-mm', Now );

    infoServPrest.IdePeriodo.IniValid := '2017-01';

     infoServPrest.ideEstabPrest.tpInscEstabPrest := tiCNPJ; {valor somente leitura -> Valor fixo 1}
    infoServPrest.ideEstabPrest.nrInscEstabPrest := edtEmitCNPJ.Text;

    with infoServPrest.ideEstabPrest.ideTomadors.New do
    begin
      tpInscTomador := tiCNPJ; {N�o preencher fixo}
      nrInscTomador := '99999999999999';
      vlrTotalBruto := 100;
      vlrTotalBaseRet := 100;
      vlrTotalRetPrinc := 11;
      //codAnaCont := '001';
      with nfss.Items[nfss.Add(Tnfs.Create)] do
      begin
        serie := '00001';
        numDocto  := '0000000001';
        dtEmissaoNF := Now;
        vlrBruto  := 100;
        obs := 'teste';
        with infoTpServs.Items[infoTpServs.Add(TinfoTpServ.Create)] do
        begin
          tpServico := '100000006'; {Tabela 06}
          // codAtivEcon := '00000025';
          //vlrMatEquip := 0;
          //vlrDedAlim := 0;
          //vlrDedTrans := 0;
          vlrBaseRet := 100;
          vlrRetencao := 11;
          //vlrRetSub := 0;
        end;
      end;

      with infoProcRetPr.Items[infoProcRetPr.Add(TinfoProcRetPr.Create)] do
      begin
        tpProcRetPrinc := tpAdministrativo;
        nrProcRetPrinc := '1122112';
        codSuspPrinc := 001;
        valorPrinc := 100.00;
      end;

      with infoProcRetAd.Items[infoProcRetAd.Add(TinfoProcRetPr.Create)] do
      begin
        tpProcRetPrinc := tpAdministrativo;
        nrProcRetPrinc := '1122112';
        codSuspPrinc := 001;
        valorPrinc := 100.00;
      end;

    end;
  end;
end;

procedure TForm2.GerarReinf2030;
begin
  with ACBrReinf1.Eventos.AddR2030 do
  begin
    indRetif := trOriginal;

    if ChkRetificadora.Checked then
      indRetif := trRetificacao;

    if indRetif = trRetificacao then
      nrRecibo := edRecibo.Text;

    perApur := FormatDateTime( 'yyyy-mm', Now );

    with ideEstab do
    begin
      tpInscEstab := tiCNPJ;
      nrInscEstab := edtEmitCNPJ.Text;

      with recursosRecs.New do
      begin
        cnpjOrigRecurso := '99999999999999';
        vlrTotalRec     := 1234;
        vlrTotalRet     := 0;
        // vlrTotalNRet    := 0;

        with infoRecursos.New do
        begin
          tpRepasse   := TtpRepasse(1);
          descRecurso := 'TESTE';
          vlrBruto    := 1234;
        end;

        {
        with infoProcs.New do
        begin
          tpProc  := tpTpProc(1);
          nrProc  := '1234567890';
          // codSusp  := '1234';
          vlrNRet := 1234;
        end;
        }
      end;
    end;
  end;
end;

procedure TForm2.GerarReinf2040;
begin
  with ACBrReinf1.Eventos.AddR2040 do
  begin
    indRetif := trOriginal;

    if ChkRetificadora.Checked then
      indRetif := trRetificacao;

    if indRetif = trRetificacao then
      nrRecibo := edRecibo.Text;

    perApur := FormatDateTime( 'yyyy-mm', Now );

    with ideEstab do
    begin
      tpInscEstab := tiCNPJ;
      nrInscEstab := edtEmitCNPJ.Text;

      with recursosReps.New do
      begin
        cnpjAssocDesp := '99999999999999';
        vlrTotalRep   := 1234;
        vlrTotalRet   := 0;
        // vlrTotalNRet  := 0;

        with infoRecursos.New do
        begin
          tpRepasse   := TtpRepasse(1);
          descRecurso := 'TESTE';
          vlrBruto    := 1234;
        end;

        {
        with infoProcs.New do
        begin
          tpProc  := tpTpProc(1);
          nrProc  := '1234567890';
          // codSusp  := '1234';
          vlrNRet := 1234;
        end;
        }
      end;
    end;
  end;
end;

procedure TForm2.GerarReinf2050;
begin
  with ACBrReinf1.Eventos.AddR2050 do
  begin
    indRetif := trOriginal;

    if ChkRetificadora.Checked then
      indRetif := trRetificacao;

    if indRetif = trRetificacao then
      nrRecibo := edRecibo.Text;

    perApur := FormatDateTime( 'yyyy-mm', Now );

    with infoComProd do
    begin
      with ideEstab do
      begin
        tpInscEstab       := tiCNPJ;
        nrInscEstab       := edtEmitCNPJ.Text;
        vlrRecBrutaTotal  := 9876;
        vlrCPApur         := 1234;
        vlrRatApur        := 1234;
        vlrSenarApur      := 1234;
        // vlrCPSuspTotal    := 0;
        // vlrRatSuspTotal   := 0;
        // vlrSenarSuspTotal := 0;

        with tipoComs.New do
        begin
          indCom      := TindCom(1);
          vlrRecBruta := 9876;

          {
          with infoProcs.New do
          begin
            tpProc       := tpTpProc(1);
            nrProc       := '1234567890';
            codSusp      := '1234';
            // vlrCPSusp    := 0;
            // vlrRatSusp   := 0;
            // vlrSenarSusp := 0;
          end;
          }
        end;
      end;
    end;
  end;
end;

procedure TForm2.GerarReinf2060;
begin
  with ACBrReinf1.Eventos.AddR2060 do
  begin
    indRetif := trOriginal;

    if ChkRetificadora.Checked then
      indRetif := trRetificacao;

    if indRetif = trRetificacao then
      nrRecibo := edRecibo.Text;

    perApur := FormatDateTime( 'yyyy-mm', Now );

    infoCPRB.ideEstab.tpInscEstab := TtpInsc(1);
    infoCPRB.ideEstab.nrInscEstab := edtEmitCNPJ.Text;
    infoCPRB.ideEstab.vlrRecBrutaTotal := 100;
    infoCPRB.ideEstab.vlrCPApurTotal   := 0;
    infoCPRB.ideEstab.vlrCPRBSuspTotal := 0;

    with infoCPRB.ideEstab.tipoCods.New do
    begin
      codAtivEcon := '00000025';
      vlrRecBrutaAtiv := 100;
      vlrExcRecBruta  := 0;
      vlrAdicRecBruta := 0;
      vlrBcCPRB       := 100;
      vlrCPRBapur     := 0;

      {
      with tipoAjustes.New do
      begin
        tpAjuste   := TtpAjuste(1);
        codAjuste  := caOutras;
        vlrAjuste  := 10;
        descAjuste := 'TESTE';
        dtAjuste   := FormatDateTime( 'yyyy-mm', Now );
      end;
      }
    end;

    {
    with infoCPRB.ideEstab.infoProcs.New do
    begin
      vlrCPRBSusp := 0;
      tpProc      := tpTpProc(1);
      nrProc      := '12345678901234567890';
      codSusp     := '';
    end;
    }
  end;
end;

procedure TForm2.GerarReinf2070;
begin
  // EVENTO N�O DISPONIBILIZADO AT� A VERS�O 1_02

  EXIT;

  with ACBrReinf1.Eventos.AddR2070 do
  begin
    perApur := FormatDateTime( 'yyyy-mm', Now );
  end;
end;

procedure TForm2.GerarReinf2098;
begin
  with ACBrReinf1.Eventos.AddR2098 do
  begin
    perApur := FormatDateTime( 'yyyy-mm', Now );
  end;
end;

procedure TForm2.GerarReinf2099;
begin
  with ACBrReinf1.Eventos.AddR2099 do
  begin
    perApur := FormatDateTime( 'yyyy-mm', Now );
    with ideRespInf do
    begin
      nmResp   := edContNome.Text;
      cpfResp  := edContCPF.Text;
      telefone := edContFone.Text;
      email    := edContEmail.Text;
    end;

    with infoFech do
    begin
      evtServTm     := tpSim;
      evtServPr     := tpSim;
      evtAssDespRec := tpSim;
      evtAssDespRep := tpSim;
      evtComProd    := tpSim;
      evtCPRB       := tpSim;
      evtPgtos      := tpNao;

      //compSemMovto := '2017-01'; {Somente preenchido se os outros valores forem tbNao}
    end;
  end;
end;

procedure TForm2.GerarReinf3010;
begin
  with ACBrReinf1.Eventos.AddR3010 do
  begin
    indRetif := trOriginal;

    if ChkRetificadora.Checked then
      indRetif := trRetificacao;

    if indRetif = trRetificacao then
      nrRecibo := edRecibo.Text;

    dtApuracao := Now;

    with ideEstabs.New do
    begin
      tpInscEstab := tiCNPJ;
      nrInscEstab := edtEmitCNPJ.Text;

      with boletins.New do
      begin
        nrBoletim       := '1234';
        tpCompeticao    := TtpCompeticao(1);
        categEvento     := TcategEvento(4);
        modDesportiva   := 'TESTE';
        nomeCompeticao  := 'TESTE';
        cnpjMandante    := edtEmitCNPJ.Text;
        // cnpjVisitante   := '99999999999999';
         nomeVisitante   := 'TESTE';
        pracaDesportiva := 'TESTE';
        // codMunic        := 3550308;
        uf              := 'SP';
        qtdePagantes    := 999;
        qtdeNaoPagantes := 999;

        with receitaIngressoss.New do
        begin
          tpIngresso       := TtpIngresso(1);
          descIngr         := 'TESTE';
          qtdeIngrVenda    := 999;
          qtdeIngrVendidos := 999;
          qtdeIngrDev      := 0;
          precoIndiv       := 1;
          vlrTotal         := 999;
        end;

        {
        with outrasReceitass.New do
        begin
          tpReceita   := TtpReceita(5);
          vlrReceita  := 1234;
          descReceita := 'TESTE'
        end;
        }
      end;

      with receitaTotal do
      begin
        vlrReceitaTotal  := 999;
        vlrCP            := 0;
        vlrCPSuspTotal   := 0;
        vlrReceitaClubes := 0;
        vlrRetParc       := 0;

        {
        with infoProcs.New do
        begin
          tpProc    := tpTpProc(1);
          nrProc    := '1234567890';
          // codSusp   := '1234';
          vlrCPSusp := 1234;
        end;
        }
      end;
    end;
  end;
end;

procedure TForm2.GerarReinf9000;
begin
  with ACBrReinf1.Eventos.AddR9000 do
  begin
    infoExclusao.tpEvento := cbEvento.Items.Strings[cbEvento.ItemIndex];
    infoExclusao.nrRecEvt := Trim(edRecibo.Text);

    if ( cbEvento.Text = 'R-3010' ) then
      infoExclusao.perApur  := FormatDateTime( 'yyyy-mm-dd', Now )
    else
      infoExclusao.perApur  := FormatDateTime( 'yyyy-mm', Now );
  end;
end;

function TForm2.GetTipoOperacao: TindOperacao;
begin
  case rdgOperacao.ItemIndex of
    1: Result := toAlteracao;
    2: Result := toExclusao;
  else
    Result := toInclusao;
  end;
end;

procedure TForm2.lblColaboradorClick(Sender: TObject);
begin
  OpenURL('http://acbr.sourceforge.net/drupal/?q=node/5');
end;

procedure TForm2.lblPatrocinadorClick(Sender: TObject);
begin
  OpenURL('http://acbr.sourceforge.net/drupal/?q=node/35');
end;

procedure TForm2.lblDoar1Click(Sender: TObject);
begin
  OpenURL('http://acbr.sourceforge.net/drupal/?q=node/14');
end;

procedure TForm2.lblColaboradorMouseEnter(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold,fsUnderline];
end;

procedure TForm2.lblColaboradorMouseLeave(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold];
end;

procedure TForm2.GravarConfiguracao;
Var IniFile : String;
    Ini     : TIniFile;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini');

  Ini := TIniFile.Create( IniFile );
  try
      Ini.WriteInteger( 'Certificado','SSLLib' , cbSSLLib.ItemIndex);
      Ini.WriteInteger( 'Certificado','CryptLib' , cbCryptLib.ItemIndex);
      Ini.WriteInteger( 'Certificado','HttpLib' , cbHttpLib.ItemIndex);
      Ini.WriteInteger( 'Certificado','XmlSignLib' , cbXmlSignLib.ItemIndex);
      Ini.WriteString( 'Certificado','Caminho' ,edtCaminho.Text);
      Ini.WriteString( 'Certificado','Senha'   ,edtSenha.Text);
      Ini.WriteString( 'Certificado','NumSerie',edtNumSerie.Text);

      Ini.WriteBool(   'Geral','AtualizarXML'      ,cbxAtualizarXML.Checked);
      Ini.WriteBool(   'Geral','ExibirErroSchema'  ,cbxExibirErroSchema.Checked);
      Ini.WriteString( 'Geral','FormatoAlerta'  ,edtFormatoAlerta.Text);
      Ini.WriteInteger( 'Geral','FormaEmissao',cbFormaEmissao.ItemIndex);
      Ini.WriteInteger( 'Geral','VersaoDF',cbVersaoDF.ItemIndex);
      Ini.WriteBool(   'Geral','RetirarAcentos'      ,cbxRetirarAcentos.Checked);
      Ini.WriteBool(   'Geral','Salvar'      ,ckSalvar.Checked);
      Ini.WriteString( 'Geral','PathSalvar'  ,edtPathLogs.Text);
      Ini.WriteString( 'Geral','PathSchemas'  ,edtPathSchemas.Text);

      Ini.WriteString( 'WebService','UF'        ,cbUF.Text);
      Ini.WriteInteger( 'WebService','Ambiente'  ,rgTipoAmb.ItemIndex);
      Ini.WriteBool(   'WebService','Visualizar',cbxVisualizar.Checked);
      Ini.WriteBool(   'WebService','SalvarSOAP',cbxSalvarSOAP.Checked);
      Ini.WriteBool(   'WebService','AjustarAut',cbxAjustarAut.Checked);
      Ini.WriteString( 'WebService','Aguardar'    ,edtAguardar.Text);
      Ini.WriteString( 'WebService','Tentativas'  ,edtTentativas.Text);
      Ini.WriteString( 'WebService','Intervalo'  ,edtIntervalo.Text);
      Ini.WriteInteger( 'WebService','TimeOut'   ,seTimeOut.Value);
      Ini.WriteInteger( 'WebService','SSLType' , cbSSLType.ItemIndex);

      Ini.WriteString( 'Proxy','Host'   ,edtProxyHost.Text);
      Ini.WriteString( 'Proxy','Porta'  ,edtProxyPorta.Text);
      Ini.WriteString( 'Proxy','User'   ,edtProxyUser.Text);
      Ini.WriteString( 'Proxy','Pass'   ,edtProxySenha.Text);

      Ini.WriteBool(   'Arquivos','Salvar'          ,cbxSalvarArqs.Checked);
      Ini.WriteBool(   'Arquivos','PastaMensal'     ,cbxPastaMensal.Checked);
      Ini.WriteBool(   'Arquivos','AddLiteral'      ,cbxAdicionaLiteral.Checked);
      Ini.WriteBool(   'Arquivos','SalvarPathEvento',cbxSalvaPathEvento.Checked);
      Ini.WriteBool(   'Arquivos','SepararPorCNPJ'  ,cbxSepararPorCNPJ.Checked);
      Ini.WriteString( 'Arquivos','PathReinf'  ,edtPathReinf.Text);
      Ini.WriteString( 'Arquivos','PathEvento' ,edtPathEvento.Text);

      Ini.WriteString( 'Emitente','CNPJ'       ,edtEmitCNPJ.Text);
      Ini.WriteString( 'Emitente','IE'         ,edtEmitIE.Text);
      Ini.WriteString( 'Emitente','RazaoSocial',edtEmitRazao.Text);
      Ini.WriteString( 'Emitente','Fantasia'   ,edtEmitFantasia.Text);
      Ini.WriteString( 'Emitente','Fone'       ,edtEmitFone.Text);
      Ini.WriteString( 'Emitente','CEP'        ,edtEmitCEP.Text);
      Ini.WriteString( 'Emitente','Logradouro' ,edtEmitLogradouro.Text);
      Ini.WriteString( 'Emitente','Numero'     ,edtEmitNumero.Text);
      Ini.WriteString( 'Emitente','Complemento',edtEmitComp.Text);
      Ini.WriteString( 'Emitente','Bairro'     ,edtEmitBairro.Text);
      Ini.WriteString( 'Emitente','CodCidade'  ,edtEmitCodCidade.Text);
      Ini.WriteString( 'Emitente','Cidade'     ,edtEmitCidade.Text);
      Ini.WriteString( 'Emitente','UF'         ,edtEmitUF.Text);

      Ini.WriteString( 'Contato', 'Nome'        ,edContNome.Text);
      Ini.WriteString( 'Contato', 'CPF'         ,edContCPF.Text);
      Ini.WriteString( 'Contato', 'Fone'        ,edContFone.Text);
      Ini.WriteString( 'Contato', 'Celular'     ,edContCel.Text);
      Ini.WriteString( 'Contato', 'Email'       ,edContEmail.Text);

      Ini.WriteString( 'SofHouse', 'RazaoSocial',edSoftRazao.Text);
      Ini.WriteString( 'SofHouse', 'CNPJ'       ,edSoftCNPJ.Text);
      Ini.WriteString( 'SofHouse', 'Email'      ,edSoftEmail.Text);
      Ini.WriteString( 'SofHouse', 'Fone'       ,edSoftFone.Text);
      Ini.WriteString( 'SofHouse', 'Contato'    ,edSoftContato.Text);
  finally
     Ini.Free;
  end;
end;

procedure TForm2.LerConfiguracao;
var
  IniFile, PathMensal: String;
  Ini: TIniFile;
  Ok: Boolean;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini');

  Ini := TIniFile.Create( IniFile );
  try
    cbSSLLib.ItemIndex:= Ini.ReadInteger( 'Certificado','SSLLib' ,0);
    cbCryptLib.ItemIndex := Ini.ReadInteger( 'Certificado','CryptLib' , 0);
    cbHttpLib.ItemIndex := Ini.ReadInteger( 'Certificado','HttpLib' , 0);
    cbXmlSignLib.ItemIndex := Ini.ReadInteger( 'Certificado','XmlSignLib' , 0);
    edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'');
    edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'');
    edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','');

    ACBrReinf1.Configuracoes.Certificados.ArquivoPFX  := edtCaminho.Text;
    ACBrReinf1.Configuracoes.Certificados.Senha       := edtSenha.Text;
    ACBrReinf1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
    ACBrReinf1.Configuracoes.Certificados.VerificarValidade := True;

    cbxAtualizarXML.Checked    := Ini.ReadBool(   'Geral','AtualizarXML',True);
    cbxExibirErroSchema.Checked    := Ini.ReadBool(   'Geral','ExibirErroSchema',True);
    edtFormatoAlerta.Text    := Ini.ReadString( 'Geral','FormatoAlerta'  ,'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.');
    cbFormaEmissao.ItemIndex := Ini.ReadInteger( 'Geral','FormaEmissao',0);
    cbVersaoDF.ItemIndex := Ini.ReadInteger( 'Geral','VersaoDF',0);
    ckSalvar.Checked     := Ini.ReadBool(   'Geral','Salvar',True);
    cbxRetirarAcentos.Checked := Ini.ReadBool(   'Geral','RetirarAcentos',True);
    edtPathLogs.Text     := Ini.ReadString( 'Geral','PathSalvar'  ,PathWithDelim(ExtractFilePath(Application.ExeName))+'Logs');
    edtPathSchemas.Text  := Ini.ReadString( 'Geral','PathSchemas'  ,PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\Reinf');

    ACBrReinf1.Configuracoes.Geral.VersaoDF := TVersaoReinf(cbVersaoDF.ItemIndex);

    with ACBrReinf1.Configuracoes.Geral do
    begin
      SSLLib                := TSSLLib(cbSSLLib.ItemIndex);
      SSLCryptLib           := TSSLCryptLib(cbCryptLib.ItemIndex);
      SSLHttpLib            := TSSLHttpLib(cbHttpLib.ItemIndex);
      SSLXmlSignLib         := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
      AtualizaSSLLibsCombo;
      ExibirErroSchema := cbxExibirErroSchema.Checked;
      RetirarAcentos   := cbxRetirarAcentos.Checked;
      FormatoAlerta    := edtFormatoAlerta.Text;
      FormaEmissao     := TpcnTipoEmissao(cbFormaEmissao.ItemIndex);
      Salvar           := ckSalvar.Checked;
    end;

    cbUF.ItemIndex        := cbUF.Items.IndexOf(Ini.ReadString( 'WebService','UF','SP'));
    rgTipoAmb.ItemIndex   := Ini.ReadInteger( 'WebService','Ambiente'  ,0);
    cbxVisualizar.Checked  := Ini.ReadBool(    'WebService','Visualizar',False);
    cbxSalvarSOAP.Checked := Ini.ReadBool(    'WebService','SalvarSOAP',False);
    cbxAjustarAut.Checked  := Ini.ReadBool(   'WebService','AjustarAut' ,False);
    edtAguardar.Text       := Ini.ReadString( 'WebService','Aguardar'  ,'0');
    edtTentativas.Text     := Ini.ReadString( 'WebService','Tentativas','5');
    edtIntervalo.Text      := Ini.ReadString( 'WebService','Intervalo' ,'0');
    seTimeOut.Value        := Ini.ReadInteger('WebService','TimeOut'  ,5000);
    cbSSLType.ItemIndex    := Ini.ReadInteger('WebService','SSLType' , 0);
    edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'');
    edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'');
    edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'');
    edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'');

    with ACBrReinf1.SSL do
    begin
      DescarregarCertificado;
      SSLDgst := dgstSHA256;
      SSLType := TSSLType( cbSSLType.ItemIndex );
    end;

    with ACBrReinf1.Configuracoes.WebServices do
    begin
      if ( rgTipoAmb.ItemIndex = 0 ) then
        Ambiente := taProducao
      else
        Ambiente := taHomologacao;

      UF         := cbUF.Text;
      Visualizar := cbxVisualizar.Checked;
      Salvar     := cbxSalvarSOAP.Checked;
      AjustaAguardaConsultaRet := cbxAjustarAut.Checked;

      if NaoEstaVazio(edtAguardar.Text)then
        AguardarConsultaRet := ifThen(StrToInt(edtAguardar.Text)<1000,StrToInt(edtAguardar.Text)*1000,StrToInt(edtAguardar.Text))
      else
        edtAguardar.Text := IntToStr(AguardarConsultaRet);

      if NaoEstaVazio(edtTentativas.Text) then
        Tentativas := StrToInt(edtTentativas.Text)
      else
        edtTentativas.Text := IntToStr(Tentativas);

      if NaoEstaVazio(edtIntervalo.Text) then
        IntervaloTentativas := ifThen(StrToInt(edtIntervalo.Text)<1000,StrToInt(edtIntervalo.Text)*1000,StrToInt(edtIntervalo.Text))
      else
        edtIntervalo.Text := IntToStr(ACBrReinf1.Configuracoes.WebServices.IntervaloTentativas);

      TimeOut := seTimeOut.Value;
      ProxyHost := edtProxyHost.Text;
      ProxyPort := edtProxyPorta.Text;
      ProxyUser := edtProxyUser.Text;
      ProxyPass := edtProxySenha.Text;
    end;

    cbxSalvarArqs.Checked       := Ini.ReadBool(   'Arquivos','Salvar'     ,false);
    cbxPastaMensal.Checked      := Ini.ReadBool(   'Arquivos','PastaMensal',false);
    cbxAdicionaLiteral.Checked  := Ini.ReadBool(   'Arquivos','AddLiteral' ,false);
    cbxSalvaPathEvento.Checked  := Ini.ReadBool(   'Arquivos','SalvarPathEvento',false);
    cbxSepararPorCNPJ.Checked   := Ini.ReadBool(   'Arquivos','SepararPorCNPJ',false);
    edtPathReinf.Text           := Ini.ReadString( 'Arquivos','PathReinf' ,'');
    edtPathEvento.Text          := Ini.ReadString( 'Arquivos','PathEvento','');

    with ACBrReinf1.Configuracoes.Arquivos do
    begin
      SepararPorCNPJ     := cbxSepararPorCNPJ.Checked;
      Salvar             := cbxSalvarArqs.Checked;
      SepararPorMes      := cbxPastaMensal.Checked;
      AdicionarLiteral   := cbxAdicionaLiteral.Checked;
      PathSalvar         := edtPathLogs.Text;
      PathSchemas        := edtPathSchemas.Text;
    end;

    edtEmitCNPJ.Text       := Ini.ReadString( 'Emitente','CNPJ'       ,'');
    edtEmitIE.Text         := Ini.ReadString( 'Emitente','IE'         ,'');
    edtEmitRazao.Text      := Ini.ReadString( 'Emitente','RazaoSocial','');
    edtEmitFantasia.Text   := Ini.ReadString( 'Emitente','Fantasia'   ,'');
    edtEmitFone.Text       := Ini.ReadString( 'Emitente','Fone'       ,'');
    edtEmitCEP.Text        := Ini.ReadString( 'Emitente','CEP'        ,'');
    edtEmitLogradouro.Text := Ini.ReadString( 'Emitente','Logradouro' ,'');
    edtEmitNumero.Text     := Ini.ReadString( 'Emitente','Numero'     ,'');
    edtEmitComp.Text       := Ini.ReadString( 'Emitente','Complemento','');
    edtEmitBairro.Text     := Ini.ReadString( 'Emitente','Bairro'     ,'');
    edtEmitCodCidade.Text  := Ini.ReadString( 'Emitente','CodCidade'  ,'');
    edtEmitCidade.Text     :=Ini.ReadString( 'Emitente','Cidade'     ,'');
    edtEmitUF.Text         := Ini.ReadString( 'Emitente','UF'         ,'');

    edContNome.Text        := Ini.ReadString( 'Contato', 'Nome'        ,'');
    edContCPF.Text         := Ini.ReadString( 'Contato', 'CPF'         ,'');
    edContFone.Text        := Ini.ReadString( 'Contato', 'Fone'        ,'');
    edContCel.Text         := Ini.ReadString( 'Contato', 'Celular'     ,'');
    edContEmail.Text       := Ini.ReadString( 'Contato', 'Email'       ,'');

    edSoftRazao.Text       := Ini.ReadString( 'SofHouse', 'RazaoSocial','');
    edSoftCNPJ.Text        := Ini.ReadString( 'SofHouse', 'CNPJ'       ,'');
    edSoftEmail.Text       := Ini.ReadString( 'SofHouse', 'Email'      ,'');
    edSoftFone.Text        := Ini.ReadString( 'SofHouse', 'Fone'       ,'');
    edSoftContato.Text     := Ini.ReadString( 'SofHouse', 'Contato'    ,'');

    ACBrReinf1.Configuracoes.Geral.IdContribuinte := edtEmitCNPJ.Text;

    PathMensal := ACBrReinf1.Configuracoes.Arquivos.GetPathReinf(0);

    ACBrReinf1.Configuracoes.Arquivos.PathSalvar := PathMensal;
  finally
     Ini.Free;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
 T: TSSLLib;
 I: TpcnTipoEmissao;
 U: TSSLCryptLib;
 V: TSSLHttpLib;
 X: TSSLXmlSignLib;
 Y: TSSLType;
 R: TVersaoReinf;
begin
  cbSSLLib.Items.Clear;
  for T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) );
  cbSSLLib.ItemIndex := 0;

  cbCryptLib.Items.Clear;
  for U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) );
  cbCryptLib.ItemIndex := 0;

  cbHttpLib.Items.Clear;
  for V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) );
  cbHttpLib.ItemIndex := 0;

  cbXmlSignLib.Items.Clear;
  for X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) );
  cbXmlSignLib.ItemIndex := 0;

  cbSSLType.Items.Clear;
  for Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) );
  cbSSLType.ItemIndex := 0;

  cbFormaEmissao.Items.Clear;
  for I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) );
  cbFormaEmissao.Items[0] := 'teNormal';
  cbFormaEmissao.ItemIndex := 0;

  cbVersaoDF.Items.Clear;
  for R := Low(TVersaoReinf) to High(TVersaoReinf) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TVersaoReinf), integer(R) ) );
  cbVersaoDF.ItemIndex := 0;

  LerConfiguracao;
  PageControl1.ActivePageIndex := 0;

  ACBrReinf1.Configuracoes.WebServices.Salvar := true;
end;

procedure TForm2.AtualizaSSLLibsCombo;
begin
 cbSSLLib.ItemIndex := Integer( ACBrReinf1.Configuracoes.Geral.SSLLib );
 cbCryptLib.ItemIndex := Integer( ACBrReinf1.Configuracoes.Geral.SSLCryptLib );
 cbHttpLib.ItemIndex := Integer( ACBrReinf1.Configuracoes.Geral.SSLHttpLib );
 cbXmlSignLib.ItemIndex := Integer( ACBrReinf1.Configuracoes.Geral.SSLXmlSignLib );

 cbSSLType.Enabled := (ACBrReinf1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]);
end;

procedure TForm2.btnSalvarConfigClick(Sender: TObject);
begin
 GravarConfiguracao;
 LerConfiguracao;
end;

procedure TForm2.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
var
  I: Integer;
  ASerie: String;
  AddRow: Boolean;
begin
  frSelecionarCertificado := TfrSelecionarCertificado.Create(Self);
  try
    ACBrReinf1.SSL.LerCertificadosStore;
    AddRow := False;

    with frSelecionarCertificado.StringGrid1 do
    begin
      ColWidths[0] := 220;
      ColWidths[1] := 250;
      ColWidths[2] := 120;
      ColWidths[3] := 80;
      ColWidths[4] := 150;
      Cells[ 0, 0 ] := 'Num.S�rie';
      Cells[ 1, 0 ] := 'Raz�o Social';
      Cells[ 2, 0 ] := 'CNPJ';
      Cells[ 3, 0 ] := 'Validade';
      Cells[ 4, 0 ] := 'Certificadora';
    end;

    For I := 0 to ACBrReinf1.SSL.ListaCertificados.Count-1 do
    begin
      with ACBrReinf1.SSL.ListaCertificados[I] do
      begin
        ASerie := NumeroSerie;
        if (CNPJ <> '') then
        begin
          with frSelecionarCertificado.StringGrid1 do
          begin
            if Addrow then
              RowCount := RowCount + 1;
              
            Cells[ 0, RowCount-1] := NumeroSerie;
            Cells[ 1, RowCount-1] := RazaoSocial;
            Cells[ 2, RowCount-1] := CNPJ;
            Cells[ 3, RowCount-1] := FormatDateBr(DataVenc);
            Cells[ 4, RowCount-1] := Certificadora;
            AddRow := True;
          end;
        end;
      end;
    end;

    frSelecionarCertificado.ShowModal;

    if frSelecionarCertificado.ModalResult = mrOK then
      edtNumSerie.Text := frSelecionarCertificado.StringGrid1.Cells[ 0,
                            frSelecionarCertificado.StringGrid1.Row];

  finally
     frSelecionarCertificado.Free;
  end;
end;

procedure TForm2.sbtnGetCertClick(Sender: TObject);
begin
  edtNumSerie.Text := ACBrReinf1.SSL.SelecionarCertificado;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  ShowMessage( FormatDateBr(ACBrReinf1.SSL.CertDataVenc) );
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  ShowMessage( ACBrReinf1.SSL.CertNumeroSerie );
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  ShowMessage( ACBrReinf1.SSL.CertSubjectName + sLineBreak + sLineBreak +
               'Raz�o Social: '+ACBrReinf1.SSL.CertRazaoSocial);   
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  ShowMessage( ACBrReinf1.SSL.CertCNPJ );
end;

procedure TForm2.Button10Click(Sender: TObject);
begin
 ShowMessage( ACBrReinf1.SSL.CertIssuerName + sLineBreak + sLineBreak +
              'Certificadora: '+ACBrReinf1.SSL.CertCertificadora);
end;

procedure TForm2.Button6Click(Sender: TObject);
var
  Ahash: AnsiString;
begin
  Ahash := ACBrReinf1.SSL.CalcHash(edHash.Text, dgstSHA256, outBase64, cbAssinar.Checked);
  mmoRet.Lines.Add( Ahash );
  PageControl1.ActivePageIndex := 1;
end;

procedure TForm2.Button7Click(Sender: TObject);
var
  Acao: String;
  OldUseCert: Boolean;
begin
  Acao := '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'+
     '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" '+
     'xmlns:cli="http://cliente.bean.master.sigep.bsb.correios.com.br/"> '+
     ' <soapenv:Header/>'+
     ' <soapenv:Body>' +
     ' <cli:consultaCEP>' +
     ' <cep>18270-170</cep>' +
     ' </cli:consultaCEP>' +
     ' </soapenv:Body>' +
     ' </soapenv:Envelope>';

  OldUseCert := ACBrReinf1.SSL.UseCertificateHTTP;
  ACBrReinf1.SSL.UseCertificateHTTP := False;
  try
    mmoRet.Lines.Text := ACBrReinf1.SSL.Enviar(Acao, 'https://apps.correios.com.br/SigepMasterJPA/AtendeClienteService/AtendeCliente?wsdl', '');
  finally
    ACBrReinf1.SSL.UseCertificateHTTP := OldUseCert;
  end;
  PageControl1.ActivePageIndex := 1;
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
  with ACBrReinf1.SSL do
  begin
     CarregarCertificadoPublico(mmoRet.Lines.Text);
     mmoRet.Lines.Add(CertIssuerName);
     mmoRet.Lines.Add(CertRazaoSocial);
     mmoRet.Lines.Add(CertCNPJ);
     mmoRet.Lines.Add(CertSubjectName);
     mmoRet.Lines.Add(CertNumeroSerie);
    PageControl1.ActivePageIndex := 1;
  end;
end;

procedure TForm2.sbtnPathSalvarClick(Sender: TObject);
begin
 PathClick(edtPathLogs);
end;

procedure TForm2.spPathSchemasClick(Sender: TObject);
begin
 PathClick(edtPathSchemas);
end;

procedure TForm2.PathClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(TEdit(Sender).Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := TEdit(Sender).Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    TEdit(Sender).Text := Dir;
end;

procedure TForm2.sbPathReinfClick(Sender: TObject);
begin
 PathClick(edtPathReinf);
end;

procedure TForm2.sbPathEventoClick(Sender: TObject);
begin
 PathClick(edtPathEvento);
end;

procedure TForm2.cbSSLLibChange(Sender: TObject);
begin
  try
    if cbSSLLib.ItemIndex <> -1 then
      ACBrReinf1.Configuracoes.Geral.SSLLib := TSSLLib(cbSSLLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure TForm2.cbCryptLibChange(Sender: TObject);
begin
  try
    if cbCryptLib.ItemIndex <> -1 then
      ACBrReinf1.Configuracoes.Geral.SSLCryptLib := TSSLCryptLib(cbCryptLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure TForm2.cbHttpLibChange(Sender: TObject);
begin
  try
    if cbHttpLib.ItemIndex <> -1 then
      ACBrReinf1.Configuracoes.Geral.SSLHttpLib := TSSLHttpLib(cbHttpLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure TForm2.cbXmlSignLibChange(Sender: TObject);
begin
  try
    if cbXmlSignLib.ItemIndex <> -1 then
      ACBrReinf1.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure TForm2.cbSSLTypeChange(Sender: TObject);
begin
  if cbSSLType.ItemIndex <> -1 then
    ACBrReinf1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);
end;

procedure TForm2.btnValidarSchemaClick(Sender: TObject);
var
  tsAux1: TStringList;
  Erro: String;
begin
  OpenDialog1.Title := 'Selecione o Arquivo';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if not OpenDialog1.Execute then
    exit;

  tsAux1 := TStringList.Create;
  tsAux1.LoadFromFile( OpenDialog1.FileName );

  OpenDialog1.Title := 'Selecione o Schema';
  OpenDialog1.DefaultExt := '*.XSD';
  OpenDialog1.Filter := 'Arquivos XSD (*.XSD)|*.XSD|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if not OpenDialog1.Execute then
    exit;

  ACBrReinf1.SSL.Validar(tsAux1.Text, // Copy( tsAux1.Text, 1, Length(tsAux1.Text) - 2 ),
                         OpenDialog1.FileName,
                         Erro);
  FreeAndNil( tsAux1 );
  ShowMessage(Erro);
end;

procedure TForm2.btnValidarAssinaturaClick(Sender: TObject);
var
  tsAux1: TStringList;
  Erro: String;
begin
  OpenDialog1.Title := 'Selecione o Arquivo';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if not OpenDialog1.Execute then
    exit;

  tsAux1 := TStringList.Create;
  tsAux1.LoadFromFile( OpenDialog1.FileName );

  if ACBrReinf1.SSL.VerificarAssinatura(Copy( tsAux1.Text, 1, Length(tsAux1.Text) - 2 ),
                                     Erro,
                                     '',
                                     'Signature') then
    ShowMessage('OK')
  else
    ShowMessage(ifthen( Erro = '', 'Assinatura Inv�lida', Erro ));

  FreeAndNil( tsAux1 );
end;

procedure TForm2.chk1000Click(Sender: TObject);
begin
  rdgOperacao.Visible     := ( chk1000.Checked or
                               chk1070.Checked );

  ChkRetificadora.Visible := ( chk2010.Checked or
                               chk2020.Checked or
                               chk2030.Checked or
                               chk2040.Checked or
                               chk2050.Checked or
                               chk2060.Checked or
                               chk2070.Checked or
                               chk3010.Checked );

  edRecibo.Visible        := ( chk2010.Checked or
                               chk2020.Checked or
                               chk2030.Checked or
                               chk2040.Checked or
                               chk2050.Checked or
                               chk2060.Checked or
                               chk2070.Checked or
                               chk3010.Checked or
                               chk9000.Checked );

  lblRecibo.Visible       := edRecibo.Visible;

  cbEvento.Visible        := ( chk9000.Checked );

  lblEvento.Visible       := cbEvento.Visible;
end;

{

9.2.Eventos
Inicialmente, o ambiente de Produ��o Restrita ser� disponibilizado contendo os
eventos abaixo que foram implementados de acordo com a vers�o 1.1 do leiaute e da vers�o
1_01_01 dos schemas XML:
1. R-1000 - Informa��es do Empregador/Contribuinte
2. R-1070 - Tabela de Processos Administrativos/Judiciais
3. R-2010 � Reten��o Contribui��o Previdenci�ria - Servi�os Tomados
4. R-2020 � Reten��o Contribui��o Previdenci�ria - Servi�os Prestados
  5. R-2030 � Recursos Recebidos por Associa��o Desportiva  (N�o vamos fazer)
  6. R-2040 � Recursos Repassados para Associa��o Desportiva (N�o Vamos Fazer)
7. R-2098 � Reabertura dos Eventos Peri�dicos
8. R-2099 � Fechamento dos Eventos Peri�dicos
9. R-9000 � Exclus�o de Eventos
As datas para disponibiliza��o de vers�es futuras da EFD-REINF nos ambientes de
Produ��o Restrita e Produ��o ser�o divulgadas oportunamente.

}

end.


