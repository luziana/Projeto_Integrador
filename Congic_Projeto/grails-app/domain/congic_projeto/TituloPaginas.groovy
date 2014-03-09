package congic_projeto

class TituloPaginas {
	
	String tituloInicio
	String subtituloInicio
	
	String titulApresentacao
	String subtituloApresentacao
	
	String tituloOrganizacao
	String subtituloOrganizacao

	String tituloLocalizacao
	String subtituloLocalizacao
	
	String tituloHospedagem
	String subtituloHospedagem
	
	String tituloAreasTematicas
	String subtituloAreasTematicas
	
	String tituloProgramacao
	String subtituloProgramacao
	
	String tituloArtigos
	String subtituloArigos
	
	
    static constraints = {
		
		tituloInicio (blank:false, nullable:false, unique:true)
		subtituloInicio (blank:false, nullable:false, unique:true)
		
		titulApresentacao (blank:false, nullable:false, unique:true)
		subtituloApresentacao (blank:false, nullable:false, unique:true)
		
		tituloOrganizacao (blank:false, nullable:false, unique:true)
		subtituloOrganizacao (blank:false, nullable:false, unique:true)
	
		tituloLocalizacao (blank:false, nullable:false, unique:true)
		subtituloLocalizacao (blank:false, nullable:false, unique:true)
		
		tituloHospedagem (blank:false, nullable:false, unique:true)
		subtituloHospedagem (blank:false, nullable:false, unique:true)
		
		tituloAreasTematicas (blank:false, nullable:false, unique:true)
		subtituloAreasTematicas (blank:false, nullable:false, unique:true)
		
		tituloProgramacao (blank:false, nullable:false, unique:true)
		subtituloProgramacao (blank:false, nullable:false, unique:true)
		
		tituloArtigos (blank:false, nullable:false, unique:true)
		subtituloArigos (blank:false, nullable:false, unique:true)
    }
}
