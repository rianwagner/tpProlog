# Trabalho Prático - Prolog

Este é o trabalho prático de Prolog, composto por duas partes distintas.
O trabalho foi desenvolvido durante os estudos da diciplina de Logica Aplicada, no curso de Ciência da Computação - UFSJ

## 1ª parte

A primeira parte consiste na implementação de predicados em Prolog para manipulação de listas e cálculos matemáticos. Os predicados implementados são os seguintes:

### a) in_finalLista/3
**Descrição:** Insere um elemento no final de uma lista.

**Exemplo de uso:**
```prolog
?- in_finalLista([1, 2, 3], 4, Resultado).
Resultado = [1, 2, 3, 4].

### b) inserirElemento/4
**Descrição:** Insere um elemento em uma determinada posição de uma lista.

**Exemplo de uso:**
```prolog
?- inserirElemento(4, 2, [1, 2, 3], Resultado).
Resultado = [1, 4, 2, 3].

### c) remover/4
**Descrição:** Remove um elemento de uma determinada posição de uma lista.

**Exemplo de uso:**
```prolog
?- remover(2, [1, 2, 3, 4], 2, Resultado).
Resultado = [1, 3, 4].

### d) potencia/3
**Descrição:** Calcula a potência de um número.

**Exemplo de uso:**
```prolog
?- potencia(2, 3, Resultado).
Resultado = 8.

### e) palindromo/1
**Descrição:** Verifica se uma lista é um palíndromo.

**Exemplo de uso:**
```prolog
?- palindromo([1, 2, 3, 2, 1]).
true.

## 2ª parte
A segunda parte consiste na implementação de predicados em Prolog para modelar relacionamentos entre pessoas com base em suas preferências de filmes e idades. Os predicados implementados são os seguintes:

### afinidade_filme/2
Descrição: Verifica se duas pessoas têm afinidade em relação a um determinado filme.

### casal/2
Descrição: Verifica se duas pessoas formam um casal.

### afinidade_idade/2
Descrição: Verifica se uma pessoa tem afinidade de idade com outra pessoa.

### casal_afinidade_idade/2
Descrição: Verifica se um casal tem afinidade de idade.

### casal_total/2
Descrição: Verifica se um casal tem afinidade de idade e de filmes.

### Executando o Trabalho Prático:
Para executar o trabalho prático em Prolog, siga as seguintes etapas:

Certifique-se de ter o Prolog instalado em sua máquina.

Abra um terminal ou prompt de comando e navegue até o diretório onde os arquivos do trabalho estão localizados.

Inicie o interpretador Prolog executando o comando prolog no terminal.

Carregue o arquivo com as implementações dos predicados, digitando [nome_do_arquivo]. no interpretador Prolog. 

Agora você pode fazer consultas aos predicados implementados. Por exemplo, para verificar se duas pessoas têm