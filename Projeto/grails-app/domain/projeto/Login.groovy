package projeto

class Login {
		String login
		String senha
		
    static constraints = {
		login blank: false, nullable: false, unique: true
		senha blank: false, nullable: false, password: true
    }
}
