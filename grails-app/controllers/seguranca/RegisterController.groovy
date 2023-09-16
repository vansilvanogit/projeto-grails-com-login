package seguranca

import grails.validation.ValidationException
import grails.gorm.transactions.Transactional
import grails.plugin.springsecurity.annotation.Secured
import seguranca.User
import seguranca.Role
import seguranca.UserRole

@Transactional
@Secured('permitAll')
class RegisterController {

    static allowedMethods = [register: "POST"]

    @Secured('ROLE_ADMIN')
    def index() {}

    @Secured('ROLE_ADMIN')
    def register() {
        if(!params.password.equals(params.repassword)) {
            flash.message = "A senha e a confirmação são diferentes"
            redirect action: "index"
            return
        } else {
            try {
                def user = User.findByUsername(params.username)?: new User(username: params.username, password: params.password, fullname: params.fullname).save()
                def role = Role.get(params.role.id)
                if(user && role) {
                    UserRole.create user, role

                    UserRole.withSession {
                        it.flush()
                        it.clear()
                    }

                    flash.message = "Cadastro realizado com sucesso! Faça login."
                    redirect controller: "login", action: "auth"
                } else {
                    flash.message = "Falha no cadastro"
                    render view: "index"
                    return
                }
            } catch (ValidationException e) {
                flash.message = "Falha no cadastro"
                redirect action: "index"
                return
            }
        }
    }
}
