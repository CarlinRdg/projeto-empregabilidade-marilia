# Implementação da Solução

## Banco de Dados PostgreSQL

Para armazenamento dos dados foi utilizado o PostgreSQL 17.

Foram criadas tabelas específicas para armazenar informações referentes aos municípios, setores econômicos e subsetores presentes na base de dados do Novo CAGED.

### Tabelas Criadas

#### emprego_municipio

Armazena indicadores de admissões, desligamentos e saldo de empregos por município.

#### emprego_setor

Armazena indicadores de emprego por setor econômico.

#### emprego_subsetor

Armazena indicadores de emprego por subsetor econômico.

### Views

Foram criadas views para facilitar consultas e análises:

* vw_marilia
* vw_top10_municipios
* vw_setores

Essas views simplificam a utilização dos dados tanto em consultas SQL quanto na integração com o Power BI.

## Pipeline ETL em Python

Foi desenvolvido um pipeline ETL utilizando Python.

O processo executado contempla:

### Extração

Leitura da planilha do Novo CAGED contendo os dados de setembro de 2019.

### Transformação

Durante a etapa de transformação foram realizadas:

* Padronização dos nomes das colunas.
* Remoção de registros inválidos.
* Conversão de tipos de dados.
* Inclusão da competência analisada.

### Carga

Após o tratamento, os dados foram carregados automaticamente no PostgreSQL utilizando SQLAlchemy.

O processo resultou na criação de três conjuntos de dados:

* emprego_municipio.csv
* emprego_setor.csv
* emprego_subsetor.csv
