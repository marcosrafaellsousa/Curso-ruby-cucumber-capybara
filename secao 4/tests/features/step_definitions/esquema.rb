Quando('eu multiplico minhas {int} pelo {int}.') do |laranjas, valor|
    @multiplicação = laranjas * valor
end
    
Então('eu vejo qual é o {int} da multiplicação.') do |resultado|
    expect(@multiplicação).to eq resultado
end