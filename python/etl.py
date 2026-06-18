import pandas as pd
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
ARQUIVO_ORIGEM = BASE_DIR / "data" / "raw" / "SP (1).xlsx"
PASTA_SAIDA = BASE_DIR / "data" / "processed"

PASTA_SAIDA.mkdir(parents=True, exist_ok=True)

COMPETENCIA = "Setembro/2019"


def tratar_aba(nome_aba, coluna_nome):
    df = pd.read_excel(ARQUIVO_ORIGEM, sheet_name=nome_aba, header=None)

    # Os dados começam na linha 12 da planilha
    df = df.iloc[12:, 0:13]

    df.columns = [
        coluna_nome,
        "admissoes_mes",
        "desligamentos_mes",
        "saldo_mes",
        "variacao_mes",
        "admissoes_ano",
        "desligamentos_ano",
        "saldo_ano",
        "variacao_ano",
        "admissoes_12m",
        "desligamentos_12m",
        "saldo_12m",
        "variacao_12m",
    ]

    df = df.dropna(subset=[coluna_nome])
    df[coluna_nome] = df[coluna_nome].astype(str).str.replace("\n", " ").str.strip()

    for col in df.columns:
        if col != coluna_nome:
            df[col] = pd.to_numeric(df[col], errors="coerce")

    df["competencia"] = COMPETENCIA

    return df


municipios = tratar_aba("municipios", "municipio")
setores = tratar_aba("Setor", "setor")
subsetores = tratar_aba("Subsetor", "subsetor")

municipios.to_csv(PASTA_SAIDA / "emprego_municipio.csv", index=False, encoding="utf-8-sig")
setores.to_csv(PASTA_SAIDA / "emprego_setor.csv", index=False, encoding="utf-8-sig")
subsetores.to_csv(PASTA_SAIDA / "emprego_subsetor.csv", index=False, encoding="utf-8-sig")

print("ETL concluído com sucesso!")
print(f"Municípios: {len(municipios)} registros")
print(f"Setores: {len(setores)} registros")
print(f"Subsetores: {len(subsetores)} registros")