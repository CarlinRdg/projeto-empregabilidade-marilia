DROP TABLE IF EXISTS emprego_subsetor;
DROP TABLE IF EXISTS emprego_setor;
DROP TABLE IF EXISTS emprego_municipio;

CREATE TABLE emprego_municipio (
    id SERIAL PRIMARY KEY,
    municipio VARCHAR(150) NOT NULL,
    admissoes_mes INT,
    desligamentos_mes INT,
    saldo_mes INT,
    variacao_mes NUMERIC(10,2),
    admissoes_ano INT,
    desligamentos_ano INT,
    saldo_ano INT,
    variacao_ano NUMERIC(10,2),
    admissoes_12m INT,
    desligamentos_12m INT,
    saldo_12m INT,
    variacao_12m NUMERIC(10,2),
    competencia VARCHAR(20) NOT NULL
);

CREATE TABLE emprego_setor (
    id SERIAL PRIMARY KEY,
    setor VARCHAR(200) NOT NULL,
    admissoes_mes INT,
    desligamentos_mes INT,
    saldo_mes INT,
    variacao_mes NUMERIC(10,2),
    admissoes_ano INT,
    desligamentos_ano INT,
    saldo_ano INT,
    variacao_ano NUMERIC(10,2),
    admissoes_12m INT,
    desligamentos_12m INT,
    saldo_12m INT,
    variacao_12m NUMERIC(10,2),
    competencia VARCHAR(20) NOT NULL
);

CREATE TABLE emprego_subsetor (
    id SERIAL PRIMARY KEY,
    subsetor VARCHAR(250) NOT NULL,
    admissoes_mes INT,
    desligamentos_mes INT,
    saldo_mes INT,
    variacao_mes NUMERIC(10,2),
    admissoes_ano INT,
    desligamentos_ano INT,
    saldo_ano INT,
    variacao_ano NUMERIC(10,2),
    admissoes_12m INT,
    desligamentos_12m INT,
    saldo_12m INT,
    variacao_12m NUMERIC(10,2),
    competencia VARCHAR(20) NOT NULL
);