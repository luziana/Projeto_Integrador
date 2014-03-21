package congic_projeto

class Area {

	String nome
	
	static hasMany = [subArea: SubArea]

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.nome;
	}

	static constraints = {
		nome nullable:false
		
	}
	
	
}