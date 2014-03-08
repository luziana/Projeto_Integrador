package congic_projeto

class Coordenacao {
	String nome
	String cargo
	
	static hasOne = [organizacao: Organizacao]
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.nome;
	}
	
		
    static constraints = {
		nome nullable:false
		cargo nullable:false
		}
}
