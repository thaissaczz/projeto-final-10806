# Passo 1: Criar a pasta principal e as duas subpastas
New-Item -ItemType Directory -Path "projeto_analise" | Out-Null
New-Item -ItemType Directory -Path "projeto_analise\dados" | Out-Null
New-Item -ItemType Directory -Path "projeto_analise\backup" | Out-Null

# Passo 2: Criar o ficheiro metadados.txt dentro de projeto_analise, com a frase pedida
Set-Content -Path "projeto_analise\metadados.txt" -Value "Pipeline de analise iniciado."

# Passo 3: Copiar o ficheiro para dentro da subpasta backup (mesmo nome)
Copy-Item -Path "projeto_analise\metadados.txt" -Destination "projeto_analise\backup\metadados.txt"

# Passo 4: Mover o ficheiro original para dentro da subpasta dados, mudando o nome para info.txt
Move-Item -Path "projeto_analise\metadados.txt" -Destination "projeto_analise\dados\info.txt"
