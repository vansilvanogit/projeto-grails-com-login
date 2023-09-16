package modeloaplicacao

import grails.gorm.transactions.Transactional

class BootStrap {

//    def init = { servletContext ->
//        new Role(authority: 'ROLE_ADMIN').save()
//        new Role(authority: 'ROLE_USER').save()
//        new Inicio(nomeInicio: 'xxxxx', idadeInicio: '30')
//    }
//    def destroy = {
//    }


    def init = {
        addTestAdmin()
        addTestUser()
    }

    @Transactional
    void addTestAdmin() {
        def adminRole = new seguranca.Role(authority: "ROLE_ADMIN").save()
        def testUser = new seguranca.User(username: "admin", password: "12345", fullname: "Derivan da Silva").save()

        seguranca.UserRole.create testUser, adminRole
        seguranca.UserRole.withSession {
            it.flush()
            it.clear()
        }
    }

    @Transactional
    void addTestUser() {
        def usuarioRole = new seguranca.Role(authority: "ROLE_USER").save()
        def testUsuario = new seguranca.User(username: "usuario", password: "12345", fullname: "Usuáio Simples").save()

        seguranca.UserRole.create testUsuario, usuarioRole
        seguranca.UserRole.withSession {
            it.flush()
            it.clear()
        }
        assert seguranca.User.count() == 2
        assert seguranca.Role.count() == 2
        assert seguranca.UserRole.count() == 2
    }
}
