#!/usr/bin/awk -f

# Nome do script: reverse-input.awk
# Autor: Thiago Ribeiro
# Data: 2022-08-21
# Descrição: Este script imprime as linhas de entrada na ordem inversa.

# Uso: awk -f reverse-input.awk file1 
#      echo "linha 1" "linha 2" "linha 3" | awk -f reverse-input.awk

# Início do script
BEGIN {
    # Coloque aqui a lógica de inicialização do seu script, se necessário
}

# Processamento das linhas do arquivo
{
    # Coloque aqui a lógica de processamento das linhas do arquivo
    line[NR] = $0
}

# Processamento final do arquivo
END {
    # Coloque aqui a lógica de processamento final do arquivo, se necessário
    i = NR
    while (i > 0) {
        print line[i]
        i = i - 1
    }
}
