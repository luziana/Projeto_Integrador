package congic_projeto

class Minicurso {

	String nome, hora, ministrante, descricao
	static belongsTo = [evento: Evento]



	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.nome;

	}

	static constraints = {
		nome nullable:true,blank:false,maxSize:90
		hora nullable:true,blank:false
		ministrante nullable:false
		descricao nullable:false,maxSize:600
	}
}
