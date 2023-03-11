#!/usr/bin/awk -f

# Nome do script: continente-info.awk
# Autor: Thiago Ribeiro
# Data: 2022-08-21
# Descrição: Script utilizado para imprimir na tela informações de países, incluindo nome, área, população e continente. Ele também calcula a área total e população total dos países e imprime ao final. 
# Uso: awk -f continente-info.awk arquivo_entrada


# Início do script
BEGIN { 
    FS = "\t"    # faz do tab o separador de campos
    printf("%10s %6s %5s   %s\n\n", "COUNTRY", "AREA", "POP", "CONTINENT")
}
{  
    printf("%10s %6d %5d   %s\n", $1, $2, $3, $4)
    area = area + $2
    pop = pop + $3
}
END {  
    printf("\n%10s %6d %5d\n", "TOTAL", area, pop) 
}

# Fim do script
