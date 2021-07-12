#language: pt

# Cenário no cucumber são separados em:
# - Dado:   Uma pre condição que precisa ser atenda antes da ação
# - Quando: Descrição da ação a ser tomada
# - Então:  Recebimento do resultado

# Dado pode ter várias condições, indicado pela palavra "e"
# Então também pode ter várias condiçoes, indicado por "mas"

Funcionalidade: Calculo de subtração e soma

Cenario: Fazer subtração
Dado eu tenha 10 laranjas.
Quando eu como 2 laranjas.
Então eu vejo quantas laranjas sobraram.

Cenario: Fazer soma
Dado eu tenha 10 laranjas.
Quando eu compro 5 laranjas.
Então eu vejo quantas laranjas eu tenho.