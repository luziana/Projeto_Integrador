package congic_projeto

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class HomeController {
	
    def home() {
		
		def noticias = Noticia.list()
		def menu = Menu.get(1)
		render view: 'home', model: [noticias: noticias, menu: menu]
	}
	
	
}
