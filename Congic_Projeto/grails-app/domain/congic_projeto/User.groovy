package congic_projeto

class User {
   	
		String username
		String password

    static constraints = {
		username nullable: false, blank: false
		password nullable: false, blank: false, password: true
    }
}
