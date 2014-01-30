package projeto

class UserController {

    def index= { }
	
	def login = {
		if(params.username=="admin" && params.password =="pass"){
			flash.message = "login succeed"
			session.user = "admin"
		}else{
			flash.message = "login failed"
		}
		
		redirect(action:'index')
	}
	
	def logout = {
		session.user = null
		redirect(action:'index')
	}
	
}