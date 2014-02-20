package congic_projeto

class Noticia {

	String titulo
	String descricao
	String link
	
	static constraints = {
	titulo(nullable:false, blank:false)
	descricao(nullable:false, blank:false, maxSize:10000)
	link(maxSize:450)
	}
	
	String toString() {
	return "${descricao+link}"
	}
}
