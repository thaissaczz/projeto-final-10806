#!/bin/bash

# 1. Cabeçalho com data e hora
echo "=== Relatório gerado a: $(date '+%Y-%m-%d %H:%M:%S') ===" > relatorio.log

# 2. Consumo de API - câmbio EUR para USD
CAMBIO=$(curl -sL "https://api.frankfurter.app/latest?from=EUR&to=USD" | jq '.rates.USD')

# 3. Escrever câmbio no ficheiro
echo "Câmbio EUR para USD: $CAMBIO" >> relatorio.log

# 4. Executar o scraper Python e guardar resultado
CITACAO=$(python3 scraper.py)

# 5. Escrever citação no ficheiro
echo "Citação do dia: $CITACAO" >> relatorio.log
echo "---------------------------------------------" >> relatorio.log
