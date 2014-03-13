package congic_projeto

class Tematicas {
	
	String descricao

	static belongsTo = [area: Area]
	static hasMany = [area: Area, subArea: SubArea]
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.descricao;
	}
	
    static constraints = {
		
		descricao nullable:false,unique:true,blank:true
		
		
    }
}
