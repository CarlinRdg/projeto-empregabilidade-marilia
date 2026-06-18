CREATE OR REPLACE VIEW vw_marilia AS
SELECT *
FROM emprego_municipio
WHERE municipio = 'MARILIA';

CREATE OR REPLACE VIEW vw_top10_municipios AS
SELECT municipio,
       admissoes_mes,
       desligamentos_mes,
       saldo_mes
FROM emprego_municipio
ORDER BY saldo_mes DESC
LIMIT 10;

CREATE OR REPLACE VIEW vw_setores AS
SELECT setor,
       admissoes_mes,
       desligamentos_mes,
       saldo_mes
FROM emprego_setor
ORDER BY saldo_mes DESC;