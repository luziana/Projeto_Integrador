
package congic_projeto

class User {

String lionname
String username
String password



    static constraints = {
lionname nullable: false, blank: false, unique: true
username nullable: false, blank: false
password nullable: false, blank: false, password: true
    }

}