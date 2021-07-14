# Curso Ruby Cucumber Capybara

Repositório do curso: "Automação de Testes com Capybara, Cucumber e Ruby" na Udemy

## Estrutura

O repositório está divido em seções, similares à divisão de seções do curso

## Stack

O projeto de testes utiliza as tecnologias:  
**Ruby**: Linguagem de programação  
**Cucumber**: Criação de testes com o padrão BDD  
**Capybara**: Ferramenta para interação web simulando um usuário, utilizando o driver **selenium_chrome** para controlar o navegador Google Chrome de forma automatizada.  

## Como executar

Abrir alguma das pastas '/tests', no terminal executar o comando `bundle install` para instalar as gems necessárias e executar os testes com o comando `cucumber`, os resultados devem aparecer no terminal.
* Pode ser que alguns dos projetos das primeiras seções não tenha todas as gemas necessárias para rodar o projeto isoladamente por causa do webdriver chrome ter sido instalado localmente ao invés de no projeto.

### Tags

A partir da seção os testes estão tageados para facilitar a execução de testes separadamente

### Exemplos usados

Os testes são executados em exemplos encontrados na internet de elementos que estão sendo usados, como por exemplo demonstrações de formulários de páginas do bootstrap, caso alguma dessas páginas saia do ar isso pode alterar o resultado de um teste.
