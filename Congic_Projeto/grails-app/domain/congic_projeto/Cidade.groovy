package congic_projeto

class Cidade {
	String nomeCidade
	

    static constraints = {
		nomeCidade(nullable:false,blank:false)
		
    }
	
	@Override
	String toString() {
		return "${nomeCidade}"
		
	};
}
