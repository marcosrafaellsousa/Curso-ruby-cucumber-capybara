# Referências: https://www.w3schools.com/xml/xpath_intro.asp
# 
# Elemento HTML são composto por: 
#
# Exemplo: <p class="important"> This is a paragraph </p>
#
# Abertura da tag:                      <p
# Conjunto de atributos e valores:      
# Nome do atributo:                     class=
# Valor do atributo:                    "important">
# Conteúdo do elemento:                 This is a paragraph
# Fechamento da tag:                    </p>
#
#
# Xpath (XML Path Language) é uma linguagem que facilita a busca de elementos em uma estrutura de árvore
# 
# Exemplos da notação:
# /     Nó raiz
# //    Nós no documento a partir do nó atual
# .     Seleciona o nó atual
# ..    Seleciona o pai do nó atual
# @     Seleciona atributos
#
# Predicados: Usados para buscar um nó específico
# Exemplos de predicados:
# /bookstore/book[1]                    Seleciona o primeiro elemento do nó livro
# /bookstore/book[last ()]              Último elemento do nó livro
# /bookstore/book[last () - 1]          Penúltimo elemento
# /bookstore/book[position () < 3]      Dois primeiros elementos
# //title[@lang]                        Seleciona todos os elementos que possuem um atributo 'lang'
# //title[@lang='EN']                   Todos os elementos que possuem um atributo 'lang' com valor 'EN'
# /bookstore/book[price < 35.00]        Seleciona todos os elementos que possuem um outro elemento chamado 'preco' 
# com um valor menor que 35.00
# /bookstore/book[price < 35.00]/title  Seleciona o título de todos os elementos que possuem um outro elemento 
# chamado 'preco' com um valor menor que 35.00