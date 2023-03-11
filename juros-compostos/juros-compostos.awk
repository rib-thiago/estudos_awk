#!/usr/bin/awk -f

# Nome do script: juros-compostos.awk
# Autor: Thiago Ribeiro
# Data: 2022-08-21
# Descrição: mostra como o valor de uma quantia de dinheiro investida a uma determinada taxa de juros cresce ao longo de vários anos

# Uso: 
# input: $ awk -f juros-compostos.awk 
#           1000 0.6 5 
#                   1600.00
#                   2560.00
#                   4096.00
#                   6553.60
#                   10485.76  




# Início do script
{
    i = 1
    while (i <= $3) {
        printf("\t%.2f\n", $1 * (1 + $2) ^i)
        i = i + 1
    }
}

# Fim do script




# O `\t` na string de especificação `printf` representa um caractere de tabulação;
# O caractere `^` é o operador de exponenciação.

