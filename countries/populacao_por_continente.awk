#!/usr/bin/awk -f

# Nome do script: populacao_por_continente.awk
# Autor: Thiago Ribeiro
# Data: 2022-08-21
# Descrição: Script que calcula a população por continente

# Uso: awk -f populacao_por_continente.awk countries.txt

# Início do script
BEGIN {
    fs = "\t"
}

# Processamento das linhas do arquivo
{
    pop[$4] += $3
}

# Processamento final do arquivo
END {
    for (name in pop) {
        print name, pop[name]   
    }
}
