package congic_projeto

import groovy.transform.ToString;

import java.util.List;

import congic_projeto.Coordenacao;

class Organizacao {
	String cidade
	
	static hasMany = [coordenacao: Coordenacao] 
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.cidade;
	}
		
    static constraints = {
		cidade nullable:false,blanck:false
    }
	
}


	