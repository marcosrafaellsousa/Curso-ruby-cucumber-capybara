#language: pt

# Tags: organizar recursos, funcionalidades e cenários
# É possível colocar várias tags em uma mesma funcionalidades ou cenário 

# Utilizando tags no terminal
# cucumber --tags '@tagname'                : Executa os recursos marcados com @tagname
# cucumber --tags '@tag1 or @tag2'          : Executa todos os recursos marcados com as @tag1 @tag2

@funcionalidade_tags
Funcionalidade: Trabalhar com tags

@cenario_comer_bananas
Cenario: Comer bananas
Dado que eu tenha 10 bananas.
Quando eu como 2 bananas.
Então eu verifico se sobraram 8 bananas.

@cenario_comprar_bananas
Cenario: Comprar bananas
Dado que eu tenha 10 bananas.
Quando eu compro 5 bananas.
Então eu verifico se tenho 15 bananas.