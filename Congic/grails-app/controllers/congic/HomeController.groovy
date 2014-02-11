package congic

class HomeController {

    def home() {
		def noticias = Noticia.list()
		[noticias: noticias]
	}
}
