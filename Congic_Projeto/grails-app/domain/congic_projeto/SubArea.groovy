package congic_projeto

class SubArea {

	String nome
	
	static hasOne = [area: Area]
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.nome;
	}

    static constraints = {
		nome nullable:false
		
	}
	
	
}