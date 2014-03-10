import congic_projeto.Menu
import congic_projeto.Role
import congic_projeto.User
import congic_projeto.UserRole

class BootStrap {

    def init = { servletContext ->
		
	def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
	def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
	
	def testUser = new User(username: 'lu', enable: true, password: '123')
	testUser.save(flush: true)
	
	UserRole.create testUser, adminRole, true
	
	assert User.count() == 1
	assert Role.count() == 2
	assert UserRole.count() == 1
		
    }
    def destroy = {
    }
}
