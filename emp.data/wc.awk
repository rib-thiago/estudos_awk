#!/usr/bin/awk -f

# Nome do script: wc.awk
# Autor: Thago Ribeiro
# Data: 2022-08-21
# Descrição: Script que conta as linhas, palavras e caracteres do arquivo e calcula o pagamento 
# total e a taxa horária máxima para um conjunto de funcionários com salário maior que $3/hora.

# Uso: awk -f wc_pagamento_maior_3.awk arquivo_entrada

# Início do script
{
    nc = nc + length($0) + 1
    nw = nw + NF
}

END {
    print NR, "lines", nw, "words", nc, "characters"
}

$2 > 3 {
    n = n + 1
    pay = pay + $2 * $3
}

$2 > maxrate {
    maxrate = $2
    maxemp = $1
}

END {
    if (n > 0) {
        print n, "employees, total pay is", pay, "average pay is", pay/n
    } else {
        print "no employees are paid more than $3/hour"
    }

    print "highest hourly rate:", maxrate, "for", maxemp
}
