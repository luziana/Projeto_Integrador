package projeto

class Noticia {
	String titulo
    String descricao

static constraints = {
descricao(nullable:false, blank:false, maxSize:10000)
titulo(nullable:false, blank:false)

}

String toString() {
return "${titulo+descricao}"
}

}
