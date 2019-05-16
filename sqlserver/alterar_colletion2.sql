USE sorocred
go

select count(1) from INFORMATION_SCHEMA.TABLE_CONSTRAINTS;
--187

select count(1) from sys.indexes where   type > 0;
--385

--SQL_Latin1_General_CP1_CI_AS

ALTER TABLE autorizacao_pagamento  DROP CONSTRAINT FK_AUTORIZA_REFERENCE_BENEFICI;
ALTER TABLE autorizacao_pagamento  DROP CONSTRAINT FK_AUTORIZA_REFERENCE_PROCESSO;
ALTER TABLE autorizacao_pagamento  DROP CONSTRAINT FK_AUTORIZA_REFERENCE_STATUS_P;
ALTER TABLE beneficiario  DROP CONSTRAINT grau_parentesco_beneficiario_FK1;
ALTER TABLE beneficiario  DROP CONSTRAINT processo_beneficio_beneficiario_FK1;
ALTER TABLE beneficiario  DROP CONSTRAINT tipo_beneficiario_beneficiario_FK1;
ALTER TABLE beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto  DROP CONSTRAINT beneficiario_beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto_FK1;
ALTER TABLE beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto  DROP CONSTRAINT processo_beneficioXreservaXcobertura_tipo_produto_beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto_FK1;
ALTER TABLE beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto  DROP CONSTRAINT beneficiario_beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto_FK1;
ALTER TABLE beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto  DROP CONSTRAINT processo_beneficioXreservaXsubcobertura_tipo_produto_beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto_FK1;
ALTER TABLE boleto_franquia  DROP CONSTRAINT processo_beneficio_boleto_franquia_FK1;
ALTER TABLE correspondenciaXdestinatario  DROP CONSTRAINT FK_CORRESPO_REFERENCE_CORRESPO;
ALTER TABLE correspondenciaXdestinatario  DROP CONSTRAINT FK_CORRESPO_REFERENCE_DESTINAT;
ALTER TABLE dados_entrega  DROP CONSTRAINT beneficiario_dados_entrega_FK1;
ALTER TABLE dados_meio_pagamento  DROP CONSTRAINT beneficiario_dados_meio_pagamento_FK1;
ALTER TABLE dados_sinistro  DROP CONSTRAINT processo_beneficio_dados_sinistro_FK1;
ALTER TABLE documentacao  DROP CONSTRAINT forma_confirmacao_documentacao_FK1;
ALTER TABLE documentacao  DROP CONSTRAINT processo_beneficio_documentacao_FK1;
ALTER TABLE documentacao  DROP CONSTRAINT status_documentacao_documentacao_FK1;
ALTER TABLE etl_controle_job  DROP CONSTRAINT FK__etl_contr__id_jo__0722D609;
ALTER TABLE etl_controle_job  DROP CONSTRAINT FK__etl_contr__id_jo__11606D5A;
ALTER TABLE etl_controle_job  DROP CONSTRAINT FK__etl_contr__id_jo__1CF21B97;
ALTER TABLE fechamento_analitico  DROP CONSTRAINT FK__fechament__id_fe__12549193;
ALTER TABLE fechamento_sintetico  DROP CONSTRAINT FK__fechament__id_fe__1348B5CC;
ALTER TABLE lance  DROP CONSTRAINT processo_beneficio_lance_FK1;
ALTER TABLE local_atendimento  DROP CONSTRAINT processo_beneficio_local_atendimento_FK1;
ALTER TABLE pagamento  DROP CONSTRAINT status_pagamento_pagamento_FK1;
ALTER TABLE pagamento_fatura  DROP CONSTRAINT status_fatura_pagamento_fatura_FK1;
ALTER TABLE pagamento_fatura_comissao  DROP CONSTRAINT pagamento_fatura_pagamento_fatura_comissao_FK1;
ALTER TABLE pagamento_parcial  DROP CONSTRAINT FK_pagamentoparcial_status;
ALTER TABLE prestador_servicoXprocesso_beneficioXreservaXcobertura_tipo_produto  DROP CONSTRAINT proc_benXresXcob_tp_prod_proc_benXpres_servXproc_benXresXcob_tp_prod_FK1;
ALTER TABLE prestador_servicoXprocesso_beneficioXreservaXsubcobertura_tipo_produto  DROP CONSTRAINT proc_benXresXsubcob_tp_prod_proc_benXprest_servXproc_benefXresXsubcob_tp_prod_FK1;
ALTER TABLE processo_beneficio  DROP CONSTRAINT processo_beneficio_processo_beneficio_FK1;
ALTER TABLE processo_beneficio  DROP CONSTRAINT status_processo_processo_beneficio_FK1;
ALTER TABLE processo_beneficio_motivo  DROP CONSTRAINT beneficiario_processo_beneficio_motivo_FK1;
ALTER TABLE processo_beneficio_motivo  DROP CONSTRAINT forma_confirmacao_processo_beneficio_motivo_FK1;
ALTER TABLE processo_beneficio_motivo  DROP CONSTRAINT processo_beneficio_processo_beneficio_motivo_FK1;
ALTER TABLE processo_beneficio_observacao  DROP CONSTRAINT processo_beneficio_processo_beneficio_observacao_FK1;
ALTER TABLE processo_beneficio_pagamento  DROP CONSTRAINT processo_beneficio_processo_beneficio_pagamento_FK1;
ALTER TABLE processo_beneficio_pagamento_item  DROP CONSTRAINT processo_beneficio_pagamento_processo_beneficio_pagamento_item_FK1;
ALTER TABLE processo_beneficio_pagamento_item_parcelas  DROP CONSTRAINT FK_PROCESSO_REFERENCE_PROCESSO_BENEFICIO_PAGAMENTO_ITEM;
ALTER TABLE processo_beneficio_pagamento_item_parcelas  DROP CONSTRAINT FK_PROCESSO_REFERENCE_STATUS_PAGAMENTO;
ALTER TABLE processo_beneficio_pagamentoXcampos_meio_pagamento  DROP CONSTRAINT FK_PROCESSO_REFERENCE_PROCESSO;
ALTER TABLE processo_beneficio_pagamentoXcampos_meio_pagamento  DROP CONSTRAINT FK_PROCESSO_REFERENCE_PROCESSO_ITEM;
ALTER TABLE processo_beneficioXacesso_beneficioXcobertura_tipo_produto  DROP CONSTRAINT processo_beneficio_processo_beneficioXacesso_beneficioXcobertura_tipo_produto_FK1;
ALTER TABLE processo_beneficioXacesso_beneficioXsubcobertura_tipo_produto  DROP CONSTRAINT processo_beneficio_processo_beneficioXacesso_beneficioXsubcobertura_tipo_produto_FK1;
ALTER TABLE processo_beneficioXbem_adquirido  DROP CONSTRAINT processo_beneficio_processo_beneficioXbem_adquirido_FK1;
ALTER TABLE processo_beneficioXdados_produto  DROP CONSTRAINT processo_beneficio_processo_beneficioXdados_produto_FK1;
ALTER TABLE processo_beneficioXreservaXcobertura_tipo_produto  DROP CONSTRAINT processo_beneficio_processo_beneficioXreservaXcobertura_tipo_produto_FK1;
ALTER TABLE processo_beneficioXreservaXcobertura_tipo_produto  DROP CONSTRAINT status_reserva_processo_beneficio_processo_beneficioXreservaXcobertura_tipo_produto_FK1;
ALTER TABLE processo_beneficioXreservaXcobertura_tipo_produto_historico  DROP CONSTRAINT processo_beneficioXreservaXcobertura_tipo_produto_processo_beneficioXreservaXcobertura_tipo_produto_historico_FK1;
ALTER TABLE processo_beneficioXreservaXcobertura_tipo_produto_historico  DROP CONSTRAINT status_reserva_processo_beneficio_processo_beneficioXreservaXcobertura_tipo_produto_historico_FK1;
ALTER TABLE processo_beneficioXreservaXsubcobertura_tipo_produto  DROP CONSTRAINT processo_beneficio_processo_beneficioXreservaXsubcobertura_tipo_produto_FK1;
ALTER TABLE processo_beneficioXreservaXsubcobertura_tipo_produto  DROP CONSTRAINT status_reserva_processo_beneficio_processo_beneficioXreservaXsubcobertura_tipo_produto_FK1;
ALTER TABLE processo_beneficioXreservaXsubcobertura_tipo_produto_historico  DROP CONSTRAINT processo_beneficioXreservaXsubcobertura_tipo_produto_processo_beneficioXreservaXsubcobertura_tipo_produto_historico_FK1;
ALTER TABLE processo_beneficioXreservaXsubcobertura_tipo_produto_historico  DROP CONSTRAINT status_reserva_processo_beneficio_processo_beneficioXreservaXsubcobertura_tipo_produto_historico_FK1;
ALTER TABLE resposta_avaliacao_risco  DROP CONSTRAINT processo_beneficio_resposta_avaliacao_risco_FK1;
ALTER TABLE vistoria_pericia  DROP CONSTRAINT processo_beneficio_vistoria_pericia_FK1;
ALTER TABLE vistoria_pericia  DROP CONSTRAINT status_pericia_vistoria_pericia_FK1;
ALTER TABLE [dbo].[controle_alt_pagamento] DROP CONSTRAINT [FK_controle_alt_pagamento];
 


ALTER TABLE autorizacao_pagamento DROP CONSTRAINT PK_AUTORIZACAO_PAGAMENTO;
ALTER TABLE autorizacao_pagamentoXcampos_meio_pagamento DROP CONSTRAINT PK_AUTORIZACAO_PAGAMENTOXCAMPO;
ALTER TABLE beneficiario DROP CONSTRAINT beneficiario_PK;
ALTER TABLE beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto DROP CONSTRAINT beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto_PK;
ALTER TABLE beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto DROP CONSTRAINT beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto_PK;
ALTER TABLE boleto_franquia DROP CONSTRAINT boleto_franquia_PK;
ALTER TABLE campanhaXmailing DROP CONSTRAINT PK_campanhaXmailing;
ALTER TABLE cliente DROP CONSTRAINT PK__cliente__1DB06A4F;
ALTER TABLE cliente_dados_meio_pagto DROP CONSTRAINT cliente_dados_meio_pagto_PK;
ALTER TABLE cliente_dados_meio_pagto_historico DROP CONSTRAINT cliente_dados_meio_pagto_historico_PK;
ALTER TABLE contato DROP CONSTRAINT PK__cliente__1DB06A4FF;
ALTER TABLE controle_cotacao DROP CONSTRAINT controle_cotacao_PK;
ALTER TABLE controle_proposta DROP CONSTRAINT controle_proposta_PK;
ALTER TABLE correspondencia DROP CONSTRAINT PK_CORRESPONDENCIA;
ALTER TABLE correspondenciaXdestinatario DROP CONSTRAINT PK_CORRESPONDENCIAXDESTINATARI;
ALTER TABLE corretor_cotacao DROP CONSTRAINT PK_corretor_cotacao;
ALTER TABLE cotacao_cliente DROP CONSTRAINT cotacao_cliente_PK;
ALTER TABLE cotacao_cliente_dados_calculo DROP CONSTRAINT cotacao_cliente_dados_calculo_PK;
ALTER TABLE cotacao_cliente_dados_calculo_cobertura DROP CONSTRAINT cotacao_cliente_dados_calculo_cobertura_PK;
ALTER TABLE cotacao_cliente_dados_impostos DROP CONSTRAINT cotacao_cliente_dados_impostos_PK;
ALTER TABLE cotacao_clienteXfranquia DROP CONSTRAINT cotacao_clienteXfranquia_PK;
ALTER TABLE cotacao_clienteXparcelas DROP CONSTRAINT cotacao_clienteXparcelas_PK;
ALTER TABLE cotacao_clienteXremuneracao_corretor DROP CONSTRAINT cotacao_clienteXremuneracao_corretor_PK;
ALTER TABLE cotacao_clienteXvalores_beneficio DROP CONSTRAINT cotacao_clienteXvalores_beneficio_PK;
ALTER TABLE dados_beneficiarios DROP CONSTRAINT dados_beneficiarios_PK;
ALTER TABLE dados_cliente DROP CONSTRAINT PK__dados_cliente__17F790F9;
ALTER TABLE dados_contato DROP CONSTRAINT dados_contato_PK;
ALTER TABLE dados_declaracao_saude DROP CONSTRAINT dados_declaracao_saude_PK;
ALTER TABLE dados_declaracao_saudeXtipo_participante DROP CONSTRAINT dados_declaracao_saudeXtipo_participante_PK;
ALTER TABLE dados_entrega DROP CONSTRAINT dados_entrega_PK;
ALTER TABLE dados_meio_pagamento DROP CONSTRAINT dados_meio_pagamento_PK;
ALTER TABLE dados_motivo_contato DROP CONSTRAINT dados_motivo_contato_PK;
ALTER TABLE dados_motivo_contato_adicional DROP CONSTRAINT dados_motivo_contato_adicional_PK;
ALTER TABLE dados_produto DROP CONSTRAINT PK__dados_produto__3C34F16F;
ALTER TABLE dados_produto_cotacao DROP CONSTRAINT dados_produto_cotacao_PK;
ALTER TABLE dados_sinistro DROP CONSTRAINT dados_sinistro_PK;
ALTER TABLE destinatario_remetente DROP CONSTRAINT PK_DESTINATARIO_REMETENTE;
ALTER TABLE documentacao DROP CONSTRAINT documentacao_PK;
ALTER TABLE etl_controle_job DROP CONSTRAINT PK__etl_cont__576E096AC7344605;
ALTER TABLE etl_job DROP CONSTRAINT PK__etl_job__D366B1F7B36DBD4C;
ALTER TABLE etl_venda_canc DROP CONSTRAINT PK__etl_vend__74D71140A8CF415A;
ALTER TABLE extracao_agenciamento DROP CONSTRAINT PK__extracao__F8ECCD98DE350195;
ALTER TABLE fechamento_analitico DROP CONSTRAINT PK__fechamen__C7E74E700B2C3A68;
ALTER TABLE fechamento_data DROP CONSTRAINT PK__fechamen__2B3C9FDD809D060A;
ALTER TABLE fechamento_sintetico DROP CONSTRAINT PK__fechamen__205A4AF90BE57B1F;
ALTER TABLE forma_confirmacao DROP CONSTRAINT forma_confirmacao_PK;
ALTER TABLE grau_parentesco DROP CONSTRAINT grau_parentesco_PK;
ALTER TABLE historico_envio_dados_motivo_contato DROP CONSTRAINT historico_envio_dados_motivo_contato_PK;
ALTER TABLE historico_envio_dados_motivo_contato_protocolo DROP CONSTRAINT historico_envio_dados_motivo_contato_protocolo_PK;
ALTER TABLE historico_envio_motivo_contato DROP CONSTRAINT PK_historico_envio_motivo_contato;
ALTER TABLE historico_repiqueXpagamento DROP CONSTRAINT PK_historico_repiqueXpagamento;
ALTER TABLE identificador_participante_odonto DROP CONSTRAINT PK__identifi__1B59AE92AA8F5F9E;
ALTER TABLE itens_segurados DROP CONSTRAINT itens_segurados_PK;
ALTER TABLE lancamento_agente DROP CONSTRAINT PK_lancamento_agente;
ALTER TABLE lance DROP CONSTRAINT lance_PK;
ALTER TABLE lista_negra DROP CONSTRAINT lista_negra_PK;
ALTER TABLE local_atendimento DROP CONSTRAINT local_atendimento_PK;
ALTER TABLE log_do_log DROP CONSTRAINT log_do_log_PK;
ALTER TABLE log_processamento DROP CONSTRAINT PK_LOG_PROCESSAMENTO;
ALTER TABLE log_processamento_detalhe DROP CONSTRAINT PK_LOG_PROCESSAMENTO_DETALHE;
ALTER TABLE log_sintetico DROP CONSTRAINT log_sintetico_PK;
ALTER TABLE log_tabela DROP CONSTRAINT log_tabela_PK;
ALTER TABLE meta_campanha DROP CONSTRAINT meta_campanha_PK;
ALTER TABLE motivo_contato_cliente DROP CONSTRAINT motivo_contato_cliente_PK;
ALTER TABLE motivo_rejeicao DROP CONSTRAINT PK_MOTIVO_REJEICAO;
ALTER TABLE pagamento DROP CONSTRAINT pagamento_PK;
ALTER TABLE pagamento_fatura DROP CONSTRAINT pagamento_fatura_PK;
ALTER TABLE pagamento_fatura_comissao DROP CONSTRAINT pagamento_fatura_comissao_PK;
ALTER TABLE pagamento_fatura_sequencia DROP CONSTRAINT PK_pagamento_fatura_sequencia;
ALTER TABLE pagamento_faturaXpagamento DROP CONSTRAINT pagamento_faturaXpagamento_PK;
ALTER TABLE pagamento_historico_processamento DROP CONSTRAINT PK_pagamento_historico_processamento;
ALTER TABLE pagamento_parcial DROP CONSTRAINT PK_pagamento_parcial;
ALTER TABLE pagamento_parcial_historico_processamento DROP CONSTRAINT PK_pagamento_parcial_historico_processamento;
ALTER TABLE prestador_servicoXprocesso_beneficioXreservaXcobertura_tipo_produto DROP CONSTRAINT processo_beneficioXprestador_servicoXprocesso_beneficioXreservaXcobertura_tipo_produto_PK;
ALTER TABLE prestador_servicoXprocesso_beneficioXreservaXsubcobertura_tipo_produto DROP CONSTRAINT processo_beneficioXprestador_servicoXprocesso_beneficioXreservaXsubcobertura_tipo_produto_PK;
ALTER TABLE processo_beneficio DROP CONSTRAINT processo_beneficio_PK;
ALTER TABLE processo_beneficio_motivo DROP CONSTRAINT processo_beneficio_motivo_PK;
ALTER TABLE processo_beneficio_observacao DROP CONSTRAINT processo_beneficio_observacao_PK;
ALTER TABLE processo_beneficio_pagamento DROP CONSTRAINT processo_beneficio_pagamento_PK;
ALTER TABLE processo_beneficio_pagamento_item DROP CONSTRAINT processo_beneficio_pagamento_item_PK;
ALTER TABLE processo_beneficio_pagamento_item_parcelas DROP CONSTRAINT PK_PROCESSO_BENEFICIO_PAGAMENTO_ITEM_PARCELAS;
ALTER TABLE processo_beneficio_pagamentoXcampos_meio_pagamento DROP CONSTRAINT PK_PROCESSO_BENEFICIO_PAGAMENT;
ALTER TABLE processo_beneficioXacesso_beneficioXcobertura_tipo_produto DROP CONSTRAINT processo_beneficioXacesso_beneficioXcobertura_tipo_produto_PK;
ALTER TABLE processo_beneficioXacesso_beneficioXsubcobertura_tipo_produto DROP CONSTRAINT processo_beneficioXacesso_beneficioXsubcobertura_tipo_produto_PK;
ALTER TABLE processo_beneficioXbem_adquirido DROP CONSTRAINT processo_beneficioXbem_adquirido_PK;
ALTER TABLE processo_beneficioXdados_produto DROP CONSTRAINT processo_beneficioXdados_produto_PK;
ALTER TABLE processo_beneficioXreservaXcobertura_tipo_produto DROP CONSTRAINT processo_beneficioXreservaXcobertura_tipo_produto_PK;
ALTER TABLE processo_beneficioXreservaXcobertura_tipo_produto_historico DROP CONSTRAINT processo_beneficioXreservaXcobertura_tipo_produto_historico_PK;
ALTER TABLE processo_beneficioXreservaXsubcobertura_tipo_produto DROP CONSTRAINT processo_beneficioXreservaXsubcobertura_tipo_produto_PK;
ALTER TABLE processo_beneficioXreservaXsubcobertura_tipo_produto_historico DROP CONSTRAINT processo_beneficioXreservaXsubcobertura_tipo_produto_historico_PK;
ALTER TABLE produto_cliente DROP CONSTRAINT clienteXproduto_empresa_PK;
ALTER TABLE produto_cliente_coberturaXitem_segurado DROP CONSTRAINT PK_produto_cliente_coberturaXitem_segurado;
ALTER TABLE produto_cliente_dados_calculo DROP CONSTRAINT dados_calculo_produto_PK;
ALTER TABLE produto_cliente_dados_calculo_cobertura DROP CONSTRAINT produto_cliente_dados_calculo_cobertura_PK;
ALTER TABLE produto_cliente_dados_imposto DROP CONSTRAINT dados_imposto_PK;
ALTER TABLE produto_cliente_dados_meio_pagto DROP CONSTRAINT clientexproduto_empresaXdados_meio_pagto_PK;
ALTER TABLE produto_cliente_dados_meio_pagto_historico DROP CONSTRAINT clientexproduto_empresaXdados_meio_pagto_historico_PK;
ALTER TABLE produto_clienteXcampanha DROP CONSTRAINT clienteXproduto_empresaXcampanha_PK;
ALTER TABLE produto_clienteXendosso_calculo DROP CONSTRAINT PK_PRODUTO_CLIENTEXENDOSSO_CAL;
ALTER TABLE produto_clienteXfranquia DROP CONSTRAINT clienteXproduto_empresaXfranquia_PK;
ALTER TABLE produto_clienteXrange_numero DROP CONSTRAINT PK_produto_clienteXrange_numero;
ALTER TABLE produto_clienteXremuneracao_corretor DROP CONSTRAINT clienteXproduto_empresaXremuneracao_corretor_PK;
ALTER TABLE produto_clienteXremuneracao_corretor_parcial DROP CONSTRAINT PK_remuneracaocorretorparcial;
ALTER TABLE produto_clienteXremuneracao_empresa DROP CONSTRAINT produto_clienteXremuneracao_empresa_PK;
ALTER TABLE produto_clienteXremuneracao_empresa_parcial DROP CONSTRAINT PK_remuneracaoempresaparcial;
ALTER TABLE produto_clienteXvalores_beneficios DROP CONSTRAINT clienteXproduto_empresaXvalores_beneficios_PK;
ALTER TABLE protocolo DROP CONSTRAINT protocolo_PK;
ALTER TABLE relatorio_produtividade DROP CONSTRAINT PK__relatori__9A4211C21D99589D;
ALTER TABLE resposta_avaliacao_risco DROP CONSTRAINT resposta_avaliacao_risco_PK;
ALTER TABLE rotina_cabecalho_linha DROP CONSTRAINT rotina_cabecalho_linha_PK;
ALTER TABLE rotina_registro_linha DROP CONSTRAINT rotina_registro_linha_PK;
ALTER TABLE rotina_rodape_linha DROP CONSTRAINT rotina_rodape_linha_PK;
ALTER TABLE selecao_cobranca DROP CONSTRAINT PK_selecao_cobranca;
ALTER TABLE status_cobranca DROP CONSTRAINT status_cobranca_PK;
ALTER TABLE status_cotacao DROP CONSTRAINT status_cotacao_PK;
ALTER TABLE status_documentacao DROP CONSTRAINT status_documentacao_PK;
ALTER TABLE status_fatura DROP CONSTRAINT status_fatura_PK;
ALTER TABLE status_pagamento DROP CONSTRAINT status_pagamento_PK;
ALTER TABLE status_pericia DROP CONSTRAINT status_pericia_PK;
ALTER TABLE status_processo DROP CONSTRAINT status_processo_PK;
ALTER TABLE status_produto_cliente_gproxslite DROP CONSTRAINT pk_status_produto_cliente_gproxslite;
ALTER TABLE status_proposta DROP CONSTRAINT status_produto_cliente_PK;
ALTER TABLE status_reserva_processo_beneficio DROP CONSTRAINT status_reserva_processo_beneficio_PK;
ALTER TABLE tb_selecao_cobranca DROP CONSTRAINT PK_tb_selecao_cobranca;
ALTER TABLE tipo_beneficiario DROP CONSTRAINT tipo_beneficiario_PK;
ALTER TABLE tipo_operacao_fechamento DROP CONSTRAINT PK__tipo_ope__310887A15AC2F911;
ALTER TABLE vistoria_pericia DROP CONSTRAINT vistoria_pericia_PK;


 DROP  INDEX IDX_id_prod_emp_nr_endosso_id_edosso_calc ON controle_alt_cliente_produto;
 DROP  INDEX IDX_id_prod_emp_nr_proposta_nr_endosso_id_end_calc ON controle_alt_cliente_produto;
 DROP  INDEX Idx_IdProdEmp_IdTpEndossoCalcProd_IdEndossoCalcProd ON controle_alt_cliente_produto;
 DROP  INDEX IDX_IdProdEmp_IdTpTrans_DtCreditoCliente ON controle_alt_pagamento;
 DROP  INDEX idx01_controle_alt_pagamento ON controle_alt_pagamento;
 DROP  INDEX IDX_NR_RECIBO_IDENTITY ON pagamento;
 DROP  INDEX IDX_COBPAGTO01 ON pagamento;
 DROP  INDEX IDX_DT_DEBITO_CLI ON pagamento;
 DROP  INDEX IDX_DtSelecao ON pagamento;
 DROP  INDEX IDX_FATURAMENTO_MONITOR_01 ON pagamento;
 DROP  INDEX IDX_FATURAMENTO_MONITOR_02 ON pagamento;
 DROP  INDEX IDX_FATURAMENTO_MONITOR_O3 ON pagamento;
 DROP  INDEX IDX_Id_Cli_Id_Emp_Id_Prod_Emp_Idioma_Id_Status_Sorteado ON pagamento;
 DROP  INDEX IDX_id_forma_parc_nr_proposta_endosso ON pagamento;
 DROP  INDEX IDX_IdEmp_NrProposta_IdProdEmp_NrParcela ON pagamento;
 DROP  INDEX IDX_IdStatusPagto_IdRangeNumero ON pagamento;
 DROP  INDEX IDX_nr_proposta_nr_endosso_id_form ON pagamento;
 DROP  INDEX IDX_NrParcela ON pagamento;
 DROP  INDEX IDX_NrParcela_Composta ON pagamento;
 DROP  INDEX Idx_NrProposta_NrEndosso_IdProdEmp_NrEndossoProdEmp_IdStatusPagto ON pagamento;
 DROP  INDEX IDX_Pagamento_NrEndosso_NrParcela ON pagamento;
 DROP  INDEX IDX_PAGAMENTO_NRSORTE_DTSORTEIO ON pagamento;
 DROP  INDEX idx_pg_id_pagto ON pagamento;
 DROP  INDEX IDX_USP_EXTRACAO_ESTIMULO_CANCELAMENTO ON pagamento;
 DROP  INDEX IDX_ValidacaoGeracaoRange ON pagamento;
 DROP  INDEX idx01_pagamento ON pagamento;
 DROP  INDEX idx02_pagamento ON pagamento;
 DROP  INDEX idx03_pagamento ON pagamento;
 DROP  INDEX idx04_pagamento ON pagamento;
 DROP  INDEX idx01_correspondencia ON correspondencia;
 DROP  INDEX IDX_ID_CLI_ID_EMP_IDIOMA ON cotacao_cliente;
 DROP  INDEX idx_pgfatpg_idpagtofat_idprodemp_idmeiopagto_id_forn ON pagamento_faturaXpagamento;
 DROP  INDEX idx01_cotacao_clienteXvalores_beneficio ON cotacao_clienteXvalores_beneficio;
 DROP  INDEX idx01_dados_beneficiarios ON dados_beneficiarios;
 DROP  INDEX IDX_nr_endosso_id_prod_emp_fl_Exc ON dados_beneficiarios;
 DROP  INDEX IDX_DADOS_CLIENTE_id_dado_cliente ON dados_cliente;
 DROP  INDEX IDX_FlExc_IdCpsSis ON dados_cliente;
 DROP  INDEX idx01_dados_cliente ON dados_cliente;
 DROP  INDEX idx02_dados_cliente ON dados_cliente;
 DROP  INDEX idx_dados_produto ON dados_produto;
 DROP  INDEX IDX_DADOS_PRODUTO_CONS_GPROXS ON dados_produto;
 DROP  INDEX idx_dp_prodemp_idcpssis_idcpprod_idgrpcp ON dados_produto;
 DROP  INDEX IDX_FlExc_DtEnvio_IdCpsSis ON dados_produto;
 DROP  INDEX IDX_IdGrpCp_IdCpProd_FlExc_DtEnvio_IdCpsSis ON dados_produto;
 DROP  INDEX IDX_VlDadoProd_IdBem_IdTpBem_FlExc ON dados_produto;
 DROP  INDEX idx01_dados_produto ON dados_produto;
 DROP  INDEX idx03_dados_produto ON dados_produto;
 DROP  INDEX IDX_fl_ultimo_endosso ON produto_cliente;
 DROP  INDEX IDX_FlExc ON produto_cliente;
 DROP  INDEX IDX_IdGpAgente_IdAgente ON produto_cliente;
 DROP  INDEX IDX_IdProdEmp_IdCli_IdEmp_Idioma_FlUltimoEndosso_IdStatusProposta ON produto_cliente;
 DROP  INDEX Idx_IdProdEmp_Idioma ON produto_cliente;
 DROP  INDEX IDX_IdProdEmp_NrEndossoProdEmp ON produto_cliente;
 DROP  INDEX IDX_nr_endosso_id_prod_emp ON produto_cliente;
 DROP  INDEX IDX_NrProposta_NrEndosso_NrEndossoProdEmp ON produto_cliente;
 DROP  INDEX IDX_PROD_CLIENTE_CONS_PAGINCACAO ON produto_cliente;
 DROP  INDEX idx_produto_cliente_01 ON produto_cliente;
 DROP  INDEX IDX_produto_cliente_12 ON produto_cliente;
 DROP  INDEX IDX_Reajuste_01 ON produto_cliente;
 DROP  INDEX IDX_Reajuste_02 ON produto_cliente;
 DROP  INDEX IDX_STRESSTEST ON produto_cliente;
 DROP  INDEX idx01_produto_cliente ON produto_cliente;
 DROP  INDEX idx02_produto_cliente ON produto_cliente;
 DROP  INDEX idx03_produto_cliente ON produto_cliente;
 DROP  INDEX idx04_produto_cliente ON produto_cliente;
 DROP  INDEX idx05_produto_cliente ON produto_cliente;
 DROP  INDEX idx11_produto_cliente ON produto_cliente;
 DROP  INDEX idx14_produto_cliente ON produto_cliente;
 DROP  INDEX ix01_produto_cliente ON produto_cliente;
 DROP  INDEX IDX_ETL_DT_VENDA ON etl_venda_canc;
 DROP  INDEX IDX_ETL_ID_FILIAL ON etl_venda_canc;
 DROP  INDEX idx01_produto_cliente_dados_calculo ON produto_cliente_dados_calculo;
 DROP  INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_07 ON produto_cliente_dados_calculo;
 DROP  INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_08 ON produto_cliente_dados_calculo;
 DROP  INDEX idx01_produto_cliente_dados_calculo_cobertura ON produto_cliente_dados_calculo_cobertura;
 DROP  INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO ON produto_cliente_dados_calculo_cobertura;
 DROP  INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_02 ON produto_cliente_dados_calculo_cobertura;
 DROP  INDEX idx_prod_cal_nr_endosso_id_prod_emp ON produto_cliente_dados_calculo_cobertura;
 DROP  INDEX idx_prod_cal_nr_endosso_id_prod_emp_2 ON produto_cliente_dados_calculo_cobertura;
 DROP  INDEX idx01_produto_cliente_dados_imposto ON produto_cliente_dados_imposto;
 DROP  INDEX idx01_produto_cliente_dados_meio_pagto ON produto_cliente_dados_meio_pagto;
 DROP  INDEX idx01_produto_clienteXcampanha ON produto_clienteXcampanha;
 DROP  INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_03 ON produto_clienteXendosso_calculo;
 DROP  INDEX IDX_NRPROPOSTA_ENDOSSO_IDPRODEMP ON produto_clienteXendosso_calculo;
 DROP  INDEX idx01_produto_clienteXremuneracao_empresa ON produto_clienteXremuneracao_empresa;
 DROP  INDEX idx02_produto_clienteXremuneracao_empresa ON produto_clienteXremuneracao_empresa;
 DROP  INDEX idx03_produto_clienteXremuneracao_empresa ON produto_clienteXremuneracao_empresa;
 DROP  INDEX idx04_produto_clienteXremuneracao_empresa ON produto_clienteXremuneracao_empresa;
 DROP  INDEX idx01_produto_clienteXvalores_beneficios ON produto_clienteXvalores_beneficios;
 DROP  INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_04 ON produto_clienteXvalores_beneficios;
 DROP  INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_05 ON produto_clienteXvalores_beneficios;
 DROP  INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_06 ON produto_clienteXvalores_beneficios;
 DROP  INDEX idx_nr_endosso_id_prod_emp ON produto_clienteXvalores_beneficios;
 DROP  INDEX idx01_itens_segurados ON itens_segurados;
 DROP  INDEX IDX_IdAgrupamento ON lancamento_agente;
 DROP  INDEX IDX_LCTOAG01 ON lancamento_agente;
 DROP  INDEX IDX_LCTOAGRUP1 ON lancamento_agente;
 DROP  INDEX idx01_lancamento_agente ON lancamento_agente;
 DROP  INDEX IDX_IdStPagto_DtLiberacao ON lancamento_agenteXproduto_cliente;
 DROP  INDEX IDX_LCTOPRODCLIAGRUP1 ON lancamento_agenteXproduto_cliente;
 DROP  INDEX idx01_lancamento_agenteXproduto_cliente ON lancamento_agenteXproduto_cliente;
 DROP  INDEX IDX_IdCpsSisCliente ON rotina_registro_linha;
 DROP  INDEX idx01_cliente ON cliente;
 DROP  INDEX chave1 ON cliente;
 DROP  INDEX chave2 ON cliente;
 DROP  INDEX chave3 ON cliente;
 DROP  INDEX IDX_CLIENTE_ID_EMP_ID_TP_CLI_FL_EXC ON cliente;
 DROP  INDEX IDX_FL_EXC_ID_EMP_VL_CHAVE2_CLI ON cliente;
 DROP  INDEX idx02_cliente ON cliente;
 DROP  INDEX idx03_cliente ON cliente;
 DROP  INDEX indice_fillTextSearch ON cliente;
 DROP  INDEX idx01_log_analitico ON log_analitico;
 DROP INDEX [<IDX_WSCANCEL, sysname,>] ON [dbo].[produto_cliente];
 DROP INDEX [<IDXWSCancelamento, sysname,>] ON [dbo].[produto_clienteXendosso_calculo];




alter table cliente_dados_meio_pagto_historico alter column valor_dado VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_rodape_linha alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table rotina_rodape_linha alter column nm_campo_layout VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table rotina_rodape_linha alter column ds_campo VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table rotina_rodape_linha alter column ds_conteudo VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_rodape_linha alter column ds_conteudo_arquivo VARCHAR (1000) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_rodape_linha alter column codigo_tipo_falha VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_rodape_linha alter column ds_erro_arquivo VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_processamento alter column certificado_legado VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_processamento alter column nm_arquivo VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_processamento alter column nm_interface VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_processamento_detalhe alter column ds_detalhe VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table status_cotacao alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_cotacao alter column nm_status_cotacao VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table log_sintetico alter column id_fluxo VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_sintetico alter column nm_fluxo VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_sintetico alter column ds_erro_execucao VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_sintetico alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_documentacao alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_documentacao alter column nm_sta_doc VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table log_tabela alter column nm_tabela NVARCHAR (256) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_tabela alter column acao CHAR (6) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table log_tabela alter column valor_log VARCHAR (8000) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table controle_alt_cliente_produto alter column nr_proposta VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table controle_alt_cliente_produto alter column id_fluxo_1 VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table controle_alt_cliente_produto alter column id_fluxo_2 VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table controle_alt_cliente_produto alter column id_fluxo_3 VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table controle_alt_cliente_produto alter column id_fluxo_4 VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table controle_alt_cliente_produto alter column id_fluxo_5 VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table status_fatura alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_fatura alter column nm_status_fatura VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table controle_alt_pagamento alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table controle_alt_pagamento alter column mes_ano_ref VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table controle_alt_pagamento alter column id_fluxo_1 VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table controle_alt_pagamento alter column id_fluxo_2 VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table controle_alt_pagamento alter column id_fluxo_3 VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table controle_alt_pagamento alter column id_fluxo_4 VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table controle_alt_pagamento alter column id_fluxo_5 VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table status_pagamento alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_pagamento alter column nm_status_pagto VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table motivo_contato_cliente alter column ds_mot VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table motivo_contato_cliente alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_pericia alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_pericia alter column nm_st_pericia VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table motivo_rejeicao alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table motivo_rejeicao alter column ds_mot_rej VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table motivo_rejeicao alter column id_mot_rej_legado VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table motivo_rejeicao alter column auxiliar VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table status_processo alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_processo alter column nm_status_processo VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento alter column mes_ano_ref VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento alter column nm_tp_meio_pagto VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento alter column nm_meio_pagto VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento alter column cd_autorizacao VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento alter column url_recibo VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento alter column nr_ordem_pagto VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento alter column ds_auxiliar VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento alter column serie VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table correspondencia alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table correspondencia alter column nm_arquivo VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table correspondencia alter column codigo_envio VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table correspondencia alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table correspondencia alter column assunto VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table correspondencia alter column conteudo VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table correspondencia alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table correspondencia alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table correspondencia alter column email VARCHAR (120) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table correspondencia alter column obj_envio VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table correspondencia alter column obj_retorno VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table correspondencia alter column cod_retorno VARCHAR (5) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table correspondencia alter column id_tp_endosso_calc_prod VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table correspondencia alter column id_endosso_calc_prod VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table status_produto_cliente_gproxslite alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_produto_cliente_gproxslite alter column nm_status_proposta VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_produto_cliente_gproxslite alter column nm_status_proposta_gproxslite VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_duplicado alter column nm_tp_meio_pagto VARCHAR (17) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column nm_meio_pagto VARCHAR (16) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column dt_credito_cliente VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column dt_debito_empresa VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column dt_credito_empresa VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column cd_autorizacao VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column id_login VARCHAR (36) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column id_mot_est VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column vl_multa VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column vl_juros VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column idioma VARCHAR (5) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column url_recibo VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column vl_custo_cobranca VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column dt_custo_cobranca VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column dt_movimento VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column dt_faturado VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column nr_periodo_1a_parcela VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column id_periodo_1a_parcela VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column fl_avista VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column nr_endosso_origem VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column dt_selecao VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column id_fluxo_instancia_selecao_cobranca VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column id_range VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column serie VARCHAR (22) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column id_status_sorteado VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_duplicado alter column id_pagto_anterior VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table correspondenciaXdestinatario alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_proposta alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_proposta alter column nm_status_proposta VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_fatura alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_fatura alter column nr_fat_cliente VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_fatura alter column idioma_mot_cancel_fat VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_fatura alter column idioma_status_fatura VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_fatura alter column nr_transacao VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table corretor_cotacao alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_reserva_processo_beneficio alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_reserva_processo_beneficio alter column nm_st_reserva VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_fatura_comissao alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_fatura_comissao alter column nr_orden_pagto VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_fatura_comissao alter column nr_orden_anula VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table cotacao_cliente alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table cotacao_cliente alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table cotacao_cliente alter column endosso_apolice VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table cotacao_cliente alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table cotacao_cliente_dados_calculo alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_faturaXpagamento alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_faturaXpagamento alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table cotacao_cliente_dados_calculo_cobertura alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table cotacao_cliente_dados_calculo_cobertura alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_historico_processamento alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_historico_processamento alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_historico_processamento alter column nm_interface VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table cotacao_cliente_dados_impostos alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_parcial alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_parcial alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_parcial alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table pagamento_parcial alter column ds_auxiliar VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table cotacao_clienteXfranquia alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table cotacao_clienteXfranquia alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_parcial_historico_processamento alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_parcial_historico_processamento alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagamento_parcial_historico_processamento alter column nm_interface VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table cotacao_clienteXparcelas alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table pagina alter column nome VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table cotacao_clienteXremuneracao_corretor alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table prestador_servicoXprocesso_beneficioXreservaXcobertura_tipo_produto alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table prestador_servicoXprocesso_beneficioXreservaXcobertura_tipo_produto alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table cotacao_clienteXvalores_beneficio alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table prestador_servicoXprocesso_beneficioXreservaXsubcobertura_tipo_produto alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table prestador_servicoXprocesso_beneficioXreservaXsubcobertura_tipo_produto alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_beneficiarios alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_beneficiarios alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_beneficiarios alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_beneficiarios alter column valor_dado VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio alter column id_processo_fornec VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio alter column id_processo_corretor VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio alter column id_processo_ref VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio alter column nm_solicitante VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio alter column tel_solicitante VARCHAR (14) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio alter column email_solicitante VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio alter column obs VARCHAR (5000) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio alter column idioma_mot_enc VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio alter column obs_sindicancia_especial VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_cliente alter column valor_dado_cli VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_motivo alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio_motivo alter column resumo_motivo VARCHAR (300) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio_motivo alter column motivo_reabertura VARCHAR (300) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_motivo alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_contato alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_contato alter column valor_dado_contato VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_observacao alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio_observacao alter column obs VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_declaracao_saude alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_declaracao_saude alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_declaracao_saude alter column ds_comentario VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio_pagamento alter column id_processo_cob VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento alter column idioma_cob VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento alter column id_processo_subcob VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento alter column idioma_subcob VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento alter column id_processo_beneficiario_cob VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento alter column idioma_beneficiario_cob VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento alter column id_processo_beneficiario_subcob VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento alter column idioma_beneficiario_subcob VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento alter column idioma_mot_enc VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_declaracao_saudeXtipo_participante alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_declaracao_saudeXtipo_participante alter column nr_endosso_prod_emp VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio_pagamento_item alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio_pagamento_item alter column nr_doc_pagto VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento_item alter column id_processo_cob VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento_item alter column idioma_cob VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento_item alter column id_processo_beneficiario_cob VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento_item alter column idioma_beneficiario_cob VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_entrega alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_entrega alter column endereco VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_entrega alter column numero VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_entrega alter column complemento VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_entrega alter column cidade VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_entrega alter column estado VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_entrega alter column pais VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_entrega alter column cep CHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio_pagamento_item_parcelas alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio_pagamento_item_parcelas alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamento_item_parcelas alter column nr_ordem_pagto VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_meio_pagamento alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_meio_pagamento alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_meio_pagamento alter column vl_dado_campo_meio_pagto VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio_pagamentoXcampos_meio_pagamento alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio_pagamentoXcampos_meio_pagamento alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficio_pagamentoXcampos_meio_pagamento alter column pro_id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficio_pagamentoXcampos_meio_pagamento alter column valor VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table tb_selecao_cobranca alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table tb_selecao_cobranca alter column mes_ano_ref VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table tb_selecao_cobranca alter column ds_erro VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table tb_selecao_cobranca alter column obj_envio VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table tb_selecao_cobranca alter column obj_retorno VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato alter column observacao VARCHAR (700) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato alter column fita VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato alter column localizador VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato alter column nr_protocolo VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato alter column nm_img_documento VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato alter column nm_arq_gravacao VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato alter column idioma_forma_contato VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficioXacesso_beneficioXcobertura_tipo_produto alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficioXacesso_beneficioXcobertura_tipo_produto alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_motivo_contato_adicional alter column observacao VARCHAR (1000) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato_adicional alter column nm_img_documento VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato_adicional alter column nm_arq_gravacao VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato_adicional alter column fita VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato_adicional alter column localizador VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_motivo_contato_adicional alter column idioma_forma_contato VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficioXacesso_beneficioXsubcobertura_tipo_produto alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficioXacesso_beneficioXsubcobertura_tipo_produto alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_produto alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_produto alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_produto alter column vl_dado_prod VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_produto alter column vl_ref_dado_prod VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficioXbem_adquirido alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_produto_cotacao alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_produto_cotacao alter column vl_dado_produto VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table dados_produto_cotacao alter column vl_ref_dado_prod VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficioXdados_produto alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficioXdados_produto alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficioXdados_produto alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_sinistro alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_sinistro alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table dados_sinistro alter column vl_dado_sinistro VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficioXreservaXcobertura_tipo_produto alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficioXreservaXcobertura_tipo_produto alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table destinatario_remetente alter column email VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table destinatario_remetente alter column cep VARCHAR (9) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table destinatario_remetente alter column endereco VARCHAR (200) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table destinatario_remetente alter column numero VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table destinatario_remetente alter column complemento VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table destinatario_remetente alter column nome VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table destinatario_remetente alter column telefone VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table destinatario_remetente alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficioXreservaXcobertura_tipo_produto_historico alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficioXreservaXcobertura_tipo_produto_historico alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table documentacao alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table documentacao alter column cod_arquivo VARCHAR (30) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table documentacao alter column nm_imagem_doc VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table documentacao alter column observacao VARCHAR (300) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table documentacao alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table processo_beneficioXreservaXsubcobertura_tipo_produto alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficioXreservaXsubcobertura_tipo_produto alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficioXreservaXsubcobertura_tipo_produto_historico alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table processo_beneficioXreservaXsubcobertura_tipo_produto_historico alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table etl_controle_job alter column ds_mensagem VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table status_cobranca alter column nm_status_cobranca VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table status_cobranca alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente alter column txt_clausula_benefic VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente alter column nr_apolice VARCHAR (30) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente alter column id_mot_can VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente alter column nr_proposta_forn VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente alter column nm_arquivo VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente alter column endosso_apolice VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente alter column arquivo_certificado VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente alter column nm_renovacao VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente alter column ds_obs_endosso VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table etl_job alter column nm_job VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table etl_venda_canc alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table etl_venda_canc alter column nm_fantasia_prod VARCHAR (60) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table etl_venda_canc alter column vl_chave1_cli VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table etl_venda_canc alter column vl_chave2_cli VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table etl_venda_canc alter column vl_chave3_cli VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table etl_venda_canc alter column nr_matricula_agente_venda VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table etl_venda_canc alter column nm_agente_venda VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table etl_venda_canc alter column nm_filial_venda VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table etl_venda_canc alter column nm_filial_cadastro VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table etl_venda_canc alter column nm_login_inclusao VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table etl_venda_canc alter column nr_matricula_agente_inclusao VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table etl_venda_canc alter column nm_agente_inclusao VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table etl_venda_canc alter column nr_matricula_agente_cancelamento VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table etl_venda_canc alter column nm_agente_cancelamento VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente_bkp_teste_clientes_duplicados alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_bkp_teste_clientes_duplicados alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_bkp_teste_clientes_duplicados alter column txt_clausula_benefic VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente_bkp_teste_clientes_duplicados alter column nr_apolice VARCHAR (30) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente_bkp_teste_clientes_duplicados alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente_bkp_teste_clientes_duplicados alter column id_mot_can VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente_bkp_teste_clientes_duplicados alter column nr_proposta_forn VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente_bkp_teste_clientes_duplicados alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente_bkp_teste_clientes_duplicados alter column nm_arquivo VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente_bkp_teste_clientes_duplicados alter column endosso_apolice VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente_bkp_teste_clientes_duplicados alter column arquivo_certificado VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente_bkp_teste_clientes_duplicados alter column nm_renovacao VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente_bkp_teste_clientes_duplicados alter column ds_obs_endosso VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_cliente_coberturaXitem_segurado alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_coberturaXitem_segurado alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_coberturaXitem_segurado alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table extracao_agenciamento alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table extracao_agenciamento alter column nr_cotacao VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table tipo_beneficiario alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table tipo_beneficiario alter column nm_tp_beneficiario VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_dados_calculo alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_dados_calculo alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table tipo_operacao_fechamento alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table tipo_operacao_fechamento alter column ds_tp_op VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table fechamento_analitico alter column nm_fantasia_prod VARCHAR (60) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table fechamento_analitico alter column nm_camp VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table fechamento_analitico alter column nm_agente VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table fechamento_analitico alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table fechamento_analitico alter column nr_apolice VARCHAR (30) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table fechamento_analitico alter column nr_proposta_forn VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table fechamento_analitico alter column cpf VARCHAR (14) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table fechamento_analitico alter column nome VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_dados_calculo_cobertura alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_dados_calculo_cobertura alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_dados_calculo_cobertura alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table fechamento_sintetico alter column mes VARCHAR (2) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table fechamento_sintetico alter column ano VARCHAR (4) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_dados_imposto alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_dados_imposto alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table forma_confirmacao alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table forma_confirmacao alter column nm_forma_confirmacao VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_dados_meio_pagto alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_dados_meio_pagto alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_dados_meio_pagto alter column valor_dado VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table versao alter column descricao VARCHAR (1000) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_dados_meio_pagto_historico alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_dados_meio_pagto_historico alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_cliente_dados_meio_pagto_historico alter column valor_dado VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table vistoria_pericia alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table vistoria_pericia alter column resumo VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table vistoria_pericia alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table vistoria_pericia alter column nm_imagem_relatorio VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table vistoria_pericia alter column id_processo_cob VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table vistoria_pericia alter column idioma_cob VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table vistoria_pericia alter column id_processo_subcob VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table vistoria_pericia alter column idioma_subcob VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_clienteXcampanha alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXcampanha alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXendosso_calculo alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXendosso_calculo alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXendosso_calculo alter column idioma_endosso_calc_prod VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXfranquia alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXfranquia alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXfranquia alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXrange_numero alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXrange_numero alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXrange_numero alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table grau_parentesco alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table grau_parentesco alter column nm_grau_par VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXremuneracao_corretor alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXremuneracao_corretor alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXremuneracao_corretor alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_clienteXremuneracao_corretor alter column cod_autorizacao VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_clienteXremuneracao_corretor alter column ds_auxiliar VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_dados_motivo_contato alter column idioma_forma_envio VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table historico_envio_dados_motivo_contato alter column texto_historico VARCHAR (5000) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table historico_envio_dados_motivo_contato alter column ds_nr_protocolos_envio VARCHAR (1000) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table historico_envio_dados_motivo_contato alter column fax VARCHAR (14) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_dados_motivo_contato alter column e_mail VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_dados_motivo_contato alter column e_mail_copia VARCHAR (1000) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_dados_motivo_contato alter column endereco VARCHAR (200) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_dados_motivo_contato alter column numero VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_dados_motivo_contato alter column complemento VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_dados_motivo_contato alter column cep VARCHAR (9) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_dados_motivo_contato alter column bairro VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_dados_motivo_contato alter column cidade VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_dados_motivo_contato alter column estado VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_dados_motivo_contato alter column pais VARCHAR (30) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_dados_motivo_contato alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXremuneracao_corretor_parcial alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXremuneracao_corretor_parcial alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXremuneracao_corretor_parcial alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_clienteXremuneracao_corretor_parcial alter column cod_autorizacao VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_clienteXremuneracao_corretor_parcial alter column ds_auxiliar VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_clienteXremuneracao_empresa alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXremuneracao_empresa alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXremuneracao_empresa alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_clienteXremuneracao_empresa alter column cod_autorizacao VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_clienteXremuneracao_empresa alter column ds_auxiliar VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_motivo_contato alter column idioma_forma_envio VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table historico_envio_motivo_contato alter column texto_historico VARCHAR (1000) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table historico_envio_motivo_contato alter column ds_nr_protocolos_envio VARCHAR (1000) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table historico_envio_motivo_contato alter column fax VARCHAR (14) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_motivo_contato alter column e_mail VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_motivo_contato alter column e_mail_copia VARCHAR (1000) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_motivo_contato alter column cep VARCHAR (9) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_envio_motivo_contato alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXremuneracao_empresa_parcial alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXremuneracao_empresa_parcial alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXremuneracao_empresa_parcial alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_clienteXremuneracao_empresa_parcial alter column cod_autorizacao VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table produto_clienteXremuneracao_empresa_parcial alter column ds_auxiliar VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table historico_repiqueXpagamento alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table historico_repiqueXpagamento alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXvalores_beneficios alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table produto_clienteXvalores_beneficios alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table identificador_participante_odonto alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table autorizacao_pagamento alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table autorizacao_pagamento alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table autorizacao_pagamento alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table autorizacao_pagamento alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table autorizacao_pagamento alter column observacao_motivo_cancelamento VARCHAR (1500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table autorizacao_pagamento alter column idioma_motivo_pagamento VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table autorizacao_pagamento alter column observacao VARCHAR (1500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table autorizacao_pagamento alter column nr_documento VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table autorizacao_pagamento alter column nr_ordem_pagto VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table autorizacao_pagamento alter column nm_recibo VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table autorizacao_pagamentoXcampos_meio_pagamento alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table autorizacao_pagamentoXcampos_meio_pagamento alter column valor VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column vl_chave1_cli VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column vl_chave2_cli VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column vl_chave3_cli VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_1 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_2 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_3 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_4 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_5 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_6 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_7 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_8 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_9 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_10 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_11 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_12 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_13 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_14 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_15 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_16 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_17 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_18 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_19 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_20 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_21 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_22 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_23 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_24 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_25 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_26 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_27 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_28 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_29 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column campos_cliente_ordem_30 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column dado_campo_produto_1_part_1 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column dado_campo_produto_2_part_1 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column dado_campo_produto_3_part_1 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column dado_campo_produto_4_part_1 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column dado_campo_produto_5_part_1 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column dado_campo_produto_6_part_1 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column dado_campo_produto_7_part_1 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column dado_campo_produto_1_bem_1 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column dado_campo_produto_2_bem_1 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column dado_campo_produto_3_bem_1 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column dado_campo_produto_4_bem_1 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column dado_campo_produto_5_bem_1 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_participantes_1 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_participantes_2 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_participantes_3 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_participantes_4 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_participantes_5 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_participantes_6 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_participantes_7 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_participantes_8 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_participantes_9 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_participantes_10 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_bem_1 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_bem_2 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_bem_3 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_bem_4 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_bem_5 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_bem_6 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_bem_7 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_bem_8 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_bem_9 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column ids_coberturas_bem_10 VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table importacao_generica alter column msg_erro VARCHAR (5000) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table protocolo alter column mes_ano CHAR (6) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table itens_segurados alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table itens_segurados alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table itens_segurados alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lancamento_agente alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lancamento_agente alter column msg_processamento VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lancamento_agente alter column idioma_hierarquia_agente VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lancamento_agente alter column mes_ano_ref VARCHAR (7) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiario alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table beneficiario alter column nm_beneficiario VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table beneficiario alter column cpf_cnpj_beneficiario VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiario alter column rg_beneficiario VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiario alter column nr_tel_beneficiario VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiario alter column nr_fax_beneficiario VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiario alter column nr_cel_beneficiario VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiario alter column email_beneficiario VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiario alter column cep VARCHAR (9) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiario alter column logradouro VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiario alter column numero VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiario alter column complemento VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiario alter column nm_responsavel VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiario alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiario alter column id_beneficiario_legado VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table relatorio_produtividade alter column nm_fantasia_prod VARCHAR (60) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table relatorio_produtividade alter column cpf VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table relatorio_produtividade alter column nm_cliente VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table relatorio_produtividade alter column nm_agente_vendedor VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table relatorio_produtividade alter column nm_nivel_01 VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_agrupamento_01 VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_nivel_02 VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_agrupamento_02 VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_nivel_03 VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_agrupamento_03 VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_nivel_04 VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_agrupamento_04 VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_nivel_05 VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_agrupamento_05 VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column cd_agente_01 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_hierarquia_agente_01 VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column cd_agente_02 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_hierarquia_agente_02 VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column cd_agente_03 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_hierarquia_agente_03 VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column cd_agente_04 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_hierarquia_agente_04 VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column cd_agente_05 VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table relatorio_produtividade alter column nm_hierarquia_agente_05 VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table resposta_avaliacao_risco alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table lancamento_agenteXcotacao_cliente alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table lancamento_agenteXcotacao_cliente alter column idioma_st_pagto VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lancamento_agenteXcotacao_cliente alter column msg_processamento VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lancamento_agenteXproduto_cliente alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table lancamento_agenteXproduto_cliente alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table lancamento_agenteXproduto_cliente alter column idioma_st_pagto VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lancamento_agenteXproduto_cliente alter column msg_processamento VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_cabecalho_linha alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table rotina_cabecalho_linha alter column nm_campo_layout VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table rotina_cabecalho_linha alter column ds_campo VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table rotina_cabecalho_linha alter column ds_conteudo VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_cabecalho_linha alter column ds_conteudo_arquivo VARCHAR (1000) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_cabecalho_linha alter column codigo_tipo_falha VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_cabecalho_linha alter column ds_erro_arquivo VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lance alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table boleto_franquia alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table boleto_franquia alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table boleto_franquia alter column num_titulo VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table boleto_franquia alter column nosso_num VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table boleto_franquia alter column linha_dig VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table boleto_franquia alter column num_doc VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table boleto_franquia alter column idioma_mot_cancel VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table boleto_franquia alter column idioma_st_titulo VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table boleto_franquia alter column cod_banco VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table boleto_franquia alter column instrucao VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_registro_linha alter column nm_campo_layout VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table rotina_registro_linha alter column ds_campo VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table rotina_registro_linha alter column ds_conteudo VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_registro_linha alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_registro_linha alter column idioma_cobertura_tipo_produto VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_registro_linha alter column idioma_subcobertura_tipo_produto VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_registro_linha alter column idioma_produtoXbem VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_registro_linha alter column idioma_produtoXtipo_participante VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_registro_linha alter column idioma_prod_campos_beneficiario VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_registro_linha alter column idioma_sinistro VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_registro_linha alter column ds_conteudo_arquivo VARCHAR (1000) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_registro_linha alter column codigo_tipo_falha VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table rotina_registro_linha alter column ds_erro_arquivo VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lista_negra alter column id_fluxo VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table lista_negra alter column nome VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lista_negra alter column primeiro_nome VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lista_negra alter column segundo_nome VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lista_negra alter column nro_documento VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lista_negra alter column placa VARCHAR (25) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lista_negra alter column motor VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lista_negra alter column chasis VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lista_negra alter column ds_delito VARCHAR (5000) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lista_negra alter column dt_delito VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lista_negra alter column situacao_atual VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table lista_negra alter column novidade VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table campanhaXmailing alter column nr_endosso_prod_emp VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table campanhaXmailing alter column nr_cotacao VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table campanhaXmailing alter column idioma_status_prospect_camp VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table campanhaXmailing alter column idioma_motivo_recusa VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table campanhaXmailing alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table local_atendimento alter column id_processo VARCHAR (15) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table local_atendimento alter column cep VARCHAR (9) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table local_atendimento alter column logradouro VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table local_atendimento alter column numero VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table local_atendimento alter column complemento VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table local_atendimento alter column ponto_referencia VARCHAR (50) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table local_atendimento alter column telefone VARCHAR (14) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table local_atendimento alter column nm_profissional VARCHAR (40) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table local_atendimento alter column no_profissional VARCHAR (7) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table local_atendimento alter column idioma_tp_local VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table local_atendimento alter column bairro VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table cliente alter column vl_chave1_cli VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table cliente alter column vl_chave2_cli VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table cliente alter column vl_chave3_cli VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table cliente alter column idioma_chave1 VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table cliente alter column idioma_chave2 VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table cliente alter column idioma_chave3 VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table cliente alter column id_cli_legado VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_analitico alter column vl_chave1_cli VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_analitico alter column vl_chave2_cli VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_analitico alter column vl_chave3_cli VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_analitico alter column nome_endereco_arquivo VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_analitico alter column linha_arquivo VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_analitico alter column cod_erro VARCHAR (100) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_analitico alter column desc_erro VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_analitico alter column idioma VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table selecao_cobranca alter column nr_proposta VARCHAR (12) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table selecao_cobranca alter column mes_ano_ref VARCHAR (10) collate  SQL_Latin1_General_CP1_CI_AS not  null;
alter table selecao_cobranca alter column ds_erro VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table selecao_cobranca alter column obj_envio VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table selecao_cobranca alter column obj_retorno VARCHAR (Max) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table selecao_cobranca alter column cd_autorizacao VARCHAR (20) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table cliente_dados_meio_pagto alter column valor_dado VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_do_log alter column erro VARCHAR (500) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_do_log alter column nm_tabela VARCHAR (255) collate  SQL_Latin1_General_CP1_CI_AS null;
alter table log_do_log alter column nm_campo VARCHAR (8000) collate  SQL_Latin1_General_CP1_CI_AS null;



ALTER TABLE autorizacao_pagamento WITH CHECK ADD CONSTRAINT PK_AUTORIZACAO_PAGAMENTO PRIMARY KEY CLUSTERED (id_autorizacao_pagamento);
ALTER TABLE autorizacao_pagamentoXcampos_meio_pagamento WITH CHECK ADD CONSTRAINT PK_AUTORIZACAO_PAGAMENTOXCAMPO PRIMARY KEY CLUSTERED (id_autorizacao_pagamento,id_cp_meio_pagto,id_meio_pagto,id_grp_cp,id_cps_sis,idioma);
ALTER TABLE beneficiario WITH CHECK ADD CONSTRAINT beneficiario_PK PRIMARY KEY CLUSTERED (id_processo,id_beneficiario);
ALTER TABLE beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto WITH CHECK ADD CONSTRAINT beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto_PK PRIMARY KEY CLUSTERED (id_processo,id_beneficiario,id_prod,id_acesso_benef,idioma,id_tp_evento_sinistro,id_evento_sinistro,id_tp_prod,id_cob,id_tp_reserva);
ALTER TABLE beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto WITH CHECK ADD CONSTRAINT beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto_PK PRIMARY KEY CLUSTERED (id_processo,id_beneficiario,id_prod,id_acesso_benef,idioma,id_tp_evento_sinistro,id_evento_sinistro,id_subcob,id_tp_prod,id_cob,id_tp_reserva);
ALTER TABLE boleto_franquia WITH CHECK ADD CONSTRAINT boleto_franquia_PK PRIMARY KEY CLUSTERED (id_processo,id_prod_emp,id_meio_pagto,id_boleto,nr_endosso_prod_emp);
ALTER TABLE campanhaXmailing WITH CHECK ADD CONSTRAINT PK_campanhaXmailing PRIMARY KEY CLUSTERED (id);
ALTER TABLE cliente WITH CHECK ADD CONSTRAINT PK__cliente__1DB06A4F PRIMARY KEY CLUSTERED (id_cli,id_emp);
ALTER TABLE cliente_dados_meio_pagto WITH CHECK ADD CONSTRAINT cliente_dados_meio_pagto_PK PRIMARY KEY CLUSTERED (id_cli,id_emp,id_meio_pagto,id_cps_sis,id_grp_cp,id_cp_meio_pagto);
ALTER TABLE cliente_dados_meio_pagto_historico WITH CHECK ADD CONSTRAINT cliente_dados_meio_pagto_historico_PK PRIMARY KEY CLUSTERED (id_cli,id_emp,id_meio_pagto,id_cps_sis,id_grp_cp,id_cp_meio_pagto,id_historico);
ALTER TABLE contato WITH CHECK ADD CONSTRAINT PK__cliente__1DB06A4FF PRIMARY KEY CLUSTERED (id_contato,id_emp,id_cli);
ALTER TABLE controle_cotacao WITH CHECK ADD CONSTRAINT controle_cotacao_PK PRIMARY KEY CLUSTERED (nr_cotacao_controle);
ALTER TABLE controle_proposta WITH CHECK ADD CONSTRAINT controle_proposta_PK PRIMARY KEY CLUSTERED (nr_proposta_controle);
ALTER TABLE correspondencia WITH CHECK ADD CONSTRAINT PK_CORRESPONDENCIA PRIMARY KEY CLUSTERED (id_processo,id_corr);
ALTER TABLE correspondenciaXdestinatario WITH CHECK ADD CONSTRAINT PK_CORRESPONDENCIAXDESTINATARI PRIMARY KEY CLUSTERED (id_processo,id_corr,id_dest);
ALTER TABLE corretor_cotacao WITH CHECK ADD CONSTRAINT PK_corretor_cotacao PRIMARY KEY CLUSTERED (id_corr,id_forn_corr,nr_cotacao,id_tp_rem,id_rem_corretor);
ALTER TABLE cotacao_cliente WITH CHECK ADD CONSTRAINT cotacao_cliente_PK PRIMARY KEY CLUSTERED (nr_cotacao);
ALTER TABLE cotacao_cliente_dados_calculo WITH CHECK ADD CONSTRAINT cotacao_cliente_dados_calculo_PK PRIMARY KEY CLUSTERED (nr_cotacao);
ALTER TABLE cotacao_cliente_dados_calculo_cobertura WITH CHECK ADD CONSTRAINT cotacao_cliente_dados_calculo_cobertura_PK PRIMARY KEY CLUSTERED (nr_cotacao,id_cob,id_tp_prod,idioma);
ALTER TABLE cotacao_cliente_dados_impostos WITH CHECK ADD CONSTRAINT cotacao_cliente_dados_impostos_PK PRIMARY KEY CLUSTERED (nr_cotacao,id_imposto);
ALTER TABLE cotacao_clienteXfranquia WITH CHECK ADD CONSTRAINT cotacao_clienteXfranquia_PK PRIMARY KEY CLUSTERED (nr_cotacao,id_franquia,idioma,id_prod,id_tp_prod,id_cob,id_incidencia_franquia);
ALTER TABLE cotacao_clienteXparcelas WITH CHECK ADD CONSTRAINT cotacao_clienteXparcelas_PK PRIMARY KEY CLUSTERED (nr_cotacao,nr_parcela,id_forma_parc);
ALTER TABLE cotacao_clienteXremuneracao_corretor WITH CHECK ADD CONSTRAINT cotacao_clienteXremuneracao_corretor_PK PRIMARY KEY CLUSTERED (nr_cotacao,id_rem_corretor);
ALTER TABLE cotacao_clienteXvalores_beneficio WITH CHECK ADD CONSTRAINT cotacao_clienteXvalores_beneficio_PK PRIMARY KEY CLUSTERED (id,nr_cotacao);
ALTER TABLE dados_beneficiarios WITH CHECK ADD CONSTRAINT dados_beneficiarios_PK PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,id_prod,id_cps_sis,id_grp_cp,idioma,id_agrupador,nr_endosso_prod_emp);
ALTER TABLE dados_cliente WITH CHECK ADD CONSTRAINT PK__dados_cliente__17F790F9 PRIMARY KEY CLUSTERED (id_cli,id_emp,id_grp_cp,id_cps_sis);
ALTER TABLE dados_contato WITH CHECK ADD CONSTRAINT dados_contato_PK PRIMARY KEY CLUSTERED (id_contato,id_cli,id_emp,idioma,id_cp_frm_contato);
ALTER TABLE dados_declaracao_saude WITH CHECK ADD CONSTRAINT dados_declaracao_saude_PK PRIMARY KEY CLUSTERED (id_perguntas_dec_saude,nr_proposta,id_prod_emp,nr_endosso,nr_endosso_prod_emp);
ALTER TABLE dados_declaracao_saudeXtipo_participante WITH CHECK ADD CONSTRAINT dados_declaracao_saudeXtipo_participante_PK PRIMARY KEY CLUSTERED (id_tp_part,nr_proposta,id_prod_emp,nr_endosso,nr_endosso_prod_emp,id_perguntas_dec_saude);
ALTER TABLE dados_entrega WITH CHECK ADD CONSTRAINT dados_entrega_PK PRIMARY KEY CLUSTERED (id_processo,id_beneficiario);
ALTER TABLE dados_meio_pagamento WITH CHECK ADD CONSTRAINT dados_meio_pagamento_PK PRIMARY KEY CLUSTERED (id_processo,id_beneficiario,id_meio_pagto,id_grp_cp,id_cps_sis,idioma,id_cp_meio_pagto);
ALTER TABLE dados_motivo_contato WITH CHECK ADD CONSTRAINT dados_motivo_contato_PK PRIMARY KEY CLUSTERED (id);
ALTER TABLE dados_motivo_contato_adicional WITH CHECK ADD CONSTRAINT dados_motivo_contato_adicional_PK PRIMARY KEY CLUSTERED (id_dados_mot_cont_adicional);
ALTER TABLE dados_produto WITH CHECK ADD CONSTRAINT PK__dados_produto__3C34F16F PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_endosso_prod_emp,id_cps_sis,id_grp_cp,id_cp_prod,id_dado_produto,id_agrupador);
ALTER TABLE dados_produto_cotacao WITH CHECK ADD CONSTRAINT dados_produto_cotacao_PK PRIMARY KEY CLUSTERED (id_grp_cp,id_cps_sis,id_cp_prod,id_agrupador,id_dado_produto,nr_cotacao);
ALTER TABLE dados_sinistro WITH CHECK ADD CONSTRAINT dados_sinistro_PK PRIMARY KEY CLUSTERED (id_processo,id_prod,id_tp_prod,id_cob,id_cp_sinistro,id_cps_sis,id_grp_cp,idioma);
ALTER TABLE destinatario_remetente WITH CHECK ADD CONSTRAINT PK_DESTINATARIO_REMETENTE PRIMARY KEY CLUSTERED (id_dest);
ALTER TABLE documentacao WITH CHECK ADD CONSTRAINT documentacao_PK PRIMARY KEY CLUSTERED (id_documentacao,id_processo);
ALTER TABLE etl_controle_job WITH CHECK ADD CONSTRAINT PK__etl_cont__576E096AC7344605 PRIMARY KEY CLUSTERED (id_controle_job);
ALTER TABLE etl_job WITH CHECK ADD CONSTRAINT PK__etl_job__D366B1F7B36DBD4C PRIMARY KEY CLUSTERED (id_job);
ALTER TABLE etl_venda_canc WITH CHECK ADD CONSTRAINT PK__etl_vend__74D71140A8CF415A PRIMARY KEY CLUSTERED (id_prod_cli);
ALTER TABLE extracao_agenciamento WITH CHECK ADD CONSTRAINT PK__extracao__F8ECCD98DE350195 PRIMARY KEY CLUSTERED (id_extracao_agenciamento);
ALTER TABLE fechamento_analitico WITH CHECK ADD CONSTRAINT PK__fechamen__C7E74E700B2C3A68 PRIMARY KEY CLUSTERED (id_fechamento_analitico);
ALTER TABLE fechamento_data WITH CHECK ADD CONSTRAINT PK__fechamen__2B3C9FDD809D060A PRIMARY KEY CLUSTERED (id_fechamento);
ALTER TABLE fechamento_sintetico WITH CHECK ADD CONSTRAINT PK__fechamen__205A4AF90BE57B1F PRIMARY KEY CLUSTERED (id_fechamento_sintetico);
ALTER TABLE forma_confirmacao WITH CHECK ADD CONSTRAINT forma_confirmacao_PK PRIMARY KEY CLUSTERED (id_forma_confirmacao,idioma);
ALTER TABLE grau_parentesco WITH CHECK ADD CONSTRAINT grau_parentesco_PK PRIMARY KEY CLUSTERED (id_grau_par,idioma);
ALTER TABLE historico_envio_dados_motivo_contato WITH CHECK ADD CONSTRAINT historico_envio_dados_motivo_contato_PK PRIMARY KEY CLUSTERED (id_hist_envio_mot_cont);
ALTER TABLE historico_envio_dados_motivo_contato_protocolo WITH CHECK ADD CONSTRAINT historico_envio_dados_motivo_contato_protocolo_PK PRIMARY KEY CLUSTERED (id_hist_envio_mot_cont,id_dados_motivo_contato);
ALTER TABLE historico_envio_motivo_contato WITH CHECK ADD CONSTRAINT PK_historico_envio_motivo_contato PRIMARY KEY CLUSTERED (id_hist_envio_mot_cont);
ALTER TABLE historico_repiqueXpagamento WITH CHECK ADD CONSTRAINT PK_historico_repiqueXpagamento PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_pagto,nr_parcela,id_cli,id_emp,id_prod_emp,nr_endosso_prod_emp,id_hist_repique);
ALTER TABLE identificador_participante_odonto WITH CHECK ADD CONSTRAINT PK__identifi__1B59AE92AA8F5F9E PRIMARY KEY CLUSTERED (id_participante_odonto);
ALTER TABLE itens_segurados WITH CHECK ADD CONSTRAINT itens_segurados_PK PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_item_segurado,nr_endosso_prod_emp);
ALTER TABLE lancamento_agente WITH CHECK ADD CONSTRAINT PK_lancamento_agente PRIMARY KEY CLUSTERED (id_lancamento_agente);
ALTER TABLE lance WITH CHECK ADD CONSTRAINT lance_PK PRIMARY KEY CLUSTERED (id_processo,id_lance);
ALTER TABLE lista_negra WITH CHECK ADD CONSTRAINT lista_negra_PK PRIMARY KEY CLUSTERED (id_cli,id_emp,id_lista_negra);
ALTER TABLE local_atendimento WITH CHECK ADD CONSTRAINT local_atendimento_PK PRIMARY KEY CLUSTERED (local_atend_id,id_processo);
ALTER TABLE log_do_log WITH CHECK ADD CONSTRAINT log_do_log_PK PRIMARY KEY CLUSTERED (id);
ALTER TABLE log_processamento WITH CHECK ADD CONSTRAINT PK_LOG_PROCESSAMENTO PRIMARY KEY CLUSTERED (log_id);
ALTER TABLE log_processamento_detalhe WITH CHECK ADD CONSTRAINT PK_LOG_PROCESSAMENTO_DETALHE PRIMARY KEY CLUSTERED (log_det_id,log_id);
ALTER TABLE log_sintetico WITH CHECK ADD CONSTRAINT log_sintetico_PK PRIMARY KEY CLUSTERED (id_processo);
ALTER TABLE log_tabela WITH CHECK ADD CONSTRAINT log_tabela_PK PRIMARY KEY CLUSTERED (id_log);
ALTER TABLE meta_campanha WITH CHECK ADD CONSTRAINT meta_campanha_PK PRIMARY KEY CLUSTERED (id_cli,id_emp,id_gp_agente,id_agrupamento,id_nivel,id_agente,id_camp,id_prod,id_meta_campanha,id_item_meta);
ALTER TABLE motivo_contato_cliente WITH CHECK ADD CONSTRAINT motivo_contato_cliente_PK PRIMARY KEY CLUSTERED (id_mot);
ALTER TABLE motivo_rejeicao WITH CHECK ADD CONSTRAINT PK_MOTIVO_REJEICAO PRIMARY KEY CLUSTERED (id_mot_rej,id_emp,idioma);
ALTER TABLE pagamento WITH CHECK ADD CONSTRAINT pagamento_PK PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_pagto,nr_parcela,id_cli,id_emp,id_prod_emp,nr_endosso_prod_emp);
ALTER TABLE pagamento_fatura WITH CHECK ADD CONSTRAINT pagamento_fatura_PK PRIMARY KEY CLUSTERED (id_pagto_fat);
ALTER TABLE pagamento_fatura_comissao WITH CHECK ADD CONSTRAINT pagamento_fatura_comissao_PK PRIMARY KEY CLUSTERED (id_pagto_fat,id_pagto_fat_comissao);
ALTER TABLE pagamento_fatura_sequencia WITH CHECK ADD CONSTRAINT PK_pagamento_fatura_sequencia PRIMARY KEY CLUSTERED (sequencial);
ALTER TABLE pagamento_faturaXpagamento WITH CHECK ADD CONSTRAINT pagamento_faturaXpagamento_PK PRIMARY KEY CLUSTERED (id_pagtoxpagamento);
ALTER TABLE pagamento_historico_processamento WITH CHECK ADD CONSTRAINT PK_pagamento_historico_processamento PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_pagto,nr_parcela,id_cli,id_emp,id_prod_emp,nr_endosso_prod_emp);
ALTER TABLE pagamento_parcial WITH CHECK ADD CONSTRAINT PK_pagamento_parcial PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_pagto,id_pagto_parcial,id_prod_emp,nr_endosso_prod_emp,id_cli,id_emp);
ALTER TABLE pagamento_parcial_historico_processamento WITH CHECK ADD CONSTRAINT PK_pagamento_parcial_historico_processamento PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_pagto,id_pagto_parcial,id_prod_emp,nr_endosso_prod_emp,id_cli,id_emp);
ALTER TABLE prestador_servicoXprocesso_beneficioXreservaXcobertura_tipo_produto WITH CHECK ADD CONSTRAINT processo_beneficioXprestador_servicoXprocesso_beneficioXreservaXcobertura_tipo_produto_PK PRIMARY KEY CLUSTERED (id_prest_serv,id_processo,id_prod,id_acesso_benef,idioma,id_tp_evento_sinistro,id_evento_sinistro,id_tp_prod,id_cob,id_tp_reserva);
ALTER TABLE prestador_servicoXprocesso_beneficioXreservaXsubcobertura_tipo_produto WITH CHECK ADD CONSTRAINT processo_beneficioXprestador_servicoXprocesso_beneficioXreservaXsubcobertura_tipo_produto_PK PRIMARY KEY CLUSTERED (id_prest_serv,id_processo,id_prod,id_acesso_benef,idioma,id_tp_evento_sinistro,id_evento_sinistro,id_subcob,id_tp_prod,id_cob,id_tp_reserva);
ALTER TABLE processo_beneficio WITH CHECK ADD CONSTRAINT processo_beneficio_PK PRIMARY KEY CLUSTERED (id_processo);
ALTER TABLE processo_beneficio_motivo WITH CHECK ADD CONSTRAINT processo_beneficio_motivo_PK PRIMARY KEY CLUSTERED (id_processo,id_proc_ben_motivo);
ALTER TABLE processo_beneficio_observacao WITH CHECK ADD CONSTRAINT processo_beneficio_observacao_PK PRIMARY KEY CLUSTERED (id_processo,id_obs);
ALTER TABLE processo_beneficio_pagamento WITH CHECK ADD CONSTRAINT processo_beneficio_pagamento_PK PRIMARY KEY CLUSTERED (id_processo,id_proc_ben_pag);
ALTER TABLE processo_beneficio_pagamento_item WITH CHECK ADD CONSTRAINT processo_beneficio_pagamento_item_PK PRIMARY KEY CLUSTERED (id_processo,id_proc_ben_pag,id_proc_ben_pag_item);
ALTER TABLE processo_beneficio_pagamento_item_parcelas WITH CHECK ADD CONSTRAINT PK_PROCESSO_BENEFICIO_PAGAMENTO_ITEM_PARCELAS PRIMARY KEY CLUSTERED (id_processo,id_proc_ben_pag,id_proc_ben_pag_item,nr_parcela);
ALTER TABLE processo_beneficio_pagamentoXcampos_meio_pagamento WITH CHECK ADD CONSTRAINT PK_PROCESSO_BENEFICIO_PAGAMENT PRIMARY KEY CLUSTERED (id_processo,id_proc_ben_pag,id_proc_ben_pag_item,id_cp_meio_pagto,id_meio_pagto,id_grp_cp,id_cps_sis,idioma);
ALTER TABLE processo_beneficioXacesso_beneficioXcobertura_tipo_produto WITH CHECK ADD CONSTRAINT processo_beneficioXacesso_beneficioXcobertura_tipo_produto_PK PRIMARY KEY CLUSTERED (id_processo,id_prod,id_acesso_benef,idioma,id_tp_prod,id_cob);
ALTER TABLE processo_beneficioXacesso_beneficioXsubcobertura_tipo_produto WITH CHECK ADD CONSTRAINT processo_beneficioXacesso_beneficioXsubcobertura_tipo_produto_PK PRIMARY KEY CLUSTERED (id_processo,id_prod,id_acesso_benef,idioma,id_tp_prod,id_cob,id_subcob);
ALTER TABLE processo_beneficioXbem_adquirido WITH CHECK ADD CONSTRAINT processo_beneficioXbem_adquirido_PK PRIMARY KEY CLUSTERED (id_bem_adq,id_processo);
ALTER TABLE processo_beneficioXdados_produto WITH CHECK ADD CONSTRAINT processo_beneficioXdados_produto_PK PRIMARY KEY CLUSTERED (id_processo,nr_proposta,id_prod_emp,nr_endosso,id_cps_sis,id_grp_cp,id_cp_prod,id_dado_produto,id_agrupador,nr_endosso_prod_emp);
ALTER TABLE processo_beneficioXreservaXcobertura_tipo_produto WITH CHECK ADD CONSTRAINT processo_beneficioXreservaXcobertura_tipo_produto_PK PRIMARY KEY CLUSTERED (id_prod,id_acesso_benef,idioma,id_tp_evento_sinistro,id_evento_sinistro,id_tp_prod,id_cob,id_tp_reserva,id_processo);
ALTER TABLE processo_beneficioXreservaXcobertura_tipo_produto_historico WITH CHECK ADD CONSTRAINT processo_beneficioXreservaXcobertura_tipo_produto_historico_PK PRIMARY KEY CLUSTERED (id_prod,id_acesso_benef,idioma,id_tp_evento_sinistro,id_evento_sinistro,id_tp_prod,id_cob,id_tp_reserva,id_processo,id_historico);
ALTER TABLE processo_beneficioXreservaXsubcobertura_tipo_produto WITH CHECK ADD CONSTRAINT processo_beneficioXreservaXsubcobertura_tipo_produto_PK PRIMARY KEY CLUSTERED (id_prod,id_acesso_benef,idioma,id_tp_evento_sinistro,id_evento_sinistro,id_subcob,id_tp_prod,id_cob,id_tp_reserva,id_processo);
ALTER TABLE processo_beneficioXreservaXsubcobertura_tipo_produto_historico WITH CHECK ADD CONSTRAINT processo_beneficioXreservaXsubcobertura_tipo_produto_historico_PK PRIMARY KEY CLUSTERED (id_prod,id_acesso_benef,idioma,id_tp_evento_sinistro,id_evento_sinistro,id_subcob,id_tp_prod,id_cob,id_tp_reserva,id_processo,id_historico);
ALTER TABLE produto_cliente WITH CHECK ADD CONSTRAINT clienteXproduto_empresa_PK PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_endosso_prod_emp,id_prod_cli);
ALTER TABLE produto_cliente_coberturaXitem_segurado WITH CHECK ADD CONSTRAINT PK_produto_cliente_coberturaXitem_segurado PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_endosso_prod_emp,id_cob,id_tp_prod,idioma,nr_item_segurado);
ALTER TABLE produto_cliente_dados_calculo WITH CHECK ADD CONSTRAINT dados_calculo_produto_PK PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_endosso_prod_emp);
ALTER TABLE produto_cliente_dados_calculo_cobertura WITH CHECK ADD CONSTRAINT produto_cliente_dados_calculo_cobertura_PK PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_endosso_prod_emp,id_cob,idioma,id_tp_prod);
ALTER TABLE produto_cliente_dados_imposto WITH CHECK ADD CONSTRAINT dados_imposto_PK PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_endosso_prod_emp,id_imposto);
ALTER TABLE produto_cliente_dados_meio_pagto WITH CHECK ADD CONSTRAINT clientexproduto_empresaXdados_meio_pagto_PK PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_endosso_prod_emp,id_meio_pagto,id_cps_sis,id_grp_cp,id_cp_meio_pagto);
ALTER TABLE produto_cliente_dados_meio_pagto_historico WITH CHECK ADD CONSTRAINT clientexproduto_empresaXdados_meio_pagto_historico_PK PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_endosso_prod_emp,id_meio_pagto,id_cps_sis,id_grp_cp,id_cp_meio_pagto,id_historico);
ALTER TABLE produto_clienteXcampanha WITH CHECK ADD CONSTRAINT clienteXproduto_empresaXcampanha_PK PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_endosso_prod_emp,id_campanha);
ALTER TABLE produto_clienteXendosso_calculo WITH CHECK ADD CONSTRAINT PK_PRODUTO_CLIENTEXENDOSSO_CAL PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_endosso_prod_emp,id_endosso_calc_prod,idioma_endosso_calc_prod,id_tp_endosso_calc_prod);
ALTER TABLE produto_clienteXfranquia WITH CHECK ADD CONSTRAINT clienteXproduto_empresaXfranquia_PK PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_endosso_prod_emp,id_franquia,id_cob,id_tp_prod,id_prod,idioma,id_incidencia_franquia);
ALTER TABLE produto_clienteXrange_numero WITH CHECK ADD CONSTRAINT PK_produto_clienteXrange_numero PRIMARY KEY CLUSTERED (id_range_numero,id_prod_cli);
ALTER TABLE produto_clienteXremuneracao_corretor WITH CHECK ADD CONSTRAINT clienteXproduto_empresaXremuneracao_corretor_PK PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_endosso_prod_emp,id_rem_corretor,nr_parcela);
ALTER TABLE produto_clienteXremuneracao_corretor_parcial WITH CHECK ADD CONSTRAINT PK_remuneracaocorretorparcial PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_pagto,id_pagto_parcial,id_prod_emp,nr_endosso_prod_emp,id_cli,id_emp,id_rem_corretor);
ALTER TABLE produto_clienteXremuneracao_empresa WITH CHECK ADD CONSTRAINT produto_clienteXremuneracao_empresa_PK PRIMARY KEY CLUSTERED (id_rem_emp,id_prod_emp,nr_endosso,nr_endosso_prod_emp,nr_proposta,nr_parcela);
ALTER TABLE produto_clienteXremuneracao_empresa_parcial WITH CHECK ADD CONSTRAINT PK_remuneracaoempresaparcial PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_pagto,id_pagto_parcial,id_prod_emp,nr_endosso_prod_emp,id_cli,id_emp,id_rem_emp);
ALTER TABLE produto_clienteXvalores_beneficios WITH CHECK ADD CONSTRAINT clienteXproduto_empresaXvalores_beneficios_PK PRIMARY KEY CLUSTERED (nr_proposta,nr_endosso,id_prod_emp,nr_endosso_prod_emp,id);
ALTER TABLE protocolo WITH CHECK ADD CONSTRAINT protocolo_PK PRIMARY KEY CLUSTERED (id_emp,mes_ano);
ALTER TABLE relatorio_produtividade WITH CHECK ADD CONSTRAINT PK__relatori__9A4211C21D99589D PRIMARY KEY CLUSTERED (id_relatorio_produtividade);
ALTER TABLE resposta_avaliacao_risco WITH CHECK ADD CONSTRAINT resposta_avaliacao_risco_PK PRIMARY KEY CLUSTERED (id_prod,id_acesso_benef,id_perg_aval_risco,id_processo);
ALTER TABLE rotina_cabecalho_linha WITH CHECK ADD CONSTRAINT rotina_cabecalho_linha_PK PRIMARY KEY CLUSTERED (id_rotina,tipo_ent_id,id_entidade,id_fluxo_instancia,nr_linha_arquivo,id_rotina_cabec,nr_ordem_cabecalho,id_agrupador_registro);
ALTER TABLE rotina_registro_linha WITH CHECK ADD CONSTRAINT rotina_registro_linha_PK PRIMARY KEY CLUSTERED (id_rotina,tipo_ent_id,id_entidade,id_fluxo_instancia,nr_linha_arquivo,id_rotina_reg,nr_ordem_registro,id_agrupador_registro);
ALTER TABLE rotina_rodape_linha WITH CHECK ADD CONSTRAINT rotina_rodape_linha_PK PRIMARY KEY CLUSTERED (id_rotina,tipo_ent_id,id_entidade,id_fluxo_instancia,nr_linha_arquivo,id_rotina_rod,nr_ordem_rodape,id_agrupador_registro);
ALTER TABLE selecao_cobranca WITH CHECK ADD CONSTRAINT PK_selecao_cobranca PRIMARY KEY CLUSTERED (id_emp,id_cli,id_prod_emp,id_meio_pagto,nr_proposta,mes_ano_ref,id_tp_trans);
ALTER TABLE status_cobranca WITH CHECK ADD CONSTRAINT status_cobranca_PK PRIMARY KEY CLUSTERED (id_status_cobranca,idioma);
ALTER TABLE status_cotacao WITH CHECK ADD CONSTRAINT status_cotacao_PK PRIMARY KEY CLUSTERED (id_status_cotacao,idioma);
ALTER TABLE status_documentacao WITH CHECK ADD CONSTRAINT status_documentacao_PK PRIMARY KEY CLUSTERED (id_sta_doc,idioma);
ALTER TABLE status_fatura WITH CHECK ADD CONSTRAINT status_fatura_PK PRIMARY KEY CLUSTERED (id_status_fatura,idioma);
ALTER TABLE status_pagamento WITH CHECK ADD CONSTRAINT status_pagamento_PK PRIMARY KEY CLUSTERED (id_status_pagto,idioma);
ALTER TABLE status_pericia WITH CHECK ADD CONSTRAINT status_pericia_PK PRIMARY KEY CLUSTERED (id_st_pericia,idioma);
ALTER TABLE status_processo WITH CHECK ADD CONSTRAINT status_processo_PK PRIMARY KEY CLUSTERED (id_status_processo,idioma);
ALTER TABLE status_produto_cliente_gproxslite WITH CHECK ADD CONSTRAINT pk_status_produto_cliente_gproxslite PRIMARY KEY CLUSTERED (id_status_proposta,idioma,id_prod_emp);
ALTER TABLE status_proposta WITH CHECK ADD CONSTRAINT status_produto_cliente_PK PRIMARY KEY CLUSTERED (id_status_proposta,idioma);
ALTER TABLE status_reserva_processo_beneficio WITH CHECK ADD CONSTRAINT status_reserva_processo_beneficio_PK PRIMARY KEY CLUSTERED (id_st_reserva,idioma);
ALTER TABLE tb_selecao_cobranca WITH CHECK ADD CONSTRAINT PK_tb_selecao_cobranca PRIMARY KEY CLUSTERED (id_emp,id_cli,id_prod_emp,id_meio_pagto,nr_proposta,mes_ano_ref,id_tp_trans);
ALTER TABLE tipo_beneficiario WITH CHECK ADD CONSTRAINT tipo_beneficiario_PK PRIMARY KEY CLUSTERED (id_tp_beneficiario,idioma);
ALTER TABLE tipo_operacao_fechamento WITH CHECK ADD CONSTRAINT PK__tipo_ope__310887A15AC2F911 PRIMARY KEY CLUSTERED (id_tp_op,idioma);
ALTER TABLE vistoria_pericia WITH CHECK ADD CONSTRAINT vistoria_pericia_PK PRIMARY KEY CLUSTERED (id_vis_per,id_processo);

 CREATE NONCLUSTERED INDEX IDX_id_prod_emp_nr_endosso_id_edosso_calc ON dbo.controle_alt_cliente_produto (  id_prod_emp ASC  , nr_endosso ASC  , id_endosso_calc_prod ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_id_prod_emp_nr_proposta_nr_endosso_id_end_calc ON dbo.controle_alt_cliente_produto (  id_prod_emp ASC  , nr_proposta ASC  , nr_endosso ASC  , id_endosso_calc_prod ASC  )   INCLUDE ( id_fluxo_1 , id_fluxo_2 , id_fluxo_3 , id_fluxo_4 , id_fluxo_5 )  ;
 CREATE NONCLUSTERED INDEX Idx_IdProdEmp_IdTpEndossoCalcProd_IdEndossoCalcProd ON dbo.controle_alt_cliente_produto (  id_prod_emp ASC  , id_tp_endosso_calc_prod ASC  , id_endosso_calc_prod ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_IdProdEmp_IdTpTrans_DtCreditoCliente ON dbo.controle_alt_pagamento (  id_prod_emp ASC  , id_tp_trans ASC  , dt_credito_cliente ASC  )   INCLUDE ( id_fluxo_1 , id_fluxo_2 , id_fluxo_3 , id_fluxo_4 , id_fluxo_5 , nr_endosso , nr_parcela , nr_proposta )  ;
 CREATE NONCLUSTERED INDEX idx01_controle_alt_pagamento ON dbo.controle_alt_pagamento (  nr_proposta ASC  , id_prod_emp ASC  , nr_parcela ASC  )   ;
 CREATE  UNIQUE  INDEX IDX_NR_RECIBO_IDENTITY ON dbo.pagamento (  nr_recibo_identity ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_COBPAGTO01 ON dbo.pagamento (  dt_vencimento ASC  )   INCLUDE ( dt_sorteio , fl_pertence_outro_endosso , id_cli , id_emp , id_pagto , id_prod_emp , id_status_pagto , id_status_sorteado , id_tp_trans , mes_ano_ref , nr_endosso , nr_endosso_prod_emp , nr_parcela , nr_proposta , nr_recibo , nr_recibo_identity , numero_sorte , valor )  ;
 CREATE NONCLUSTERED INDEX IDX_DT_DEBITO_CLI ON dbo.pagamento (  dt_debito_cliente ASC  )   INCLUDE ( id_prod_emp , nr_endosso , nr_endosso_prod_emp , nr_proposta )  ;
 CREATE NONCLUSTERED INDEX IDX_DtSelecao ON dbo.pagamento (  dt_selecao ASC  )   INCLUDE ( dt_sorteio , id_prod_emp )  ;
 CREATE NONCLUSTERED INDEX IDX_FATURAMENTO_MONITOR_01 ON dbo.pagamento (  id_status_pagto ASC  , dt_debito_cliente ASC  )   INCLUDE ( id_prod_emp , nr_recibo )  ;
 CREATE NONCLUSTERED INDEX IDX_FATURAMENTO_MONITOR_02 ON dbo.pagamento (  id_status_pagto ASC  , dt_debito_cliente ASC  )   INCLUDE ( dt_vencimento , id_prod_emp , nr_proposta , nr_recibo )  ;
 CREATE NONCLUSTERED INDEX IDX_FATURAMENTO_MONITOR_O3 ON dbo.pagamento (  id_status_pagto ASC  , dt_debito_cliente ASC  )   INCLUDE ( id_prod_emp , mes_ano_ref , nr_proposta , nr_recibo )  ;
 CREATE NONCLUSTERED INDEX IDX_Id_Cli_Id_Emp_Id_Prod_Emp_Idioma_Id_Status_Sorteado ON dbo.pagamento (  id_cli ASC  , id_emp ASC  , id_prod_emp ASC  , idioma ASC  , id_status_sorteado ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_id_forma_parc_nr_proposta_endosso ON dbo.pagamento (  id_form_parc ASC  )   INCLUDE ( nr_endosso , nr_proposta )  ;
 CREATE NONCLUSTERED INDEX IDX_IdEmp_NrProposta_IdProdEmp_NrParcela ON dbo.pagamento (  id_emp ASC  , nr_proposta ASC  , id_prod_emp ASC  , nr_parcela ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_IdStatusPagto_IdRangeNumero ON dbo.pagamento (  id_status_pagto ASC  , id_range_numero ASC  )   INCLUDE ( cd_autorizacao , ds_auxiliar , dt_credito_cliente , dt_credito_empresa , dt_debito_cliente , dt_debito_empresa , dt_envio , dt_sorteio , dt_vencimento , id_cli , id_emp , id_meio_pagto , id_prod_emp , id_range , id_status_sorteado , id_tp_meio_pagto , id_tp_trans , mes_ano_ref , nr_endosso , nr_endosso_prod_emp , nr_parcela , nr_proposta , nr_recibo_identity , url_recibo , valor , valor_imposto , valor_puro )  ;
 CREATE NONCLUSTERED INDEX IDX_nr_proposta_nr_endosso_id_form ON dbo.pagamento (  nr_proposta ASC  , nr_endosso ASC  )   INCLUDE ( id_form_parc )  ;
 CREATE NONCLUSTERED INDEX IDX_NrParcela ON dbo.pagamento (  nr_parcela ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_NrParcela_Composta ON dbo.pagamento (  nr_parcela ASC  )   INCLUDE ( id_emp , id_prod_emp , nr_endosso_prod_emp , nr_proposta )  ;
 CREATE NONCLUSTERED INDEX Idx_NrProposta_NrEndosso_IdProdEmp_NrEndossoProdEmp_IdStatusPagto ON dbo.pagamento (  nr_proposta ASC  , nr_endosso ASC  , id_prod_emp ASC  , nr_endosso_prod_emp ASC  , id_status_pagto ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_Pagamento_NrEndosso_NrParcela ON dbo.pagamento (  nr_endosso ASC  , nr_parcela ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_PAGAMENTO_NRSORTE_DTSORTEIO ON dbo.pagamento (  id_status_pagto ASC  , numero_sorte ASC  , dt_sorteio ASC  )   INCLUDE ( id_emp , id_prod_emp , id_status_sorteado , id_tp_trans , nr_endosso_prod_emp , nr_proposta , nr_recibo_identity , serie )  ;
 CREATE NONCLUSTERED INDEX idx_pg_id_pagto ON dbo.pagamento (  id_pagto ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_USP_EXTRACAO_ESTIMULO_CANCELAMENTO ON dbo.pagamento (  nr_proposta ASC  , nr_endosso ASC  , id_prod_emp ASC  , nr_endosso_prod_emp ASC  )   INCLUDE ( dt_vencimento , nr_parcela )  ;
 CREATE NONCLUSTERED INDEX IDX_ValidacaoGeracaoRange ON dbo.pagamento (  id_status_pagto ASC  , idioma ASC  , fl_exc ASC  , dt_vencimento ASC  )   INCLUDE ( id_prod_emp , id_range_numero , nr_endosso , nr_endosso_prod_emp , nr_proposta )  ;
 CREATE NONCLUSTERED INDEX idx01_pagamento ON dbo.pagamento (  id_status_pagto ASC  )   INCLUDE ( dt_credito_cliente , dt_debito_cliente , id_prod_emp , nr_endosso , nr_endosso_prod_emp , nr_proposta )  ;
 CREATE NONCLUSTERED INDEX idx02_pagamento ON dbo.pagamento (  id_range ASC  , dt_alt ASC  )   ;
 CREATE NONCLUSTERED INDEX idx03_pagamento ON dbo.pagamento (  id_prod_emp ASC  , nr_recibo ASC  , nr_endosso ASC  )   ;
 CREATE NONCLUSTERED INDEX idx04_pagamento ON dbo.pagamento (  nr_proposta ASC  , nr_endosso ASC  , id_prod_emp ASC  , nr_endosso_prod_emp ASC  , fl_exc ASC  )   ;
 CREATE NONCLUSTERED INDEX idx01_correspondencia ON dbo.correspondencia (  id_cli ASC  , id_meio_trans ASC  , dt_envio ASC  )   INCLUDE ( nm_arquivo )  ;
 CREATE NONCLUSTERED INDEX IDX_ID_CLI_ID_EMP_IDIOMA ON dbo.cotacao_cliente (  id_cli ASC  , id_emp ASC  , idioma ASC  )   ;
 CREATE NONCLUSTERED INDEX idx_pgfatpg_idpagtofat_idprodemp_idmeiopagto_id_forn ON dbo.pagamento_faturaXpagamento (  id_prod_emp ASC  , id_meio_pagto ASC  , id_forn ASC  , id_pagto_fat ASC  )   ;
 CREATE NONCLUSTERED INDEX idx01_cotacao_clienteXvalores_beneficio ON dbo.cotacao_clienteXvalores_beneficio (  id_agrupador ASC  , id_tp_part ASC  , id_bem ASC  , id_tp_bem ASC  , id_cob ASC  , id_subcob ASC  , id_tp_prod ASC  , nr_cotacao ASC  )   ;
 CREATE  INDEX idx01_dados_beneficiarios ON dbo.dados_beneficiarios (  nr_proposta ASC  , id_prod_emp ASC  , nr_endosso_prod_emp ASC  , nr_endosso ASC  , fl_exc ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_nr_endosso_id_prod_emp_fl_Exc ON dbo.dados_beneficiarios (  nr_endosso ASC  , id_prod_emp ASC  , fl_exc ASC  )   ;
 CREATE  INDEX IDX_DADOS_CLIENTE_id_dado_cliente ON dbo.dados_cliente (  id_dado_cliente ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_FlExc_IdCpsSis ON dbo.dados_cliente (  fl_exc ASC  , id_cps_sis ASC  )   ;
 CREATE NONCLUSTERED INDEX idx01_dados_cliente ON dbo.dados_cliente (  id_cps_sis ASC  )   INCLUDE ( id_cli , valor_dado_cli )  ;
 CREATE NONCLUSTERED INDEX idx02_dados_cliente ON dbo.dados_cliente (  id_cli ASC  , id_cps_sis ASC  , id_grp_cp ASC  , id_dado_cliente ASC  , valor_dado_cli ASC  )   ;
 CREATE NONCLUSTERED INDEX idx_dados_produto ON dbo.dados_produto (  id_grp_cp ASC  , id_cps_sis ASC  , id_cp_prod ASC  , vl_dado_prod ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_DADOS_PRODUTO_CONS_GPROXS ON dbo.dados_produto (  id_prod_emp ASC  , id_grp_cp ASC  , id_cps_sis ASC  , id_cp_prod ASC  , vl_dado_prod ASC  )   INCLUDE ( nr_proposta )  ;
 CREATE NONCLUSTERED INDEX idx_dp_prodemp_idcpssis_idcpprod_idgrpcp ON dbo.dados_produto (  id_prod_emp ASC  , id_grp_cp ASC  , id_cps_sis ASC  , id_cp_prod ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_FlExc_DtEnvio_IdCpsSis ON dbo.dados_produto (  fl_exc ASC  , dt_envio ASC  , id_cps_sis ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_IdGrpCp_IdCpProd_FlExc_DtEnvio_IdCpsSis ON dbo.dados_produto (  id_grp_cp ASC  , id_cp_prod ASC  , fl_exc ASC  , dt_envio ASC  , id_cps_sis ASC  )   INCLUDE ( id_agrupador , id_dado_produto , id_prod_emp , nr_endosso , nr_endosso_prod_emp , nr_proposta , vl_dado_prod , vl_ref_dado_prod )  ;
 CREATE NONCLUSTERED INDEX IDX_VlDadoProd_IdBem_IdTpBem_FlExc ON dbo.dados_produto (  vl_dado_prod ASC  , id_bem ASC  , id_tp_bem ASC  , fl_exc ASC  )   INCLUDE ( id_prod_emp , nr_endosso , nr_endosso_prod_emp , nr_proposta )  ;
 CREATE NONCLUSTERED INDEX idx01_dados_produto ON dbo.dados_produto (  nr_proposta ASC  , nr_endosso ASC  , id_prod_emp ASC  , nr_endosso_prod_emp ASC  , fl_exc ASC  )   ;
 CREATE NONCLUSTERED INDEX idx03_dados_produto ON dbo.dados_produto (  id_agrupador ASC  , id_prod_emp ASC  , nr_endosso_prod_emp ASC  , id_cps_sis ASC  , id_grp_cp ASC  , id_cp_prod ASC  , nr_proposta ASC  , nr_endosso ASC  , fl_exc ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_fl_ultimo_endosso ON dbo.produto_cliente (  fl_ultimo_endosso ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_FlExc ON dbo.produto_cliente (  fl_exc ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_IdGpAgente_IdAgente ON dbo.produto_cliente (  id_gp_agente ASC  , id_agente ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_IdProdEmp_IdCli_IdEmp_Idioma_FlUltimoEndosso_IdStatusProposta ON dbo.produto_cliente (  id_prod_emp ASC  , id_cli ASC  , id_emp ASC  , idioma ASC  , fl_ultimo_endosso ASC  , id_status_proposta ASC  )   ;
 CREATE NONCLUSTERED INDEX Idx_IdProdEmp_Idioma ON dbo.produto_cliente (  id_prod_emp ASC  , idioma ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_IdProdEmp_NrEndossoProdEmp ON dbo.produto_cliente (  id_prod_emp ASC  , nr_endosso_prod_emp ASC  )   INCLUDE ( dt_emissao_endosso , dt_venda , fl_ultimo_endosso , id_cli , id_prod_cli , id_status_proposta , id_usr , nr_endosso , nr_proposta )  ;
 CREATE NONCLUSTERED INDEX IDX_nr_endosso_id_prod_emp ON dbo.produto_cliente (  nr_endosso ASC  , id_prod_emp ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_NrProposta_NrEndosso_NrEndossoProdEmp ON dbo.produto_cliente (  id_prod_emp ASC  , id_status_proposta ASC  , idioma ASC  , fl_ultimo_endosso ASC  )   INCLUDE ( nr_endosso , nr_endosso_prod_emp , nr_proposta )  ;
 CREATE NONCLUSTERED INDEX IDX_PROD_CLIENTE_CONS_PAGINCACAO ON dbo.produto_cliente (  id_prod_emp ASC  , fl_ultimo_endosso ASC  , dt_ini_vig ASC  )   INCLUDE ( id_cli , id_prod_cli , nr_apolice , nr_endosso , nr_endosso_prod_emp , nr_proposta , vl_total )  ;
 CREATE NONCLUSTERED INDEX idx_produto_cliente_01 ON dbo.produto_cliente (  fl_ultimo_endosso ASC  )   INCLUDE ( nr_proposta )  ;
 CREATE NONCLUSTERED INDEX IDX_produto_cliente_12 ON dbo.produto_cliente (  nr_proposta ASC  , nr_endosso ASC  , id_prod_emp ASC  , nr_endosso_prod_emp ASC  , fl_ultimo_endosso ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_Reajuste_01 ON dbo.produto_cliente (  id_status_proposta ASC  , fl_exc ASC  , fl_ultimo_endosso ASC  , dt_fim_vig ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_Reajuste_02 ON dbo.produto_cliente (  id_prod_emp ASC  , nr_endosso_prod_emp ASC  , id_status_proposta ASC  , fl_exc ASC  , fl_ultimo_endosso ASC  )   INCLUDE ( dt_fim_vig , dt_fim_vigencia_endosso , dt_ini_vig , dt_inicio_vigencia_endosso , nr_endosso , nr_proposta )  ;
 CREATE NONCLUSTERED INDEX IDX_STRESSTEST ON dbo.produto_cliente (  id_status_proposta ASC  , fl_ultimo_endosso ASC  )   ;
 CREATE NONCLUSTERED INDEX idx01_produto_cliente ON dbo.produto_cliente (  id_prod_cli ASC  )   ;
 CREATE NONCLUSTERED INDEX idx02_produto_cliente ON dbo.produto_cliente (  fl_ultimo_endosso ASC  )   ;
 CREATE NONCLUSTERED INDEX idx03_produto_cliente ON dbo.produto_cliente (  fl_ultimo_endosso ASC  )   INCLUDE ( nr_proposta )  ;
 CREATE NONCLUSTERED INDEX idx04_produto_cliente ON dbo.produto_cliente (  nr_proposta ASC  , id_prod_emp ASC  )   INCLUDE ( nr_endosso )  ;
 CREATE NONCLUSTERED INDEX idx05_produto_cliente ON dbo.produto_cliente (  id_prod_cli ASC  )   ;
 CREATE NONCLUSTERED INDEX idx11_produto_cliente ON dbo.produto_cliente (  id_gp_agente ASC  , id_usr ASC  , id_agente ASC  , dt_alt ASC  )   ;
 CREATE NONCLUSTERED INDEX idx14_produto_cliente ON dbo.produto_cliente (  nr_proposta ASC  , nr_endosso ASC  , id_prod_emp ASC  , nr_endosso_prod_emp ASC  )   INCLUDE ( id_meio_pagto , id_status_proposta )  ;
 CREATE NONCLUSTERED INDEX ix01_produto_cliente ON dbo.produto_cliente (  id_prod_cli ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_ETL_DT_VENDA ON dbo.etl_venda_canc (  id_filial_venda ASC  )   INCLUDE ( dt_emissao_endosso , dt_venda , id_prod_emp , id_status_proposta , nm_filial_venda )  ;
 CREATE NONCLUSTERED INDEX IDX_ETL_ID_FILIAL ON dbo.etl_venda_canc (  id_filial_venda ASC  )   INCLUDE ( dt_emissao_endosso , dt_venda , id_agente_venda , id_prod_emp , id_status_proposta , nm_agente_inclusao , nm_agente_venda , nm_login_inclusao , nr_matricula_agente_venda , vl_chave1_cli , vl_chave2_cli )  ;
 CREATE  INDEX idx01_produto_cliente_dados_calculo ON dbo.produto_cliente_dados_calculo (  nr_proposta ASC  , nr_endosso ASC  , id_prod_emp ASC  , nr_endosso_prod_emp ASC  , fl_exc ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_07 ON dbo.produto_cliente_dados_calculo (  id_prod_emp ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_08 ON dbo.produto_cliente_dados_calculo (  id_prod_emp ASC  )   INCLUDE ( nr_endosso , nr_endosso_prod_emp , nr_proposta , vl_calculo_puro , vl_total )  ;
 CREATE  INDEX idx01_produto_cliente_dados_calculo_cobertura ON dbo.produto_cliente_dados_calculo_cobertura (  nr_endosso_prod_emp ASC  , id_prod_emp ASC  , nr_proposta ASC  , nr_endosso ASC  , fl_exc ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO ON dbo.produto_cliente_dados_calculo_cobertura (  id_prod_emp ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_02 ON dbo.produto_cliente_dados_calculo_cobertura (  id_prod_emp ASC  )   INCLUDE ( id_cob , id_tp_prod , nr_endosso , nr_endosso_prod_emp , nr_proposta , valor )  ;
 CREATE NONCLUSTERED INDEX idx_prod_cal_nr_endosso_id_prod_emp ON dbo.produto_cliente_dados_calculo_cobertura (  nr_endosso ASC  , id_prod_emp ASC  )   ;
 CREATE NONCLUSTERED INDEX idx_prod_cal_nr_endosso_id_prod_emp_2 ON dbo.produto_cliente_dados_calculo_cobertura (  nr_endosso ASC  , id_prod_emp ASC  )   INCLUDE ( id_cob , id_tp_prod , nr_endosso_prod_emp , nr_proposta , valor )  ;
 CREATE  INDEX idx01_produto_cliente_dados_imposto ON dbo.produto_cliente_dados_imposto (  nr_proposta ASC  , nr_endosso ASC  , id_prod_emp ASC  , nr_endosso_prod_emp ASC  , fl_exc ASC  )   ;
 CREATE NONCLUSTERED INDEX idx01_produto_cliente_dados_meio_pagto ON dbo.produto_cliente_dados_meio_pagto (  nr_proposta ASC  , nr_endosso ASC  , id_prod_emp ASC  , nr_endosso_prod_emp ASC  , id_meio_pagto ASC  , id_cps_sis ASC  , id_grp_cp ASC  , id_cp_meio_pagto ASC  )   ;
 CREATE NONCLUSTERED INDEX idx01_produto_clienteXcampanha ON dbo.produto_clienteXcampanha (  nr_proposta ASC  , nr_endosso ASC  , id_prod_emp ASC  , fl_exc ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_03 ON dbo.produto_clienteXendosso_calculo (  id_tp_endosso_calc_prod ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_NRPROPOSTA_ENDOSSO_IDPRODEMP ON dbo.produto_clienteXendosso_calculo (  nr_proposta ASC  , nr_endosso ASC  )   ;
 CREATE NONCLUSTERED INDEX idx01_produto_clienteXremuneracao_empresa ON dbo.produto_clienteXremuneracao_empresa (  id_prod_emp ASC  )   INCLUDE ( id_rem_emp , nr_endosso , nr_endosso_prod_emp , nr_parcela , nr_proposta )  ;
 CREATE NONCLUSTERED INDEX idx02_produto_clienteXremuneracao_empresa ON dbo.produto_clienteXremuneracao_empresa (  id_prod_emp ASC  , nr_endosso ASC  , nr_proposta ASC  , nr_endosso_prod_emp ASC  , id_status_pagto ASC  , id_rem_emp ASC  , nr_parcela ASC  )   ;
 CREATE NONCLUSTERED INDEX idx03_produto_clienteXremuneracao_empresa ON dbo.produto_clienteXremuneracao_empresa (  nr_proposta ASC  , nr_endosso ASC  )   ;
 CREATE NONCLUSTERED INDEX idx04_produto_clienteXremuneracao_empresa ON dbo.produto_clienteXremuneracao_empresa (  nr_proposta ASC  , nr_endosso ASC  , id_prod_emp ASC  , nr_endosso_prod_emp ASC  , fl_exc ASC  )   ;
 CREATE  INDEX idx01_produto_clienteXvalores_beneficios ON dbo.produto_clienteXvalores_beneficios (  nr_endosso_prod_emp ASC  , id_prod_emp ASC  , nr_proposta ASC  , nr_endosso ASC  , fl_exc ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_04 ON dbo.produto_clienteXvalores_beneficios (  id_prod_emp ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_05 ON dbo.produto_clienteXvalores_beneficios (  id_prod_emp ASC  )   INCLUDE ( id_agrupador , id_bem , id_cob , id_tp_bem , id_tp_part , id_tp_prod , nr_endosso , nr_endosso_prod_emp , nr_proposta , valor )  ;
 CREATE NONCLUSTERED INDEX IDX_AJUSTE_DADOS_CALC_RENOVACAO_06 ON dbo.produto_clienteXvalores_beneficios (  nr_endosso ASC  , id_prod_emp ASC  )   INCLUDE ( id_agrupador , id_bem , id_cob , id_tp_bem , id_tp_part , id_tp_prod , nr_proposta , valor )  ;
 CREATE NONCLUSTERED INDEX idx_nr_endosso_id_prod_emp ON dbo.produto_clienteXvalores_beneficios (  nr_endosso ASC  , id_prod_emp ASC  )   ;
 CREATE  INDEX idx01_itens_segurados ON dbo.itens_segurados (  nr_proposta ASC  , nr_endosso ASC  , id_prod_emp ASC  , nr_endosso_prod_emp ASC  , fl_exc ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_IdAgrupamento ON dbo.lancamento_agente (  id_agrupamento ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_LCTOAG01 ON dbo.lancamento_agente (  id_agente ASC  , id_agrupamento ASC  )   INCLUDE ( dt_envio , id_lancamento_agente , id_status_pagto , mes_ano_ref , valor_lancamento )  ;
 CREATE NONCLUSTERED INDEX IDX_LCTOAGRUP1 ON dbo.lancamento_agente (  id_agrupamento ASC  )   INCLUDE ( dt_envio , id_agente , id_lancamento_agente , id_status_pagto , mes_ano_ref , valor_lancamento )  ;
 CREATE NONCLUSTERED INDEX idx01_lancamento_agente ON dbo.lancamento_agente (  id_agente ASC  , dt_lancamento ASC  )   INCLUDE ( id_agrupamento , id_gp_agente , id_lancamento_agente , id_nivel , valor_lancamento )  ;
 CREATE NONCLUSTERED INDEX IDX_IdStPagto_DtLiberacao ON dbo.lancamento_agenteXproduto_cliente (  id_st_pagto ASC  , dt_liberacao ASC  )   INCLUDE ( id_lancamento_agente , id_prod_emp , nr_endosso , nr_endosso_prod_emp , nr_parcela , nr_proposta )  ;
 CREATE NONCLUSTERED INDEX IDX_LCTOPRODCLIAGRUP1 ON dbo.lancamento_agenteXproduto_cliente (  id_lancamento_agente ASC  )   INCLUDE ( id_prod_emp , nr_endosso , nr_endosso_prod_emp , nr_proposta )  ;
 CREATE NONCLUSTERED INDEX idx01_lancamento_agenteXproduto_cliente ON dbo.lancamento_agenteXproduto_cliente (  nr_endosso ASC  , nr_proposta ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_IdCpsSisCliente ON dbo.rotina_registro_linha (  id_cps_sis_cliente ASC  )   ;
 CREATE  INDEX idx01_cliente ON dbo.cliente (  id_emp ASC  , id_cli ASC  , fl_exc ASC  )   ;
 CREATE NONCLUSTERED INDEX chave1 ON dbo.cliente (  vl_chave1_cli ASC  )   ;
 CREATE NONCLUSTERED INDEX chave2 ON dbo.cliente (  vl_chave2_cli ASC  )   ;
 CREATE NONCLUSTERED INDEX chave3 ON dbo.cliente (  vl_chave3_cli ASC  )   ;
 CREATE NONCLUSTERED INDEX IDX_CLIENTE_ID_EMP_ID_TP_CLI_FL_EXC ON dbo.cliente (  id_emp ASC  , id_tp_cli ASC  , fl_exc ASC  )   INCLUDE ( fl_n_visual , fl_prospect_cli , id_cli , id_cps_sis_chave1 , id_cps_sis_chave2 , id_cps_sis_chave3 , id_grp_cp_chave1 , id_grp_cp_chave2 , id_grp_cp_chave3 , idioma_chave1 , idioma_chave2 , idioma_chave3 , vl_chave1_cli , vl_chave2_cli , vl_chave3_cli )  ;
 CREATE NONCLUSTERED INDEX IDX_FL_EXC_ID_EMP_VL_CHAVE2_CLI ON dbo.cliente (  fl_exc ASC  , id_tp_cli ASC  , id_emp ASC  , vl_chave1_cli ASC  , vl_chave2_cli ASC  , vl_chave3_cli ASC  )  ;
 CREATE NONCLUSTERED INDEX idx02_cliente ON dbo.cliente (  id_cli ASC  , vl_chave3_cli ASC  , vl_chave1_cli ASC  , vl_chave2_cli ASC  , id_emp ASC  , fl_exc ASC  )   ;
 CREATE NONCLUSTERED INDEX idx03_cliente ON dbo.cliente (  dt_alt DESC  )   INCLUDE ( dt_envio , dt_retorno , fl_aproveita_dados_end , fl_cli_vinculo , fl_email , fl_exc , fl_maladireta , fl_n_visual , fl_prospect_cli , fl_sms , fl_telemarketing , id_cli , id_cli_legado , id_cli_vinculo , id_cps_sis_chave1 , id_cps_sis_chave2 , id_cps_sis_chave3 , id_emp , id_emp_vinculo , id_grp_cp_chave1 , id_grp_cp_chave2 , id_grp_cp_chave3 , id_tp_cli , id_vinculo_pf , idioma_chave1 , idioma_chave2 , idioma_chave3 , vl_chave1_cli , vl_chave2_cli , vl_chave3_cli )  ;
 CREATE  UNIQUE NONCLUSTERED INDEX indice_fillTextSearch ON dbo.cliente (  id_cli ASC  )   ;
 CREATE  INDEX idx01_log_analitico ON dbo.log_analitico (  id_processo ASC  )   ;

 
 CREATE NONCLUSTERED INDEX [<IDX_WSCANCEL, sysname,>] ON [dbo].[produto_cliente]
(
	[nr_endosso] ASC,
	[id_prod_emp] ASC
)
INCLUDE ( 	[nr_proposta],
	[nr_endosso_prod_emp],
	[id_cli],
	[id_status_proposta]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [<IDXWSCancelamento, sysname,>]    Script Date: 01/10/2018 15:40:22 ******/
CREATE NONCLUSTERED INDEX [<IDXWSCancelamento, sysname,>] ON [dbo].[produto_clienteXendosso_calculo]
(
	[nr_endosso] ASC
)
INCLUDE ( 	[nr_proposta],
	[id_prod_emp],
	[id_tp_endosso_calc_prod]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO



ALTER TABLE [dbo].[autorizacao_pagamento]  WITH CHECK ADD  CONSTRAINT [FK_AUTORIZA_REFERENCE_BENEFICI] FOREIGN KEY([id_processo], [id_beneficiario])
REFERENCES [dbo].[beneficiario] ([id_processo], [id_beneficiario])
GO
ALTER TABLE [dbo].[autorizacao_pagamento] CHECK CONSTRAINT [FK_AUTORIZA_REFERENCE_BENEFICI]
GO
ALTER TABLE [dbo].[autorizacao_pagamento]  WITH CHECK ADD  CONSTRAINT [FK_AUTORIZA_REFERENCE_PROCESSO] FOREIGN KEY([id_processo], [id_proc_ben_pag], [id_proc_ben_pag_item])
REFERENCES [dbo].[processo_beneficio_pagamento_item] ([id_processo], [id_proc_ben_pag], [id_proc_ben_pag_item])
GO
ALTER TABLE [dbo].[autorizacao_pagamento] CHECK CONSTRAINT [FK_AUTORIZA_REFERENCE_PROCESSO]
GO
ALTER TABLE [dbo].[autorizacao_pagamento]  WITH CHECK ADD  CONSTRAINT [FK_AUTORIZA_REFERENCE_STATUS_P] FOREIGN KEY([id_status_pagto], [idioma])
REFERENCES [dbo].[status_pagamento] ([id_status_pagto], [idioma])
GO
ALTER TABLE [dbo].[autorizacao_pagamento] CHECK CONSTRAINT [FK_AUTORIZA_REFERENCE_STATUS_P]
GO
ALTER TABLE [dbo].[beneficiario]  WITH CHECK ADD  CONSTRAINT [grau_parentesco_beneficiario_FK1] FOREIGN KEY([id_grau_par], [idioma])
REFERENCES [dbo].[grau_parentesco] ([id_grau_par], [idioma])
GO
ALTER TABLE [dbo].[beneficiario] CHECK CONSTRAINT [grau_parentesco_beneficiario_FK1]
GO
ALTER TABLE [dbo].[beneficiario]  WITH CHECK ADD  CONSTRAINT [processo_beneficio_beneficiario_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[beneficiario] CHECK CONSTRAINT [processo_beneficio_beneficiario_FK1]
GO
ALTER TABLE [dbo].[beneficiario]  WITH CHECK ADD  CONSTRAINT [tipo_beneficiario_beneficiario_FK1] FOREIGN KEY([id_tp_beneficiario], [idioma])
REFERENCES [dbo].[tipo_beneficiario] ([id_tp_beneficiario], [idioma])
GO
ALTER TABLE [dbo].[beneficiario] CHECK CONSTRAINT [tipo_beneficiario_beneficiario_FK1]
GO
ALTER TABLE [dbo].[beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto]  WITH CHECK ADD  CONSTRAINT [beneficiario_beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto_FK1] FOREIGN KEY([id_processo], [id_beneficiario])
REFERENCES [dbo].[beneficiario] ([id_processo], [id_beneficiario])
GO
ALTER TABLE [dbo].[beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto] CHECK CONSTRAINT [beneficiario_beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto_FK1]
GO
ALTER TABLE [dbo].[beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficioXreservaXcobertura_tipo_produto_beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto_FK1] FOREIGN KEY([id_prod], [id_acesso_benef], [idioma], [id_tp_evento_sinistro], [id_evento_sinistro], [id_tp_prod], [id_cob], [id_tp_reserva], [id_processo])
REFERENCES [dbo].[processo_beneficioXreservaXcobertura_tipo_produto] ([id_prod], [id_acesso_benef], [idioma], [id_tp_evento_sinistro], [id_evento_sinistro], [id_tp_prod], [id_cob], [id_tp_reserva], [id_processo])
GO
ALTER TABLE [dbo].[beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto] CHECK CONSTRAINT [processo_beneficioXreservaXcobertura_tipo_produto_beneficiarioXprocesso_beneficioXreservaXcobertura_tipo_produto_FK1]
GO
ALTER TABLE [dbo].[beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto]  WITH CHECK ADD  CONSTRAINT [beneficiario_beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto_FK1] FOREIGN KEY([id_processo], [id_beneficiario])
REFERENCES [dbo].[beneficiario] ([id_processo], [id_beneficiario])
GO
ALTER TABLE [dbo].[beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto] CHECK CONSTRAINT [beneficiario_beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto_FK1]
GO
ALTER TABLE [dbo].[beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficioXreservaXsubcobertura_tipo_produto_beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto_FK1] FOREIGN KEY([id_prod], [id_acesso_benef], [idioma], [id_tp_evento_sinistro], [id_evento_sinistro], [id_subcob], [id_tp_prod], [id_cob], [id_tp_reserva], [id_processo])
REFERENCES [dbo].[processo_beneficioXreservaXsubcobertura_tipo_produto] ([id_prod], [id_acesso_benef], [idioma], [id_tp_evento_sinistro], [id_evento_sinistro], [id_subcob], [id_tp_prod], [id_cob], [id_tp_reserva], [id_processo])
GO
ALTER TABLE [dbo].[beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto] CHECK CONSTRAINT [processo_beneficioXreservaXsubcobertura_tipo_produto_beneficiarioXprocesso_beneficioXreservaXsubcobertura_tipo_produto_FK1]
GO
ALTER TABLE [dbo].[boleto_franquia]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_boleto_franquia_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[boleto_franquia] CHECK CONSTRAINT [processo_beneficio_boleto_franquia_FK1]
GO
ALTER TABLE [dbo].[controle_alt_pagamento]  WITH NOCHECK ADD  CONSTRAINT [FK_controle_alt_pagamento] FOREIGN KEY([nr_recibo_identity])
REFERENCES [dbo].[pagamento] ([nr_recibo_identity])
GO
ALTER TABLE [dbo].[controle_alt_pagamento] CHECK CONSTRAINT [FK_controle_alt_pagamento]
GO
ALTER TABLE [dbo].[correspondenciaXdestinatario]  WITH CHECK ADD  CONSTRAINT [FK_CORRESPO_REFERENCE_CORRESPO] FOREIGN KEY([id_processo], [id_corr])
REFERENCES [dbo].[correspondencia] ([id_processo], [id_corr])
GO
ALTER TABLE [dbo].[correspondenciaXdestinatario] CHECK CONSTRAINT [FK_CORRESPO_REFERENCE_CORRESPO]
GO
ALTER TABLE [dbo].[correspondenciaXdestinatario]  WITH CHECK ADD  CONSTRAINT [FK_CORRESPO_REFERENCE_DESTINAT] FOREIGN KEY([id_dest])
REFERENCES [dbo].[destinatario_remetente] ([id_dest])
GO
ALTER TABLE [dbo].[correspondenciaXdestinatario] CHECK CONSTRAINT [FK_CORRESPO_REFERENCE_DESTINAT]
GO
ALTER TABLE [dbo].[dados_entrega]  WITH CHECK ADD  CONSTRAINT [beneficiario_dados_entrega_FK1] FOREIGN KEY([id_processo], [id_beneficiario])
REFERENCES [dbo].[beneficiario] ([id_processo], [id_beneficiario])
GO
ALTER TABLE [dbo].[dados_entrega] CHECK CONSTRAINT [beneficiario_dados_entrega_FK1]
GO
ALTER TABLE [dbo].[dados_meio_pagamento]  WITH CHECK ADD  CONSTRAINT [beneficiario_dados_meio_pagamento_FK1] FOREIGN KEY([id_processo], [id_beneficiario])
REFERENCES [dbo].[beneficiario] ([id_processo], [id_beneficiario])
GO
ALTER TABLE [dbo].[dados_meio_pagamento] CHECK CONSTRAINT [beneficiario_dados_meio_pagamento_FK1]
GO
ALTER TABLE [dbo].[dados_sinistro]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_dados_sinistro_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[dados_sinistro] CHECK CONSTRAINT [processo_beneficio_dados_sinistro_FK1]
GO
ALTER TABLE [dbo].[documentacao]  WITH NOCHECK ADD  CONSTRAINT [forma_confirmacao_documentacao_FK1] FOREIGN KEY([id_forma_confirmacao], [idioma])
REFERENCES [dbo].[forma_confirmacao] ([id_forma_confirmacao], [idioma])
GO
ALTER TABLE [dbo].[documentacao] CHECK CONSTRAINT [forma_confirmacao_documentacao_FK1]
GO
ALTER TABLE [dbo].[documentacao]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_documentacao_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[documentacao] CHECK CONSTRAINT [processo_beneficio_documentacao_FK1]
GO
ALTER TABLE [dbo].[documentacao]  WITH NOCHECK ADD  CONSTRAINT [status_documentacao_documentacao_FK1] FOREIGN KEY([id_sta_doc], [idioma])
REFERENCES [dbo].[status_documentacao] ([id_sta_doc], [idioma])
GO
ALTER TABLE [dbo].[documentacao] CHECK CONSTRAINT [status_documentacao_documentacao_FK1]
GO
ALTER TABLE [dbo].[etl_controle_job]  WITH CHECK ADD FOREIGN KEY([id_job])
REFERENCES [dbo].[etl_job] ([id_job])
GO
ALTER TABLE [dbo].[etl_controle_job]  WITH CHECK ADD FOREIGN KEY([id_job])
REFERENCES [dbo].[etl_job] ([id_job])
GO
ALTER TABLE [dbo].[etl_controle_job]  WITH CHECK ADD FOREIGN KEY([id_job])
REFERENCES [dbo].[etl_job] ([id_job])
GO
ALTER TABLE [dbo].[fechamento_analitico]  WITH CHECK ADD FOREIGN KEY([id_fechamento])
REFERENCES [dbo].[fechamento_data] ([id_fechamento])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[fechamento_sintetico]  WITH CHECK ADD FOREIGN KEY([id_fechamento])
REFERENCES [dbo].[fechamento_data] ([id_fechamento])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lance]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_lance_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[lance] CHECK CONSTRAINT [processo_beneficio_lance_FK1]
GO
ALTER TABLE [dbo].[local_atendimento]  WITH CHECK ADD  CONSTRAINT [processo_beneficio_local_atendimento_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[local_atendimento] CHECK CONSTRAINT [processo_beneficio_local_atendimento_FK1]
GO
ALTER TABLE [dbo].[pagamento]  WITH NOCHECK ADD  CONSTRAINT [status_pagamento_pagamento_FK1] FOREIGN KEY([id_status_pagto], [idioma])
REFERENCES [dbo].[status_pagamento] ([id_status_pagto], [idioma])
GO
ALTER TABLE [dbo].[pagamento] CHECK CONSTRAINT [status_pagamento_pagamento_FK1]
GO
ALTER TABLE [dbo].[pagamento_fatura]  WITH CHECK ADD  CONSTRAINT [status_fatura_pagamento_fatura_FK1] FOREIGN KEY([id_status_fatura], [idioma_status_fatura])
REFERENCES [dbo].[status_fatura] ([id_status_fatura], [idioma])
GO
ALTER TABLE [dbo].[pagamento_fatura] CHECK CONSTRAINT [status_fatura_pagamento_fatura_FK1]
GO
ALTER TABLE [dbo].[pagamento_fatura_comissao]  WITH CHECK ADD  CONSTRAINT [pagamento_fatura_pagamento_fatura_comissao_FK1] FOREIGN KEY([id_pagto_fat])
REFERENCES [dbo].[pagamento_fatura] ([id_pagto_fat])
GO
ALTER TABLE [dbo].[pagamento_fatura_comissao] CHECK CONSTRAINT [pagamento_fatura_pagamento_fatura_comissao_FK1]
GO
ALTER TABLE [dbo].[pagamento_parcial]  WITH CHECK ADD  CONSTRAINT [FK_pagamentoparcial_status] FOREIGN KEY([id_status_pagto], [idioma])
REFERENCES [dbo].[status_pagamento] ([id_status_pagto], [idioma])
GO
ALTER TABLE [dbo].[pagamento_parcial] CHECK CONSTRAINT [FK_pagamentoparcial_status]
GO
ALTER TABLE [dbo].[prestador_servicoXprocesso_beneficioXreservaXcobertura_tipo_produto]  WITH NOCHECK ADD  CONSTRAINT [proc_benXresXcob_tp_prod_proc_benXpres_servXproc_benXresXcob_tp_prod_FK1] FOREIGN KEY([id_prod], [id_acesso_benef], [idioma], [id_tp_evento_sinistro], [id_evento_sinistro], [id_tp_prod], [id_cob], [id_tp_reserva], [id_processo])
REFERENCES [dbo].[processo_beneficioXreservaXcobertura_tipo_produto] ([id_prod], [id_acesso_benef], [idioma], [id_tp_evento_sinistro], [id_evento_sinistro], [id_tp_prod], [id_cob], [id_tp_reserva], [id_processo])
GO
ALTER TABLE [dbo].[prestador_servicoXprocesso_beneficioXreservaXcobertura_tipo_produto] CHECK CONSTRAINT [proc_benXresXcob_tp_prod_proc_benXpres_servXproc_benXresXcob_tp_prod_FK1]
GO
ALTER TABLE [dbo].[prestador_servicoXprocesso_beneficioXreservaXsubcobertura_tipo_produto]  WITH NOCHECK ADD  CONSTRAINT [proc_benXresXsubcob_tp_prod_proc_benXprest_servXproc_benefXresXsubcob_tp_prod_FK1] FOREIGN KEY([id_prod], [id_acesso_benef], [idioma], [id_tp_evento_sinistro], [id_evento_sinistro], [id_subcob], [id_tp_prod], [id_cob], [id_tp_reserva], [id_processo])
REFERENCES [dbo].[processo_beneficioXreservaXsubcobertura_tipo_produto] ([id_prod], [id_acesso_benef], [idioma], [id_tp_evento_sinistro], [id_evento_sinistro], [id_subcob], [id_tp_prod], [id_cob], [id_tp_reserva], [id_processo])
GO
ALTER TABLE [dbo].[prestador_servicoXprocesso_beneficioXreservaXsubcobertura_tipo_produto] CHECK CONSTRAINT [proc_benXresXsubcob_tp_prod_proc_benXprest_servXproc_benefXresXsubcob_tp_prod_FK1]
GO
ALTER TABLE [dbo].[processo_beneficio]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_processo_beneficio_FK1] FOREIGN KEY([id_processo_ref])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[processo_beneficio] CHECK CONSTRAINT [processo_beneficio_processo_beneficio_FK1]
GO
ALTER TABLE [dbo].[processo_beneficio]  WITH NOCHECK ADD  CONSTRAINT [status_processo_processo_beneficio_FK1] FOREIGN KEY([id_status_processo], [idioma])
REFERENCES [dbo].[status_processo] ([id_status_processo], [idioma])
GO
ALTER TABLE [dbo].[processo_beneficio] CHECK CONSTRAINT [status_processo_processo_beneficio_FK1]
GO
ALTER TABLE [dbo].[processo_beneficio_motivo]  WITH CHECK ADD  CONSTRAINT [beneficiario_processo_beneficio_motivo_FK1] FOREIGN KEY([id_processo], [id_beneficiario])
REFERENCES [dbo].[beneficiario] ([id_processo], [id_beneficiario])
GO
ALTER TABLE [dbo].[processo_beneficio_motivo] CHECK CONSTRAINT [beneficiario_processo_beneficio_motivo_FK1]
GO
ALTER TABLE [dbo].[processo_beneficio_motivo]  WITH NOCHECK ADD  CONSTRAINT [forma_confirmacao_processo_beneficio_motivo_FK1] FOREIGN KEY([id_forma_confirmacao], [idioma])
REFERENCES [dbo].[forma_confirmacao] ([id_forma_confirmacao], [idioma])
GO
ALTER TABLE [dbo].[processo_beneficio_motivo] CHECK CONSTRAINT [forma_confirmacao_processo_beneficio_motivo_FK1]
GO
ALTER TABLE [dbo].[processo_beneficio_motivo]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_processo_beneficio_motivo_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[processo_beneficio_motivo] CHECK CONSTRAINT [processo_beneficio_processo_beneficio_motivo_FK1]
GO
ALTER TABLE [dbo].[processo_beneficio_observacao]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_processo_beneficio_observacao_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[processo_beneficio_observacao] CHECK CONSTRAINT [processo_beneficio_processo_beneficio_observacao_FK1]
GO
ALTER TABLE [dbo].[processo_beneficio_pagamento]  WITH CHECK ADD  CONSTRAINT [processo_beneficio_processo_beneficio_pagamento_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[processo_beneficio_pagamento] CHECK CONSTRAINT [processo_beneficio_processo_beneficio_pagamento_FK1]
GO
ALTER TABLE [dbo].[processo_beneficio_pagamento_item]  WITH CHECK ADD  CONSTRAINT [processo_beneficio_pagamento_processo_beneficio_pagamento_item_FK1] FOREIGN KEY([id_processo], [id_proc_ben_pag])
REFERENCES [dbo].[processo_beneficio_pagamento] ([id_processo], [id_proc_ben_pag])
GO
ALTER TABLE [dbo].[processo_beneficio_pagamento_item] CHECK CONSTRAINT [processo_beneficio_pagamento_processo_beneficio_pagamento_item_FK1]
GO
ALTER TABLE [dbo].[processo_beneficio_pagamento_item_parcelas]  WITH CHECK ADD  CONSTRAINT [FK_PROCESSO_REFERENCE_PROCESSO_BENEFICIO_PAGAMENTO_ITEM] FOREIGN KEY([id_processo], [id_proc_ben_pag], [id_proc_ben_pag_item])
REFERENCES [dbo].[processo_beneficio_pagamento_item] ([id_processo], [id_proc_ben_pag], [id_proc_ben_pag_item])
GO
ALTER TABLE [dbo].[processo_beneficio_pagamento_item_parcelas] CHECK CONSTRAINT [FK_PROCESSO_REFERENCE_PROCESSO_BENEFICIO_PAGAMENTO_ITEM]
GO
ALTER TABLE [dbo].[processo_beneficio_pagamento_item_parcelas]  WITH CHECK ADD  CONSTRAINT [FK_PROCESSO_REFERENCE_STATUS_PAGAMENTO] FOREIGN KEY([id_status_pagto], [idioma])
REFERENCES [dbo].[status_pagamento] ([id_status_pagto], [idioma])
GO
ALTER TABLE [dbo].[processo_beneficio_pagamento_item_parcelas] CHECK CONSTRAINT [FK_PROCESSO_REFERENCE_STATUS_PAGAMENTO]
GO
ALTER TABLE [dbo].[processo_beneficio_pagamentoXcampos_meio_pagamento]  WITH CHECK ADD  CONSTRAINT [FK_PROCESSO_REFERENCE_PROCESSO] FOREIGN KEY([id_processo], [id_proc_ben_pag])
REFERENCES [dbo].[processo_beneficio_pagamento] ([id_processo], [id_proc_ben_pag])
GO
ALTER TABLE [dbo].[processo_beneficio_pagamentoXcampos_meio_pagamento] CHECK CONSTRAINT [FK_PROCESSO_REFERENCE_PROCESSO]
GO
ALTER TABLE [dbo].[processo_beneficio_pagamentoXcampos_meio_pagamento]  WITH CHECK ADD  CONSTRAINT [FK_PROCESSO_REFERENCE_PROCESSO_ITEM] FOREIGN KEY([pro_id_processo], [pro_id_proc_ben_pag], [id_proc_ben_pag_item])
REFERENCES [dbo].[processo_beneficio_pagamento_item] ([id_processo], [id_proc_ben_pag], [id_proc_ben_pag_item])
GO
ALTER TABLE [dbo].[processo_beneficio_pagamentoXcampos_meio_pagamento] CHECK CONSTRAINT [FK_PROCESSO_REFERENCE_PROCESSO_ITEM]
GO
ALTER TABLE [dbo].[processo_beneficioXacesso_beneficioXcobertura_tipo_produto]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_processo_beneficioXacesso_beneficioXcobertura_tipo_produto_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[processo_beneficioXacesso_beneficioXcobertura_tipo_produto] CHECK CONSTRAINT [processo_beneficio_processo_beneficioXacesso_beneficioXcobertura_tipo_produto_FK1]
GO
ALTER TABLE [dbo].[processo_beneficioXacesso_beneficioXsubcobertura_tipo_produto]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_processo_beneficioXacesso_beneficioXsubcobertura_tipo_produto_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[processo_beneficioXacesso_beneficioXsubcobertura_tipo_produto] CHECK CONSTRAINT [processo_beneficio_processo_beneficioXacesso_beneficioXsubcobertura_tipo_produto_FK1]
GO
ALTER TABLE [dbo].[processo_beneficioXbem_adquirido]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_processo_beneficioXbem_adquirido_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[processo_beneficioXbem_adquirido] CHECK CONSTRAINT [processo_beneficio_processo_beneficioXbem_adquirido_FK1]
GO
ALTER TABLE [dbo].[processo_beneficioXdados_produto]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_processo_beneficioXdados_produto_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[processo_beneficioXdados_produto] CHECK CONSTRAINT [processo_beneficio_processo_beneficioXdados_produto_FK1]
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXcobertura_tipo_produto]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_processo_beneficioXreservaXcobertura_tipo_produto_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXcobertura_tipo_produto] CHECK CONSTRAINT [processo_beneficio_processo_beneficioXreservaXcobertura_tipo_produto_FK1]
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXcobertura_tipo_produto]  WITH NOCHECK ADD  CONSTRAINT [status_reserva_processo_beneficio_processo_beneficioXreservaXcobertura_tipo_produto_FK1] FOREIGN KEY([id_st_reserva], [idioma])
REFERENCES [dbo].[status_reserva_processo_beneficio] ([id_st_reserva], [idioma])
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXcobertura_tipo_produto] CHECK CONSTRAINT [status_reserva_processo_beneficio_processo_beneficioXreservaXcobertura_tipo_produto_FK1]
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXcobertura_tipo_produto_historico]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficioXreservaXcobertura_tipo_produto_processo_beneficioXreservaXcobertura_tipo_produto_historico_FK1] FOREIGN KEY([id_prod], [id_acesso_benef], [idioma], [id_tp_evento_sinistro], [id_evento_sinistro], [id_tp_prod], [id_cob], [id_tp_reserva], [id_processo])
REFERENCES [dbo].[processo_beneficioXreservaXcobertura_tipo_produto] ([id_prod], [id_acesso_benef], [idioma], [id_tp_evento_sinistro], [id_evento_sinistro], [id_tp_prod], [id_cob], [id_tp_reserva], [id_processo])
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXcobertura_tipo_produto_historico] CHECK CONSTRAINT [processo_beneficioXreservaXcobertura_tipo_produto_processo_beneficioXreservaXcobertura_tipo_produto_historico_FK1]
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXcobertura_tipo_produto_historico]  WITH NOCHECK ADD  CONSTRAINT [status_reserva_processo_beneficio_processo_beneficioXreservaXcobertura_tipo_produto_historico_FK1] FOREIGN KEY([id_st_reserva], [idioma])
REFERENCES [dbo].[status_reserva_processo_beneficio] ([id_st_reserva], [idioma])
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXcobertura_tipo_produto_historico] CHECK CONSTRAINT [status_reserva_processo_beneficio_processo_beneficioXreservaXcobertura_tipo_produto_historico_FK1]
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXsubcobertura_tipo_produto]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_processo_beneficioXreservaXsubcobertura_tipo_produto_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXsubcobertura_tipo_produto] CHECK CONSTRAINT [processo_beneficio_processo_beneficioXreservaXsubcobertura_tipo_produto_FK1]
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXsubcobertura_tipo_produto]  WITH NOCHECK ADD  CONSTRAINT [status_reserva_processo_beneficio_processo_beneficioXreservaXsubcobertura_tipo_produto_FK1] FOREIGN KEY([id_st_reserva], [idioma])
REFERENCES [dbo].[status_reserva_processo_beneficio] ([id_st_reserva], [idioma])
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXsubcobertura_tipo_produto] CHECK CONSTRAINT [status_reserva_processo_beneficio_processo_beneficioXreservaXsubcobertura_tipo_produto_FK1]
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXsubcobertura_tipo_produto_historico]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficioXreservaXsubcobertura_tipo_produto_processo_beneficioXreservaXsubcobertura_tipo_produto_historico_FK1] FOREIGN KEY([id_prod], [id_acesso_benef], [idioma], [id_tp_evento_sinistro], [id_evento_sinistro], [id_subcob], [id_tp_prod], [id_cob], [id_tp_reserva], [id_processo])
REFERENCES [dbo].[processo_beneficioXreservaXsubcobertura_tipo_produto] ([id_prod], [id_acesso_benef], [idioma], [id_tp_evento_sinistro], [id_evento_sinistro], [id_subcob], [id_tp_prod], [id_cob], [id_tp_reserva], [id_processo])
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXsubcobertura_tipo_produto_historico] CHECK CONSTRAINT [processo_beneficioXreservaXsubcobertura_tipo_produto_processo_beneficioXreservaXsubcobertura_tipo_produto_historico_FK1]
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXsubcobertura_tipo_produto_historico]  WITH NOCHECK ADD  CONSTRAINT [status_reserva_processo_beneficio_processo_beneficioXreservaXsubcobertura_tipo_produto_historico_FK1] FOREIGN KEY([id_st_reserva], [idioma])
REFERENCES [dbo].[status_reserva_processo_beneficio] ([id_st_reserva], [idioma])
GO
ALTER TABLE [dbo].[processo_beneficioXreservaXsubcobertura_tipo_produto_historico] CHECK CONSTRAINT [status_reserva_processo_beneficio_processo_beneficioXreservaXsubcobertura_tipo_produto_historico_FK1]
GO
ALTER TABLE [dbo].[resposta_avaliacao_risco]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_resposta_avaliacao_risco_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[resposta_avaliacao_risco] CHECK CONSTRAINT [processo_beneficio_resposta_avaliacao_risco_FK1]
GO
ALTER TABLE [dbo].[vistoria_pericia]  WITH NOCHECK ADD  CONSTRAINT [processo_beneficio_vistoria_pericia_FK1] FOREIGN KEY([id_processo])
REFERENCES [dbo].[processo_beneficio] ([id_processo])
GO
ALTER TABLE [dbo].[vistoria_pericia] CHECK CONSTRAINT [processo_beneficio_vistoria_pericia_FK1]
GO
ALTER TABLE [dbo].[vistoria_pericia]  WITH NOCHECK ADD  CONSTRAINT [status_pericia_vistoria_pericia_FK1] FOREIGN KEY([id_st_pericia], [idioma])
REFERENCES [dbo].[status_pericia] ([id_st_pericia], [idioma])
GO
ALTER TABLE [dbo].[vistoria_pericia] CHECK CONSTRAINT [status_pericia_vistoria_pericia_FK1]
GO