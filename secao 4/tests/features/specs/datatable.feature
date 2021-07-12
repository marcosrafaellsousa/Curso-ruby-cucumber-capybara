#language: pt

# Datatable: declarar diversos valores na etapa "Dado"
# E esperar diversos valores na etapa "Então"

Funcionalidade: Trabalhar com datatable

Cenario: Cortar laranjas
# Com data table não se especifica a variavel <laranja>
Dado que eu tenho umas laranjas.
|laranja|10|
Quando eu corto 2 laranjas.
Então eu verifico quantas laranjas sobraram inteiras.

Cenario: Chupar laranjas
Dado que tenho umas laranjas
|laranja|
|10     |
Quando eu chupo 3 laranjas.
Então eu verifico quantas laranjas sobraram.