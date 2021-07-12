Dado('que eu tenho umas laranjas.') do |table|
    # Datatable com linhas se utiliza rows_hash[] passando a chave da linha
    @laranja = table.rows_hash['laranja'].to_i
end

Quando('eu corto {int} laranjas.') do |valor1|
    @cortei = valor1
    @resultado = @laranja - @cortei
end

Então('eu verifico quantas laranjas sobraram inteiras.') do
    expect(@resultado).to eq 8
end

Dado('que tenho umas laranjas') do |table|
    # Databale usado como colunas deve ser feito um for each (hashes.each) e pegando o valor utilizando uma variavel
    table.hashes.each do |valor|
        @laranjas = valor['laranja'].to_i
    end
end

Quando('eu chupo {int} laranjas.') do |valor2|
    @chupei = valor2
    @total = @laranjas - @chupei
end

Então('eu verifico quantas laranjas sobraram.') do
    expect(@total).to eq 7
end