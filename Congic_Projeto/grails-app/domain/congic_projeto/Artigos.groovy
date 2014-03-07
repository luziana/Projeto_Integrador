package congic_projeto

class Artigos {
	String titulo
	String descricao
	byte[] arquivo
	
    static constraints = {
		titulo(nullable:false, blank:false)
		descricao(nullable:false, blank:false, maxSize:10000)
    }
}
