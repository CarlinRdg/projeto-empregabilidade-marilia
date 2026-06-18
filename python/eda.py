import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent

df_municipios = pd.read_csv(
    BASE_DIR / "data" / "processed" / "emprego_municipio.csv"
)

top10 = (
    df_municipios
    .sort_values("saldo_mes", ascending=False)
    .head(10)
)

plt.figure(figsize=(10, 5))
plt.bar(top10["municipio"], top10["saldo_mes"])
plt.xticks(rotation=45)
plt.title("Top 10 Municípios por Saldo de Empregos")
plt.tight_layout()

plt.savefig(
    BASE_DIR / "images" / "top10_municipios.png"
)

plt.show()