package congic_projeto
import java.util.Date;
import java.util.List;

import com.sun.istack.internal.Nullable;

class Apresentacao_Evento {
	String descricaoEvento
	String tematica
	Date data
	List <String> historico

    static constraints = {
		descricaoEvento nullable:false, blank:false, unique:true
		tematica nullable:false, blank:false,unique:true
		data nullable:false,blank:false,unique:true
		historico blank:true
    }
}
