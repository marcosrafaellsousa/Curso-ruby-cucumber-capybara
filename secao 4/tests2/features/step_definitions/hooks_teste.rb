# Hooks é um conceito que permite executar um bloco de  teste antes ou depois de todos os cenario
# Diferente do contexto, que executa em uma funcionalidade, os hooks valem para todos os cenarios do projeto
# Ou cenarios anotados por tags

Quando("eu realizo a media") do
    @media = @soma / 2
end

Então ("eu quero saber o resultado") do
    expect(@media).to eq 5
end