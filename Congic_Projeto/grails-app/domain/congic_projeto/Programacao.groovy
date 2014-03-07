package congic_projeto

import java.sql.Time
class Programacao {
	
	Date horario
	String categoria
	String titulo
	String orador
	String descricao
    static constraints = {
		
		horario(blank: false)
		categoria(nullable: false, blank: false)
		titulo(nullable:false, blank: false)
		orador(nullable: false, blank: false)
		descricao(maxSize:400)
    }
}
