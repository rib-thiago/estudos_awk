#!/usr/bin/awk -f

# Nome do script: modifica_america.awk
# Autor: Thiago Ribeiro
# Data: 2022-08-21
# Descrição: Script que modifica nos nomes dos continentes North America e 
# South America por siglas com suas iniciais

# Uso: awk -f modifica_pais.awk countries.txt

BEGIN { FS = OFS = "\t" }
$4 == "North America" { $4 = "NA" }
$4 == "South America" { $4 = "SA" }
                      { print }

