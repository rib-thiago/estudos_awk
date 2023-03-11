#!/usr/bin/awk -f

# Nome do script: pop-asia.awk
# Autor: Thiago Ribeiro
# Data: 2022-08-21
# Descrição: Script que calcula a população total dos países da Ásia

# Uso: awk -f pop-asia.awk countries.txt

# Início do script
BEGIN {
    # Coloque aqui a lógica de inicialização do seu script, se necessário
}

# Processamento das linhas do arquivo
$4 == "Asia" {
    # Coloque aqui a lógica de processamento das linhas do arquivo
    pop = pop + $3
    n = n + 1
}

# Processamento final do arquivo
END {
    # Coloque aqui a lógica de processamento final do arquivo, se necessário
    print "Total population of the", n, "Asian countries is", pop, "million."
}
