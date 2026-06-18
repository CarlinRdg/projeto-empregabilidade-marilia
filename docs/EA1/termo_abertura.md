# 1. Contexto e Justificativa

A inserção de jovens no mercado de trabalho representa um dos principais desafios socioeconômicos enfrentados pelos municípios brasileiros. A falta de informações acessíveis sobre os setores que mais contratam, a evolução do emprego formal e as oportunidades disponíveis dificulta o planejamento profissional de estudantes e trabalhadores em início de carreira.

No município de Marília-SP, diversos setores da economia apresentam comportamento distinto em relação à geração de empregos, tornando necessária a disponibilização de informações que auxiliem a população na tomada de decisões relacionadas à qualificação profissional e busca por oportunidades de trabalho.

Nesse contexto, o presente projeto extensionista propõe a criação de um painel de empregabilidade utilizando dados públicos do Novo CAGED e do IBGE, permitindo a análise de indicadores relacionados à geração de empregos formais na região. A iniciativa busca democratizar o acesso à informação, contribuindo para a aproximação entre universidade, comunidade e mercado de trabalho.

O projeto possui caráter extensionista por disponibilizar informações relevantes para jovens, instituições de ensino, órgãos públicos e demais membros da comunidade, promovendo a utilização de dados para apoio à tomada de decisão e desenvolvimento social local.

# 2. Objetivos

## 2.1 Objetivo Geral

Desenvolver um painel de indicadores de empregabilidade para jovens da região de Marília-SP, utilizando dados públicos de emprego formal, com o objetivo de fornecer informações que auxiliem estudantes, trabalhadores e instituições na compreensão das oportunidades existentes no mercado de trabalho local.

## 2.2 Objetivos Específicos

- Coletar e organizar dados públicos de empregabilidade da região de Marília-SP.
- Identificar os setores econômicos que mais geram empregos formais.
- Analisar a evolução das admissões, desligamentos e saldo de empregos ao longo do período estudado.
- Desenvolver indicadores de desempenho (KPIs) relacionados ao mercado de trabalho local.
- Construir visualizações e dashboards que facilitem a interpretação dos dados pela comunidade.
- Disponibilizar informações que contribuam para a tomada de decisão de jovens em busca de oportunidades profissionais.

# 3. Perguntas Analíticas

As análises desenvolvidas neste projeto buscarão responder às seguintes questões:

## PA1. Quais setores econômicos geraram mais empregos formais em Marília-SP entre 2022 e 2025?

Essa análise permitirá identificar os segmentos da economia que apresentam maior capacidade de geração de empregos e oportunidades para jovens trabalhadores.

## PA2. Como evoluíram as admissões, desligamentos e o saldo de empregos ao longo do período analisado?

Essa análise permitirá compreender tendências de crescimento ou retração do mercado de trabalho local.

## PA3. Existem períodos do ano com maior volume de contratações?

Essa análise permitirá identificar possíveis comportamentos sazonais relacionados às admissões de trabalhadores.

## PA4. Quais ocupações apresentam maior volume de admissões no município?

Essa análise auxiliará na identificação das áreas profissionais com maior demanda de mão de obra.

# 4. Indicadores de Desempenho (KPIs)

Os indicadores definidos para o projeto serão utilizados para monitorar e analisar o comportamento do mercado de trabalho formal em Marília-SP.

## KPI 1 - Total de Admissões

Representa a quantidade total de trabalhadores admitidos no período analisado.

Objetivo:
Mensurar o volume de novas oportunidades de emprego formal geradas no município.

Fórmula:

Total de Admissões = Soma das Admissões

---

## KPI 2 - Total de Desligamentos

Representa a quantidade total de desligamentos registrados no período analisado.

Objetivo:
Mensurar a saída de trabalhadores do mercado formal.

Fórmula:

Total de Desligamentos = Soma dos Desligamentos

---

## KPI 3 - Saldo de Empregos

Representa a diferença entre admissões e desligamentos.

Objetivo:
Avaliar se o mercado de trabalho local está expandindo ou reduzindo a oferta de empregos.

Fórmula:

Saldo de Empregos = Admissões - Desligamentos

---

## KPI 4 - Taxa de Crescimento do Emprego

Representa a variação percentual do saldo de empregos em relação ao período anterior.

Objetivo:
Identificar tendências de crescimento ou retração do mercado de trabalho.

---

## KPI 5 - Participação por Setor Econômico

Representa o percentual de admissões realizadas por cada setor econômico.

Objetivo:
Identificar quais segmentos da economia concentram maior geração de empregos.

Fórmula:

Participação (%) = (Admissões do Setor / Total de Admissões) x 100

# 5. Público-Alvo e Beneficiários

O projeto tem como público-alvo principal jovens entre 18 e 29 anos que buscam inserção ou recolocação no mercado de trabalho formal.

Também serão beneficiados:

- Estudantes do ensino médio, técnico e superior.
- Instituições de ensino interessadas em alinhar a formação profissional às demandas do mercado.
- Órgãos públicos municipais relacionados ao desenvolvimento econômico e geração de empregos.
- Empresas interessadas em compreender tendências do mercado de trabalho local.
- Comunidade em geral que busca informações sobre empregabilidade na região.

A disponibilização de indicadores e análises contribuirá para a democratização do acesso à informação e para a tomada de decisões mais assertivas por parte dos beneficiários.

# 6. Escopo do Projeto

## 6.1 Escopo Incluído

O projeto contempla:

- Coleta de dados públicos de empregabilidade.
- Tratamento e organização dos dados.
- Armazenamento das informações em banco PostgreSQL.
- Desenvolvimento de pipeline ETL em Python.
- Realização de análise exploratória dos dados (EDA).
- Criação de indicadores de desempenho (KPIs).
- Desenvolvimento de dashboard interativo em Power BI.
- Produção de relatório analítico com insights e recomendações.

## 6.2 Escopo Não Incluído

O projeto não contempla:

- Coleta de dados pessoais dos trabalhadores.
- Processos de recrutamento e seleção.
- Divulgação de vagas de emprego.
- Intermediação entre candidatos e empresas.
- Previsões estatísticas avançadas ou modelos de Machine Learning.

# 7. Fontes de Dados

## Novo CAGED

Fonte oficial do Ministério do Trabalho e Emprego utilizada para obtenção de informações sobre admissões, desligamentos e saldo de empregos formais.

Forma de acesso:
Download de arquivos públicos disponibilizados pelo Governo Federal.

Dados utilizados:

- Município
- Competência (mês/ano)
- Setor econômico
- Ocupação
- Admissões
- Desligamentos
- Saldo

## IBGE

Fonte complementar para obtenção de dados demográficos e socioeconômicos do município de Marília-SP.

Forma de acesso:
Portal IBGE Cidades.

Dados utilizados:

- População estimada
- Indicadores socioeconômicos
- Informações territoriais e demográficas

# 8. Aspectos Éticos e LGPD

O projeto utilizará exclusivamente dados públicos disponibilizados por órgãos governamentais, sem acesso a informações pessoais identificáveis.

Os seguintes cuidados serão adotados:

- Utilização apenas de dados agregados e anonimizados.
- Não armazenamento de informações pessoais sensíveis.
- Respeito às diretrizes da Lei Geral de Proteção de Dados (LGPD).
- Transparência na metodologia de coleta, tratamento e análise dos dados.
- Utilização dos dados exclusivamente para fins acadêmicos e extensionistas.

Dessa forma, os riscos relacionados à privacidade e proteção de dados são considerados mínimos.