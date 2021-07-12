#language: pt

# Contexto: Repetir um mesmo método para todos os cenários

Funcionalidade: Trabalhar com contexto.

Contexto:
Dado que eu tenho 10 laranjas na bolsa.

Cenario: Colocar laranjas na bolsa.
Quando eu coloco 2 laranjas na bolsa.
Então eu verifico se o total de laranjas na bolsa e 12.

Cenario: Retirar laranjas da bolsa.
Quando eu retiro 2 laranjas da bolsa.
Então eu verifico com quantas laranjas eu fiquei na bolsa.