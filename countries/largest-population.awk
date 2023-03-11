#!/usr/bin/awk -f

# Nome do script: largest-population.awk
# Autor: Thiago Ribeiro
# Data: 2022-08-21
# Descrição: Encontra o país com a maior população

# Uso: awk -f largest-population.awk countries.txt

# Início do script
BEGIN {
    # Inicializa a variável de maior população com zero
    maxpop = 0
}

# Processamento das linhas do arquivo
{
    # Verifica se a população atual é maior do que a população máxima
    if ($3 > maxpop) {
        maxpop = $3
        country = $1
    }
}

# Processamento final do arquivo
END {
    # Imprime o país com a maior população e sua população
    print "country with largest population:", country, maxpop
}
