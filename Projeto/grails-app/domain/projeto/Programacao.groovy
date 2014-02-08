package projeto

import java.sql.Date;

class Programacao {
	Date data
	Date horario
	String categoria
	String titulo
	String orador
	String descricao
	
    static constraints = {
		
		data(nullable: false, blank: false)
		horario(nullable: false, blank: false)
		categoria(nullable: false, blank: false)
		titulo(nullable:false, blank: false)
		orador(nullable: false, blank: false)
		descricao(maxSize:400)
		
    }
	
	
}
