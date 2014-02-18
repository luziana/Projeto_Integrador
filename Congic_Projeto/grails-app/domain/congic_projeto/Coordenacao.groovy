package congic_projeto

class Coordenacao {
	String nome
	String cargo
    static constraints = {
		nome nullable:false,unique:true
		cargo nullable:false,unique:true
		}
}
