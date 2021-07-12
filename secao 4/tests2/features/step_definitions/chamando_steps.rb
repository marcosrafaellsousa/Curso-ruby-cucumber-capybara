Dado('eu tenho {int} laranjas no estoque.') do |laranjas|
    @laranjas = laranjas
end

Quando('eu amasso {int} laranjas.') do |amassadas|
    @total = @laranjas - amassadas
end

Então('eu verifico quantas laranjas sobraram no estoque.') do
    expect(@total).to eq 8
end

Quando('eu revendo {int} laranjas.') do |revendidas|
    # Chamando o passo do outro cenario
    steps %q{
        Dado eu tenho 10 laranjas no estoque.
    }
    @resultado = @laranjas - revendidas
end

Então('eu verifico com quantas laranjas eu fiquei.') do
    expect(@resultado).to eq 7
end