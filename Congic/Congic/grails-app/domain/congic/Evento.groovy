package congic

class Evento {

Apresentacao apresentacao
String tematica
Date data
List <String> historico	

    static constraints = {

apresentacao nullable:false,unique:true
tematica nullable:false
data nullable:false,unique:true
historico blank:true
    }
}
