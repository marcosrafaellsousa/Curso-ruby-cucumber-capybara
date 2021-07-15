Quando ('eu faço upload de um arquivo') do

    visit '/docs/4.0/components/forms/'
    
    # Passar o caminho inteiro do arquivo
    # Opção "makevisible: true" quando não está disponível
    #attach_file('exampleFormControlFile1','C:\Users\Kay\Documents\Curso ruby cucumber capybara\secao 6\capybaratestes\tests\test.txt')
    
    # Aternativa para diminuir o código quando o arquivo está no projeto:
    @file = File.join(Dir.pwd, 'test.txt')
    attach_file('exampleFormControlFile1',@file)

end