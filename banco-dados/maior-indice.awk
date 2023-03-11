#!/usr/bin/awk -f

# Nome do script: maior-indice.awk
# Autor: Thiago Ribeiro
# Data: 2022-08-21
# Descrição: Este script encontra a linha com o maior valor na primeira coluna de um arquivo de entrada.

# Uso: awk -f maior-indice.awk dados

# Início do script
BEGIN {
    # Coloque aqui a lógica de inicialização do seu script, se necessário
}

# Processamento das linhas do arquivo
{
    # Coloque aqui a lógica de processamento das linhas do arquivo
    if ($1 > max) {
        max = $1
        maxline = $0
    }
}

# Processamento final do arquivo
END {
    # Coloque aqui a lógica de processamento final do arquivo, se necessário
    print max, maxline
}
