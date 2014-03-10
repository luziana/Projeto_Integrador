package congic_projeto

class Hospedagem {
	
	String nome_hospedagem
	String endereco
	String contato

    static constraints = {
		
		nome_hospedagem(nullable:false, blank:false, unique:true)
		endereco(nullable:false, blank:false, unique:true)
		contato(nullable:false, blank:false, unique:true)
		
    }
}
