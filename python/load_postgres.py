import pandas as pd
from pathlib import Path
from sqlalchemy import create_engine

BASE_DIR = Path(__file__).resolve().parent.parent
PASTA_DADOS = BASE_DIR / "data" / "processed"

USUARIO = "postgres"
SENHA = "postgres123"
HOST = "localhost"
PORTA = "5432"
BANCO = "empregabilidade_marilia"

engine = create_engine(
    f"postgresql+psycopg2://{USUARIO}:{SENHA}@{HOST}:{PORTA}/{BANCO}"
)

arquivos = {
    "emprego_municipio": "emprego_municipio.csv",
    "emprego_setor": "emprego_setor.csv",
    "emprego_subsetor": "emprego_subsetor.csv",
}

for tabela, arquivo in arquivos.items():
    caminho = PASTA_DADOS / arquivo
    df = pd.read_csv(caminho)
    df.to_sql(tabela, engine, if_exists="replace", index=False)
    print(f"Tabela {tabela} carregada com {len(df)} registros.")

print("Carga no PostgreSQL concluída com sucesso!")