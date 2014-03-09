package congic_projeto

class Tematicas {
	String descricao
	
	static belongsTo = null
	static hasMany = [area: Area]
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.descricao;
	}
	
    static constraints = {
		
		descricao nullable:false,unique:true,blank:false
		
		
    }
}
