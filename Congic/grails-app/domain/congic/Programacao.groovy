package congic

import java.sql.Date;
import java.sql.Time;

class Programacao {
Date data
Time horario
String categoria
String titulo
String orador
String descricao

    static constraints = {

data(nullable: false, blank: false)
horario(blank: false)
categoria(nullable: false, blank: false)
titulo(nullable:false, blank: false)
orador(nullable: false, blank: false)
descricao(maxSize:400)

    }


}
