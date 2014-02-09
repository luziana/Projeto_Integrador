package congic

class Organizacao {

String equipe
List <Coordenacao> coordenacaoPf
List <Coordenacao> coordenacaoNatal

    static constraints = {
equipe nullable:false,blanck:false,unique:true
coordenacaoPf nullable:false,blank:false
coordenacaoNatal nullable:false,blank:false
    }
}