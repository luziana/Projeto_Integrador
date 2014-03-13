package congic_projeto

import java.awt.Toolkit;

class Noticia {

	String titulo
	String descricao

	
	static constraints = {
		titulo(nullable:false, blank:false)
		descricao(nullable:false, blank:false, maxSize:10000)
		
	}
	@Override
	String toString() {
		return "${descricao}"
	}
}
