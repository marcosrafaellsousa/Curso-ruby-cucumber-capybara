#language: pt

# Chamar outros passos (steps) serve para reutiliar passos de outros cenarios na definição dos passos
# Similar ao contexto, porém uma única vez e não em todos os cenarios
Funcionalidade: Trabalhando com chamadas de outros passos

Cenario: Amasso laranjas
Dado eu tenho 10 laranjas no estoque.
Quando eu amasso 2 laranjas.
Então eu verifico quantas laranjas sobraram no estoque.

Cenario: Revendo laranjas
Quando eu revendo 3 laranjas.
Então eu verifico com quantas laranjas eu fiquei.

