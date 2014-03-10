package congic_projeto
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class SecureController {

     def index = {
      render view: "/index"
   }
	 
}
