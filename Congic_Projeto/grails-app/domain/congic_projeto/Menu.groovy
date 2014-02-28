package congic_projeto

class Menu {
	
	String link
	String nome_link

    static constraints = {
		link nullable:false, blank:false, unique:true
		nome_link nullable:false, blank:false, unique:true	
	
    }
}
