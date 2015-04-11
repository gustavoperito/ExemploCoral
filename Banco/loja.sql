drop table BAIRROS;

drop table CIDADES;

drop table CLIENTES;

drop table COMPRAS;

drop table ENDERECOS;

drop table FORNECEDORES;

drop table ITENS_COMPRA;

drop table ITENS_VENDAS;

drop table MARCAS;

drop table MODELOS;

drop table PERCENTUAL;

drop table PRODUTOS;

drop table TAMANHOS;

drop table TIPO_LOGRADOURO;

drop table VENDAS;

/*==============================================================*/
/* Table: BAIRROS                                               */
/*==============================================================*/
create table BAIRROS (
IDBAIRRO             INTEGER                        not null,
NOME_BAI             VARCHAR(30)                    not null,
STATTUS_SIS          CHAR(1)                        not null,
constraint PK_BAIRROS primary key (IDBAIRRO, NOME_BAI)
);

/*==============================================================*/
/* Table: CIDADES                                               */
/*==============================================================*/
create table CIDADES (
IDCIDADE             INTEGER                        not null,
NOME_CID             VARCHAR(30)                    not null,
UF_CID               CHAR(2)                        not null,
STATUS_SIS           CHAR(1)                        not null,
constraint PK_CIDADES primary key (IDCIDADE)
);

/*==============================================================*/
/* Table: CLIENTES                                              */
/*==============================================================*/
create table CLIENTES (
IDCLIENTE            INTEGER                        not null,
IDENDERECO             INTEGER,
NOME_CLI             VARCHAR(75)                    not null,
CPF_CLI              CHAR(11),
RG_CLI               CHAR(15),
ESTADO_CIVIL_CLI     VARCHAR(10),
DATA_NASC_CLI        DATE                           not null,
DATA_CAD_CLI         DATE                           not null,
EMAIL_CLI            VARCHAR(100),
SEXO_CLI             CHAR(1)                        not null,
CELULAR_CLI          CHAR(11),
FONE_CLI             CHAR(11),
PROFISSAO_CLI        VARCHAR(30),
NATURALIDADE_CLI     VARCHAR(20),
NUM_END_CLI          CHAR(4),
COMPLEMENTO_CLI      CHAR(300),
MAE_CLI              VARCHAR(75),
STATUS_SIS           CHAR(1)                        not null,
constraint PK_CLIENTES primary key (IDCLIENTE)
);

/*==============================================================*/
/* Table: COMPRAS                                               */
/*==============================================================*/
create table COMPRAS (
IDCOMPRA             INTEGER                        not null,
IDFORNECEDOR         INTEGER,
NUM_NOTA_COMP        CHAR(15)                       not null,
DATA_COMP            DATE                           not null,
VALORTOTAL_COMP      NUMERIC(6,2)                   not null,
DESCONTO_COMP        NUMERIC(6,2),
STATUS_SIS           CHAR(1)                        not null,
constraint PK_COMPRAS primary key (IDCOMPRA)
);

/*==============================================================*/
/* Table: ENDERECOS                                             */
/*==============================================================*/
create table ENDERECOS (
IDENDERECO             INTEGER                        not null,
IDCIDADE             INTEGER,
IDBAIRRO             INTEGER,
NOME_BAI             VARCHAR(30),
IDLOG                INTEGER,
CEP                  CHAR(8),
NOME_END             VARCHAR(50)                    not null,
STATUS_SIS           CHAR(1)                        not null,
constraint PK_IDENDERECOS primary key (IDENDERECO)
);

/*==============================================================*/
/* Table: FORNECEDORES                                          */
/*==============================================================*/
create table FORNECEDORES (
IDFORNECEDOR         INTEGER                        not null,
IDENDERECO             INTEGER,
NOME_FANTASIA_FORN   VARCHAR(100)                   not null,
RAZAO_SOCIAL_FORN    VARCHAR(100)                   not null,
FONE1_FORN           CHAR(11)                       not null,
FONE2_FORN           CHAR(11),
CONTATO_FORN         VARCHAR(100),
CNPJ_FORN            NUMERIC(14)                    not null,
EMAIL_FORN           VARCHAR(100),
SITE                 VARCHAR(100),
NUM_END_FORN         CHAR(4)                        not null,
COMPLEMENTO_FORN     VARCHAR(150),
DATA_CAD_FORN        DATE                           not null,
OBS_FORN             VARCHAR(500),
INSCRICAO_EST_FORN   VARCHAR(15)                    not null,
STATUS_SIS           CHAR(1)                        not null,
constraint PK_FORNECEDORES primary key (IDFORNECEDOR)
);

/*==============================================================*/
/* Table: ITENS_COMPRA                                          */
/*==============================================================*/
create table ITENS_COMPRA (
IDITENSCOMPRA        INTEGER                        not null,
IDPRODUTO            INTEGER,
IDCOMPRA             INTEGER,
VALORUNITARIO_ITENS_COMP NUMERIC(6,2)                   not null,
QTDE__INTES_COMP     INTEGER                        not null,
STATUS_SIS           CHAR(1)                        not null,
constraint PK_ITENS_COMPRA primary key (IDITENSCOMPRA)
);

/*==============================================================*/
/* Table: ITENS_VENDAS                                          */
/*==============================================================*/
create table ITENS_VENDAS (
IDITENSVENDAS        INTEGER                        not null,
IDVENDA              INTEGER,
IDPRODUTO            INTEGER,
VALOR_UNIT_ITENS_VEND NUMERIC(6,2)                   not null,
QTDE_ITENS_VEND      INTEGER                        not null,
STATUS_SIS           CHAR(1)                        not null,
constraint PK_ITENS_VENDAS primary key (IDITENSVENDAS)
);

/*==============================================================*/
/* Table: MARCAS                                                */
/*==============================================================*/
create table MARCAS (
IDMARCA              INTEGER                        not null,
NOME_MARCA           VARCHAR(30)                    not null,
STATUS_SIS           CHAR(1)                        not null,
constraint PK_MARCAS primary key (IDMARCA)
);

/*==============================================================*/
/* Table: MODELOS                                               */
/*==============================================================*/
create table MODELOS (
IDMODELO             INTEGER                        not null,
IDMARCA              INTEGER,
DESCRICAO_MOD        VARCHAR(50)                    not null,
STATUS_SIS           CHAR(1)                        not null,
constraint PK_MODELOS primary key (IDMODELO)
);

/*==============================================================*/
/* Table: PERCENTUAL                                            */
/*==============================================================*/
create table PERCENTUAL (
IDPERCENTUAL         INTEGER                        not null,
DESCRICAO_PERC       VARCHAR(30)                    not null,
VALOR_PERC           NUMERIC(3,2)                   not null,
STATUS_SIS           CHAR(1)                        not null,
constraint PK_PERCENTUAL primary key (IDPERCENTUAL)
);

/*==============================================================*/
/* Table: PRODUTOS                                              */
/*==============================================================*/
create table PRODUTOS (
IDPRODUTO            INTEGER                        not null,
IDPERCENTUAL         INTEGER,
IDTAMANHO            INTEGER,
IDMODELO             INTEGER,
DESCRICAO_PROD       VARCHAR(100)                   not null,
QTDE_PROD            INTEGER                        not null,
QTDE_MIN_PROD        INTEGER                        not null,
QTDE_MAX_PROD        INTEGER                        not null,
VALOR_COMP_PROD      NUMERIC(6,2)                   not null,
VALOR_VEND_PROD      NUMERIC(6,2)                   not null,
STATUS_SIS           CHAR(1)                        not null,
constraint PK_PRODUTOS primary key (IDPRODUTO)
);

/*==============================================================*/
/* Table: TAMANHOS                                              */
/*==============================================================*/
create table TAMANHOS (
IDTAMANHO            INTEGER                        not null,
DESCRICAO_TAM        VARCHAR(30)                    not null,
STATUS_SIS           CHAR(1)                        not null,
constraint PK_TAMANHOS primary key (IDTAMANHO)
);

/*==============================================================*/
/* Table: TIPO_LOGRADOURO                                       */
/*==============================================================*/
create table TIPO_LOGRADOURO (
IDLOG                INTEGER                        not null,
NOME_LOG             VARCHAR(30)                    not null,
STATUS_SIS           CHAR(1)                        not null,
constraint PK_TIPO_LOGRADOURO primary key (IDLOG)
);

/*==============================================================*/
/* Table: VENDAS                                                */
/*==============================================================*/
create table VENDAS (
IDVENDA              INTEGER                        not null,
IDCLIENTE            INTEGER,
DATA_VEND            DATE                           not null,
VALOR_TOTAL_VEND     NUMERIC(6,2)                   not null,
DESCONTO_VEND        NUMERIC(6,2)                   not null,
STATUS_SIS           CHAR(1)                        not null,
constraint PK_VENDAS primary key (IDVENDA)
);

alter table CLIENTES
   add constraint FK_CLIENTES_CLIENTES__IDENDERECO foreign key (IDENDERECO)
      references ENDERECOS (IDENDERECO);

alter table COMPRAS
   add constraint FK_COMPRAS_COMPRAS_F_FORNECED foreign key (IDFORNECEDOR)
      references FORNECEDORES (IDFORNECEDOR);

alter table ENDERECOS
   add constraint FK_ENDERECO_BAIRROS_E_BAIRROS foreign key (IDBAIRRO, NOME_BAI)
      references BAIRROS (IDBAIRRO, NOME_BAI);

alter table ENDERECOS
   add constraint FK_ENDERECO_CIDADES_E_CIDADES foreign key (IDCIDADE)
      references CIDADES (IDCIDADE);

alter table ENDERECOS
   add constraint FK_ENDERECO_LOGRADOUR_TIPO_LOG foreign key (IDLOG)
      references TIPO_LOGRADOURO (IDLOG);

alter table FORNECEDORES
   add constraint FK_FORNECED_FORNECEDO_ENDERECO foreign key (IDENDERECO)
      references ENDERECOS (IDENDERECO);

alter table ITENS_COMPRA
   add constraint FK_ITENS_CO_COMPRAS_I_COMPRAS foreign key (IDCOMPRA)
      references COMPRAS (IDCOMPRA);

alter table ITENS_COMPRA
   add constraint FK_ITENS_CO_PRODUTOS__PRODUTOS foreign key (IDPRODUTO)
      references PRODUTOS (IDPRODUTO);

alter table ITENS_VENDAS
   add constraint FK_ITENS_VE_VENDAS_IT_VENDAS foreign key (IDVENDA)
      references VENDAS (IDVENDA);

alter table ITENS_VENDAS
   add constraint FK_ITENS_VE_VENDAS_PR_PRODUTOS foreign key (IDPRODUTO)
      references PRODUTOS (IDPRODUTO);

alter table MODELOS
   add constraint FK_MODELOS_MODELOS_M_MARCAS foreign key (IDMARCA)
      references MARCAS (IDMARCA);

alter table PRODUTOS
   add constraint FK_PRODUTOS_PRODUTOS__MODELOS foreign key (IDMODELO)
      references MODELOS (IDMODELO);

alter table PRODUTOS
   add constraint FK_PRODUTOS_PRODUTOS__PERCENTU foreign key (IDPERCENTUAL)
      references PERCENTUAL (IDPERCENTUAL);

alter table PRODUTOS
   add constraint FK_PRODUTOS_PRODUTOS__TAMANHOS foreign key (IDTAMANHO)
      references TAMANHOS (IDTAMANHO);

alter table VENDAS
   add constraint FK_VENDAS_CLIENTES__CLIENTES foreign key (IDCLIENTE)
      references CLIENTES (IDCLIENTE);

