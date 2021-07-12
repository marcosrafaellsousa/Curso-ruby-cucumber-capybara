Before do
    puts 'hooks sendo executado antes de cada cenario'
    @soma = 5 + 5
end

After '@funcionalidade_tags' do
    puts 'hook sendo executado nos cenario com a tag @funcionalidade_tags'
end
