#!/usr/bin/awk -f

# Nome do script: nome-pagamento.awk
# Autor: Thiago Ribeiro
# Data: 2022-08-21
# Descrição: Script que imprime nome e pagamento de quem trabalhou mais de zero horas

# Uso: awk -f nome-pagamento.awk emp.data


# Início do script
BEGIN {
    # Coloque aqui a lógica de inicialização do seu script, se necessário
}

# Processamento das linhas do arquivo
{
    # Coloque aqui a lógica de processamento das linhas do arquivo
    if ($3 > 0) {
        print $1, $2, $3
    }
}

# Processamento final do arquivo
END {
    # Coloque aqui a lógica de processamento final do arquivo, se necessário
}
