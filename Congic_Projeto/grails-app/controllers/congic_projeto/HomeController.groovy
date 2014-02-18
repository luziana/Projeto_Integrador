package congic_projeto

class HomeController {

    def home() {
		def noticias = Noticia.list()
		[noticias: noticias]
		}
}
