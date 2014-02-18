package congic_projeto

class Areas_Tematicas {
	String descricao
	String area
	String subArea
    static constraints = {
		descricao nullable:false,unique:true,blank:false
		area nullable:false,unique:true,blank:false
		subArea nullable:false,blank:false
    }
}
