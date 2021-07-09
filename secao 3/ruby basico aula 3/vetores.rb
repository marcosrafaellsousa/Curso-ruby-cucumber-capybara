
vetor = [1,2,7,8,9,10,3,4,5]

hash = {"key","valor"}

hashes = {"a" => "1", "b" => "2"}

hashes["a"]

hashes2 = {:a => "1", :b => "2"}    #forma alternativa de passar as chaves, utilizando simbolos
                                    #simbolo: string estática, não muda de valor, usado de 
                                    #identificador

hashes2 [:a]


vetor.each do |i|
    puts i
end