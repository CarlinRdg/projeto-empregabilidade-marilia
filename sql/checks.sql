ALTER TABLE emprego_municipio
ADD CONSTRAINT chk_municipio_admissoes_mes
CHECK (admissoes_mes >= 0);

ALTER TABLE emprego_municipio
ADD CONSTRAINT chk_municipio_desligamentos_mes
CHECK (desligamentos_mes >= 0);

ALTER TABLE emprego_municipio
ADD CONSTRAINT chk_municipio_saldo_mes
CHECK (saldo_mes = admissoes_mes - desligamentos_mes);

ALTER TABLE emprego_setor
ADD CONSTRAINT chk_setor_admissoes_mes
CHECK (admissoes_mes >= 0);

ALTER TABLE emprego_setor
ADD CONSTRAINT chk_setor_desligamentos_mes
CHECK (desligamentos_mes >= 0);

ALTER TABLE emprego_setor
ADD CONSTRAINT chk_setor_saldo_mes
CHECK (saldo_mes = admissoes_mes - desligamentos_mes);

ALTER TABLE emprego_subsetor
ADD CONSTRAINT chk_subsetor_admissoes_mes
CHECK (admissoes_mes >= 0);

ALTER TABLE emprego_subsetor
ADD CONSTRAINT chk_subsetor_desligamentos_mes
CHECK (desligamentos_mes >= 0);

ALTER TABLE emprego_subsetor
ADD CONSTRAINT chk_subsetor_saldo_mes
CHECK (saldo_mes = admissoes_mes - desligamentos_mes);