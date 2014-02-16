package congic
import grails.plugin.springsecurity.annotation.Secured

@Secured (['ROLE_ADMIN'])
class HomeController {

    def home() {
		def noticias = Noticia.list()
		[noticias: noticias]
	}
}
