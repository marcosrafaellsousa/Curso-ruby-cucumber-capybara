#language: pt

# Esquema: Executar um mesmo cenário várias vezes com diferentes valores
Funcionalidade: Calculo de multiplicação.

Esquema do Cenario: Fazer uma multiplicação
Quando eu multiplico minhas <laranjas> pelo <valor>.
Então eu vejo qual é o <resultado> da multiplicação.

Exemplos:

|laranjas   |valor  |resultado  |
|10         |5      |50         |
|10         |3      |30         |
|10         |2      |20         |
|10         |10     |100        |