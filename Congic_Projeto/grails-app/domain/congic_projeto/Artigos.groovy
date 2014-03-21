package congic_projeto

class Artigos {
	String descricao
	byte[] arquivo	
	
    static constraints = {
		arquivo(size:0..1310720000,nulable: true)
		descricao(nullable:false, blank:false, maxSize:10000)
		arquivo	(nullable:true, blank:false)
    }
}
