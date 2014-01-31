import projeto.Login

class BootStrap {

    def init = { servletContext ->
def login = new Login(login: "lu", senha: '123')
login.save()
    }
    def destroy = {
    }
}