package projeto

class Noticia {
	int id
	String titulo
    String descricao

static constraints = {
	titulo(nullable:false, blank:false)
descricao(nullable:false, blank:false, maxSize:10000)



}

String toString() {
return "${titulo+descricao}"
}

}
