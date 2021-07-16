class MapeandoElementosPage < SitePrism::Page

    set_url('/docs/4.0/examples/checkout/')

    element :first_name, '#firstName'

    def preencher
        first_name.set('teste')
    end
end