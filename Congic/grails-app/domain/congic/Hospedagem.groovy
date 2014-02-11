package congic

class Hospedagem {

	String nome_hospedagem
	String endereco
	String contato
	
    static constraints = {
		
		nome_hospedagem nullable:false, blanck:false, unique:true
		endereco nullable:false, blanck:false, unique:true
		contato nullable:false, blanck:false, unique:true
		
    }
}
