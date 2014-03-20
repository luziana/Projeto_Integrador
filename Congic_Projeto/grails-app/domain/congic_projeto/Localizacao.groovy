package congic_projeto

class Localizacao {
	//Mapas
	//Imagens
	String descricao
	
	static belongsTo = [cidade:Cidade]
	
	@Override
	String toString() {
		return this.descricao
		return this.cidade
	};
	
    static constraints = {
		descricao nullable:false, blank:false, unique:true
    }
	
}
