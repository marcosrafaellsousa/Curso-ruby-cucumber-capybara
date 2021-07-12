
Dado('que eu tenha {int} bananas.') do |quantidade_de_bananas|
    @quantidade_de_bananas = quantidade_de_bananas
end

Quando('eu como {int} bananas.') do |bananas_comidas|
    @bananas_sobradas = @quantidade_de_bananas - bananas_comidas
end

Então('eu verifico se sobraram {int} bananas.') do |bananas_sobradas_esperadas|
    expect(@bananas_sobradas).to eq bananas_sobradas_esperadas
end

Quando('eu compro {int} bananas.') do |bananas_compradas|
    @bananas_em_posse = @quantidade_de_bananas + bananas_compradas
end

Então('eu verifico se tenho {int} bananas.') do |bananas_em_posse_esperadas|
    expect(@bananas_em_posse).to eq bananas_em_posse_esperadas
end