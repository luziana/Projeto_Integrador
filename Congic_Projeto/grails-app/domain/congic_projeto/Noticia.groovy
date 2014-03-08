package congic_projeto

class Noticia {

	String titulo
	String descricao
	String image
	
	static constraints = {
		titulo(nullable:false, blank:false)
		descricao(nullable:false, blank:false, maxSize:10000)
		image(blank:true,maxSize: 20 * 1024 * 102)
	}

	String toString() {
		return "${descricao}"
	}
}
