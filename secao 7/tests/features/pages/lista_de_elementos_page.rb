class ListaDeElementosPage < SitePrism::Page

    set_url '/docs/4.0/examples/dashboard/'

# Pegando nome das colunas
    elements :nome_das_colunas, 'tr > th'
    elements :lista_de_entradas, 'tr > td'
end
