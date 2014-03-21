package congic_projeto

class Localizacao {
	//Mapas
	//Imagens
	String descricao
	
	static belongsTo = [cidade:Cidade]
	
	@Override
	String toString() {
		return "${descricao}"
	};
	
    static constraints = {
		descricao nullable:false, blank:false, unique:true
    }
	
}
