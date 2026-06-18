SELECT *
FROM emprego_municipio
WHERE municipio = 'MARILIA';


SELECT municipio, saldo_mes
FROM emprego_municipio
ORDER BY saldo_mes DESC
LIMIT 10;


SELECT setor, admissoes_mes, desligamentos_mes, saldo_mes
FROM emprego_setor
ORDER BY saldo_mes DESC;