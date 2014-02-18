package congic_projeto

class Localizacao {
	//Mapas
	//Imagens
	String descricao

    static constraints = {
		descricao nullable:false, blank:false, unique:true
    }
}
