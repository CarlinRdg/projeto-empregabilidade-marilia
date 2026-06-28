# UNIVERSIDADE DE MARÍLIA – UNIMAR

## SUPERIOR DE TECNOLOGIA EM CIÊNCIA DE DADOS

<br><br>

# PAINEL DE EMPREGABILIDADE UTILIZANDO DADOS DO NOVO CAGED

## Relatório Final - RLF

<br><br>

**Aluno:** Carlos Roberto Rodrigues

<br><br>

**Marília – SP**

**2026**

# 1. Introdução e Contexto Extensionista

O mercado de trabalho é um dos principais indicadores do desenvolvimento econômico e social de uma região. A análise de informações relacionadas à geração de empregos permite compreender o comportamento da economia, identificar oportunidades e apoiar a tomada de decisões por gestores públicos, empresas, instituições de ensino e pela própria população.

Neste contexto, o Novo CAGED (Cadastro Geral de Empregados e Desempregados), disponibilizado pelo Ministério do Trabalho e Emprego, reúne informações oficiais sobre admissões, desligamentos e saldo de empregos formais, constituindo uma importante fonte de dados para análises estatísticas e estudos sobre empregabilidade.

Este projeto foi desenvolvido com foco no município de Marília-SP e no Estado de São Paulo, utilizando dados públicos para construir uma solução composta por banco de dados PostgreSQL, processos de ETL em Python, consultas SQL, análises exploratórias e integração com ferramentas de Business Intelligence.

Sob a perspectiva extensionista, o trabalho busca transformar dados públicos em informações acessíveis e úteis para a sociedade, contribuindo para que estudantes, trabalhadores, gestores públicos e instituições de ensino possam compreender melhor o comportamento do mercado de trabalho e utilizar essas informações como apoio ao planejamento e à tomada de decisões.

Além de atender aos objetivos acadêmicos da disciplina, o projeto permitiu aplicar conhecimentos de banco de dados, programação, análise de dados e visualização de informações em um cenário prático, aproximando a formação acadêmica das necessidades encontradas no mercado de trabalho.

# 2. Objetivos, Perguntas Analíticas e KPIs

## 2.1 Objetivo Geral

Desenvolver uma solução para análise de indicadores de empregabilidade utilizando dados públicos do Novo CAGED, permitindo identificar o comportamento do mercado de trabalho formal no município de Marília-SP e no Estado de São Paulo.

## 2.2 Objetivos Específicos

* Coletar e organizar os dados públicos do Novo CAGED.
* Desenvolver um banco de dados em PostgreSQL para armazenamento das informações.
* Implementar um processo ETL utilizando Python para tratamento e carga dos dados.
* Realizar análises exploratórias dos indicadores de empregabilidade.
* Disponibilizar informações para apoio à tomada de decisão por meio de consultas SQL e visualizações.

## 2.3 Perguntas Analíticas

Durante o desenvolvimento do projeto buscou-se responder às seguintes perguntas:

* Como se comporta o saldo de empregos no município de Marília?
* Quais municípios apresentam maior geração de empregos formais?
* Quais setores econômicos apresentam melhor desempenho?
* Quais subsetores concentram maior geração de empregos?

## 2.4 Indicadores (KPIs)

Para responder às perguntas analíticas foram definidos os seguintes indicadores:

* Total de admissões.
* Total de desligamentos.
* Saldo de empregos.
* Variação percentual do emprego.
* Saldo acumulado no ano e nos últimos 12 meses.

# 3. Dados

## 3.1 Fontes de Dados

Os dados utilizados neste projeto foram obtidos a partir de bases públicas disponibilizadas pelo Ministério do Trabalho e Emprego, por meio do Novo CAGED (Cadastro Geral de Empregados e Desempregados).

Foi utilizada uma planilha contendo indicadores de emprego formal referentes à competência de setembro de 2019 para o Estado de São Paulo, incluindo informações por município, setor econômico e subsetor econômico.

Esses dados são públicos e possuem caráter estatístico, permitindo sua utilização para fins acadêmicos e de pesquisa.

---

## 3.2 Coleta dos Dados

A coleta foi realizada por meio do download da planilha oficial disponibilizada pelo Ministério do Trabalho e Emprego.

Posteriormente, os dados foram organizados na estrutura do projeto e armazenados na pasta `data/raw`. Após o tratamento realizado pelo processo ETL em Python, foram gerados arquivos estruturados na pasta `data/processed`, possibilitando sua carga no banco de dados PostgreSQL.

O processo garantiu a padronização das informações e facilitou a realização das análises propostas.

---

## 3.3 Limitações dos Dados

Embora a base utilizada seja oficial e confiável, algumas limitações devem ser consideradas.

Os dados analisados referem-se apenas à competência de setembro de 2019, não permitindo avaliar tendências ao longo de diferentes períodos.

Além disso, as informações encontram-se agregadas por município, setor e subsetor, impossibilitando análises individuais dos trabalhadores ou estudos mais detalhados sobre perfil profissional, faixa salarial ou escolaridade.

Essas limitações não comprometem os objetivos do projeto, mas representam oportunidades para futuras ampliações da solução.

---

## 3.4 Aspectos Éticos e LGPD

O projeto utilizou exclusivamente dados públicos, agregados e anonimizados, não contendo informações pessoais que permitam identificar indivíduos.

Dessa forma, não houve tratamento de dados pessoais sensíveis ou qualquer atividade que contrariasse os princípios estabelecidos pela Lei Geral de Proteção de Dados (Lei nº 13.709/2018).

O desenvolvimento do projeto respeitou os princípios de transparência, finalidade e uso responsável das informações públicas, mantendo o foco exclusivamente em análises estatísticas e acadêmicas.

# 4. Implementação da Solução

## 4.1 Arquitetura da Solução

A solução desenvolvida foi organizada em um pipeline de dados composto pelas etapas de coleta, tratamento, armazenamento, análise e visualização das informações.

O fluxo de processamento adotado foi o seguinte:

1. Coleta dos dados públicos do Novo CAGED.
2. Armazenamento da planilha original na pasta `data/raw`.
3. Tratamento e padronização dos dados utilizando Python.
4. Geração dos arquivos processados na pasta `data/processed`.
5. Carga dos dados para o banco PostgreSQL.
6. Execução de consultas SQL e criação de views analíticas.
7. Geração de análises exploratórias dos dados (EDA).
8. Disponibilização dos dados para consumo pelo Power BI.

---

## 4.2 Banco de Dados PostgreSQL

O PostgreSQL foi utilizado como banco de dados principal do projeto devido à sua robustez, confiabilidade e ampla utilização em aplicações de Ciência de Dados.

Foram desenvolvidas tabelas específicas para armazenar os indicadores de empregabilidade obtidos a partir da base pública do Novo CAGED.

### Tabelas Desenvolvidas

* emprego_municipio
* emprego_setor
* emprego_subsetor

Cada tabela armazena informações referentes às admissões, desligamentos, saldo de empregos, variação percentual, indicadores acumulados no ano e acumulados em doze meses.

Além das tabelas, foram criadas views para facilitar consultas e reutilização das informações.

### Views Criadas

* vw_marilia
* vw_top10_municipios
* vw_setores

Também foram implementadas restrições (CHECK Constraints) para garantir maior integridade dos dados durante futuras cargas.

---

## 4.3 Pipeline ETL em Python

Foi desenvolvido um pipeline ETL utilizando Python para automatizar o tratamento dos dados.

O processo foi dividido em três etapas.

### Extração

Leitura da planilha oficial do Novo CAGED contendo os dados de setembro de 2019.

### Transformação

Durante esta etapa foram realizadas:

* Padronização dos nomes das colunas;
* Conversão dos tipos de dados;
* Limpeza de registros inconsistentes;
* Inclusão da competência analisada;
* Separação das informações por município, setor e subsetor.

### Carga

Após o tratamento, os dados foram carregados automaticamente no PostgreSQL utilizando SQLAlchemy.

---

## 4.4 Análise Exploratória dos Dados (EDA)

Após a carga dos dados no banco, foi realizada uma Análise Exploratória dos Dados (EDA) utilizando Python.

Foram executadas consultas e gerados gráficos para identificar padrões relacionados à geração de empregos, destacando municípios e setores com maior saldo positivo de empregos.

Os resultados dessa etapa serviram de base para as análises apresentadas nos capítulos seguintes.

# 5. Resultados

Após a implementação do banco de dados, execução do pipeline ETL e carga das informações no PostgreSQL, foi possível realizar consultas e análises sobre os indicadores de empregabilidade disponibilizados pelo Novo CAGED.

As informações foram organizadas por município, setor econômico e subsetor econômico, permitindo avaliar o comportamento do emprego formal no Estado de São Paulo, com destaque para o município de Marília.

## 5.1 Análise do Município de Marília

A consulta realizada para o município de Marília apresentou os seguintes resultados referentes à competência analisada.

| Indicador                   | Valor |
| --------------------------- | ----: |
| Admissões                   | 1.996 |
| Desligamentos               | 1.676 |
| Saldo                       |   320 |
| Variação (%)                | 0,51% |
| Saldo acumulado no ano      | 1.286 |
| Saldo acumulado em 12 meses | 1.826 |

Os resultados demonstram que Marília apresentou saldo positivo de empregos formais durante o período analisado, indicando crescimento líquido na geração de postos de trabalho.

---

## 5.2 Análise dos Municípios

A análise dos municípios permitiu identificar aqueles que apresentaram maior saldo de empregos formais.

Por meio das consultas SQL e da análise exploratória dos dados foi possível gerar um ranking dos municípios com melhor desempenho, permitindo comparar Marília com outras cidades do Estado de São Paulo.

Essas informações podem apoiar gestores públicos, empresas e instituições de ensino na compreensão do comportamento do mercado de trabalho regional.

---

## 5.3 Análise dos Setores Econômicos

A base de dados também possibilitou analisar o desempenho dos setores econômicos.

A comparação entre admissões, desligamentos e saldo de empregos permite identificar quais setores contribuíram de forma mais significativa para a geração de empregos formais durante o período analisado.

Essas informações são relevantes para orientar programas de qualificação profissional e apoiar decisões relacionadas ao desenvolvimento econômico.

---

## 5.4 Análise dos Subsetores

A análise por subsetor permitiu um nível maior de detalhamento em relação às atividades econômicas.

Os dados possibilitaram identificar segmentos específicos que apresentaram maior capacidade de geração de empregos, permitindo análises mais detalhadas do comportamento do mercado de trabalho.

---

## 5.5 Análise Exploratória dos Dados

Como parte do processo de análise exploratória (EDA), foi desenvolvido um gráfico apresentando os municípios com maior saldo de empregos.

Esse gráfico foi gerado utilizando Python e Matplotlib, permitindo visualizar de forma simples a distribuição dos indicadores entre os municípios analisados.

**Figura 1 – Top 10 municípios por saldo de empregos**

> Inserir neste ponto a imagem `images/top10_municipios.png` gerada durante a execução do projeto.

A utilização da análise exploratória permitiu validar os dados carregados no banco e identificar padrões que posteriormente foram utilizados na construção das consultas SQL e do dashboard.

# 6. Dashboard Power BI

Como etapa final do projeto foi realizada a integração entre o banco de dados PostgreSQL e o Microsoft Power BI Desktop.

A conexão permitiu importar as tabelas desenvolvidas durante o projeto e validar a utilização dos dados tratados em uma ferramenta de Business Intelligence.

Foi elaborado um dashboard inicial contendo indicadores resumidos do município de Marília-SP, permitindo visualizar de forma rápida os principais resultados obtidos a partir da base do Novo CAGED.

Os indicadores apresentados no painel são:

* Total de admissões;
* Total de desligamentos;
* Saldo de empregos;
* Variação percentual.

Embora o dashboard tenha sido desenvolvido como uma prova de conceito, sua estrutura permite futuras expansões, incluindo gráficos comparativos por município, setor econômico e subsetor, além da inclusão de filtros por período e outros indicadores de empregabilidade.

A integração entre PostgreSQL e Power BI demonstrou a viabilidade da utilização dos dados tratados em ambientes de Business Intelligence, possibilitando a criação de painéis gerenciais para apoio à tomada de decisão.

**Figura 2 – Dashboard desenvolvido no Power BI**

> Inserir neste ponto uma imagem do dashboard desenvolvido durante o projeto.

Fonte: Elaborado pelo autor (2026).

# 7. Insights e Recomendações

A análise dos dados permitiu identificar informações relevantes sobre o comportamento do mercado de trabalho formal durante o período analisado.

## Insight 1 – Crescimento do Emprego Formal em Marília

O município de Marília apresentou saldo positivo de empregos formais na competência analisada, além de manter resultados positivos tanto no acumulado do ano quanto no acumulado dos últimos doze meses.

### Recomendação

Os resultados indicam um ambiente favorável para geração de empregos, sugerindo que gestores públicos e instituições de ensino continuem investindo em programas de qualificação profissional voltados às demandas do mercado regional.

---

## Insight 2 – Diferenças entre Municípios

A comparação entre os municípios demonstra que a geração de empregos ocorre de forma desigual entre as cidades do Estado de São Paulo.

Essa diferença evidencia a importância de análises regionais para compreender as características econômicas de cada município.

### Recomendação

Os indicadores podem ser utilizados como apoio ao planejamento de políticas públicas, programas de incentivo econômico e estratégias de desenvolvimento regional.

---

## Insight 3 – Importância da Utilização de Dados Públicos

O projeto demonstrou que dados públicos podem ser transformados em informações úteis por meio de processos de tratamento, armazenamento e análise.

### Recomendação

Estimular a utilização de soluções baseadas em dados para apoiar decisões em órgãos públicos, empresas e instituições de ensino, ampliando a transparência e o acesso às informações.

# 8. Conclusão, Limitações e Próximos Passos

O desenvolvimento deste projeto possibilitou aplicar, de forma integrada, conhecimentos adquiridos ao longo do curso de Superior de Tecnologia em Ciência de Dados.

Durante o trabalho foram utilizadas ferramentas amplamente empregadas no mercado, como PostgreSQL, Python, SQL, GitHub e Power BI, permitindo construir uma solução completa para tratamento, armazenamento e análise de dados públicos.

Os resultados obtidos demonstraram que os objetivos inicialmente propostos foram alcançados, permitindo identificar indicadores relevantes de empregabilidade e gerar informações úteis para apoio à tomada de decisão.

## Limitações

A principal limitação do projeto está relacionada ao período analisado, uma vez que a base utilizada corresponde apenas à competência de setembro de 2019.

Além disso, os dados disponíveis são agregados, impossibilitando análises individuais ou estudos mais detalhados sobre características dos trabalhadores.

## Próximos Passos

Como evolução deste projeto, recomenda-se:

* Ampliação da base de dados para múltiplos períodos;
* Inclusão de novos indicadores socioeconômicos;
* Desenvolvimento de dashboards mais completos no Power BI;
* Implementação de análises preditivas utilizando técnicas de Ciência de Dados e Machine Learning.

Apesar dessas possibilidades de expansão, a solução desenvolvida já demonstra a aplicação prática dos conceitos estudados e evidencia o potencial do uso de dados públicos para geração de conhecimento e apoio à tomada de decisão.

# 9. Referências

BRASIL. Ministério do Trabalho e Emprego. **Novo CAGED – Cadastro Geral de Empregados e Desempregados**. Disponível em: https://www.gov.br/trabalho-e-emprego.

IBGE – Instituto Brasileiro de Geografia e Estatística. **Cidades e Estados**. Disponível em: https://www.ibge.gov.br.

POSTGRESQL GLOBAL DEVELOPMENT GROUP. **PostgreSQL Documentation**. Disponível em: https://www.postgresql.org/docs/.

MICROSOFT. **Power BI Documentation**. Disponível em: https://learn.microsoft.com/power-bi/.

PYTHON SOFTWARE FOUNDATION. **Python Documentation**. Disponível em: https://docs.python.org/3/.

PANDAS DEVELOPMENT TEAM. **Pandas Documentation**. Disponível em: https://pandas.pydata.org/docs/.

---

# Repositório do Projeto

Todo o código-fonte, documentação, scripts SQL, arquivos Python e demais artefatos desenvolvidos durante o projeto encontram-se disponíveis no repositório público abaixo:

**GitHub:**

https://github.com/CarlinRdg/projeto-empregabilidade-marilia
