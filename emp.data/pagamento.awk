#!/usr/bin/awk -f

# Nome do script: pagamento.awk
# Autor: Thiago Ribeiro
# Data: 2022-08-21
# Descrição: Script que calcula o pagamento total e a taxa horária máxima para um conjunto de funcionários.
# Uso: awk -f pagamento.awk emp.data

# Início do script
{ pay = pay + $2 * $3 }
END { print NR, "employees" 
      print "total pay is", pay
      print "avarage pay is", pay/NR
    }

$2 > maxrate { maxrate = $2; maxemp = $1}
END { print "highest hourly rate:", maxrate, "for", maxemp }
# Fim do script