package congic_projeto
import java.util.Date;
import java.util.List;

import com.sun.istack.internal.Nullable;

class Apresentacao {
	String descricaoEvento
	String tematica
	Date data
	

    static constraints = {
		descricaoEvento nullable:false, blank:false, unique:true
		tematica nullable:false, blank:false,unique:true
		data nullable:false,blank:false,unique:true
		
		
    }
}
