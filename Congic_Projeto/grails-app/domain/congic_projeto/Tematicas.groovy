package congic_projeto

class Tematicas {
	
	String descricao

	static belongsTo = [area: Area]
	static hasMany = [area: Area]
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.descricao
		return this.area
	
	}
	
    static constraints = {
		
		descricao nullable:false,unique:true,blank:true
		
		
    }
}
