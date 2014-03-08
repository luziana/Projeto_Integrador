import congic_projeto.Menu

class BootStrap {

    def init = { servletContext ->
		def menu = new Menu(link: '#', nome_link: 'Pau dos Ferros')
		menu.save(flush: true)
		
		
    }
    def destroy = {
    }
}
