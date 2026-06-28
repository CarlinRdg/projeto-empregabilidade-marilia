# Projeto Integrador Extensionista - Painel de Empregabilidade

## Descrição

Este projeto foi desenvolvido como parte do Projeto Integrador Extensionista do curso Superior de Tecnologia em Ciência de Dados.

A solução tem como objetivo analisar indicadores de empregabilidade utilizando dados públicos do Novo CAGED, com foco no município de Marília-SP e no Estado de São Paulo.

O projeto contempla todas as etapas de um pipeline de dados, incluindo extração, transformação, armazenamento, análise e visualização das informações.

---

## Objetivos

* Analisar indicadores de emprego formal.
* Identificar municípios com maior geração de empregos.
* Avaliar o desempenho dos setores econômicos.
* Apoiar a tomada de decisão baseada em dados.
* Disponibilizar informações relevantes para a comunidade.

---

## Tecnologias Utilizadas

* PostgreSQL 17
* Python
* Pandas
* SQLAlchemy
* Power BI
* Git
* GitHub

---

## Estrutura do Projeto

```text
docs/
├── EA1
├── EA2

data/
├── raw
├── processed

sql/
python/
images/
power bi/
```

---

## Pipeline Desenvolvido

### ETL

* Leitura da planilha do Novo CAGED.
* Tratamento dos dados.
* Padronização dos campos.
* Geração dos arquivos processados.

### Banco de Dados

* PostgreSQL.
* Tabelas de municípios.
* Tabelas de setores.
* Tabelas de subsetores.
* Views analíticas.

### EDA

* Geração de gráficos exploratórios.
* Identificação de padrões nos dados.

### Dashboard

* Indicadores de admissões.
* Indicadores de desligamentos.
* Indicadores de saldo de empregos.
* Análises por município, setor e subsetor.

---

## Fonte de Dados

Novo CAGED - Ministério do Trabalho e Emprego.

---

## Autor

Carlos Roberto Rodrigues

https://github.com/CarlinRdg/projeto-empregabilidade-marilia

Curso Superior de Tecnologia em Ciência de Dados
