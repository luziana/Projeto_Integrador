package congic_projeto

class Evento {
	Date data
	static hasMany = [minicurso: Minicurso, palestra:Palestra]
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.data.format("dd/MM/yyyy")
	}
	
    static constraints = {
		data nullable:false, blank:false
		minicurso nullable:true, blank:true
		palestra nullable:true, blank:true
    }
}
