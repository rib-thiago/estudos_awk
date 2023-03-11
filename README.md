# Biblioteca de Programas em AWK

Esta é uma coleção de pequenos programas em awk baseados no livro **"The AWK Programming Language"**, de _Alfred V. Aho_, _Brian W. Kernighan_ e _Peter J. Weinberger (1988)_

## Instalação

Não há necessidade de instalação, basta clonar o repositório e usar as funções que desejar. Certifique-se de ter o **awk** instalado em sua máquina.

```bash
git clone https://github.com/seu-usuario/biblioteca-awk.git
```

## Uso

Os programas estão localizados nos arquivos `.awk` dentro dos repositórios temáticos.

Cada arquivo `.awk` pode ser invocado de três formas princiapis:

1. Receber sua entrada como argumento da linha de comando:

```bash
awk -f reverse.awk test.txt
```

2. Receber como input o output de outro comando através do redirecionamento do fluxo de dados via pipe:

```bash
echo "linha 1" "linha 2" "linha 3" | awk -f reverse.awk
```

3. Os arquivos neste repositório possuem em sua primeira linha a seguinte instrução: `#!/usr/bin/awk -f` que é usada pelo sistema operacional para identificar o identificador de script _awk_. Basta tornar o script executável com o comando `chmod +x script.awk` para executá-lo diretamente da linha de comando:

```bash
./script.awk file1 file2
```

Para usar uma função em seu script, basta incluir o arquivo `.awk` correspondente e chamar a função desejada.

Exemplo:

```bash {.line-numbers}
@include "funcao1.awk"
@include "funcao2.awk"

BEGIN {
    # Chamando a função1
    resultado = funcao1("argumento")

    # Chamando a função2
    funcao2("outro_argumento")
}
```
