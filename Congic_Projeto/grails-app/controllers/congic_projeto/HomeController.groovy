package congic_projeto

import org.springframework.dao.DataIntegrityViolationException

import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class HomeController {
	
    def home(Long id) {
		
		def noticias = Noticia.list()
		def tituloPaginas = TituloPaginas.list()
		def menu = Menu.get(1)
		render view: 'home', model: [noticias: noticias, tituloPaginas:tituloPaginas, menu:menu]
	}	
}
