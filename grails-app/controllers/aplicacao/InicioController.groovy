package aplicacao

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured

class InicioController {

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index() {
        render(view: "index")
    }

//    InicioService inicioService
//
//    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
//
//    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
//    def index(Integer max) {
//        params.max = Math.min(max ?: 10, 100)
//        respond inicioService.list(params), model:[inicioCount: inicioService.count()]
//    }
//
//    def show(Long id) {
//        respond inicioService.get(id)
//    }
//
//    def create() {
//        respond new Inicio(params)
//    }
//
//    def save(Inicio inicio) {
//        if (inicio == null) {
//            notFound()
//            return
//        }
//
//        try {
//            inicioService.save(inicio)
//        } catch (ValidationException e) {
//            respond inicio.errors, view:'create'
//            return
//        }
//
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.created.message', args: [message(code: 'inicio.label', default: 'Inicio'), inicio.id])
//                redirect inicio
//            }
//            '*' { respond inicio, [status: CREATED] }
//        }
//    }
//
//    def edit(Long id) {
//        respond inicioService.get(id)
//    }
//
//    def update(Inicio inicio) {
//        if (inicio == null) {
//            notFound()
//            return
//        }
//
//        try {
//            inicioService.save(inicio)
//        } catch (ValidationException e) {
//            respond inicio.errors, view:'edit'
//            return
//        }
//
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.updated.message', args: [message(code: 'inicio.label', default: 'Inicio'), inicio.id])
//                redirect inicio
//            }
//            '*'{ respond inicio, [status: OK] }
//        }
//    }
//
//    def delete(Long id) {
//        if (id == null) {
//            notFound()
//            return
//        }
//
//        inicioService.delete(id)
//
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.deleted.message', args: [message(code: 'inicio.label', default: 'Inicio'), id])
//                redirect action:"index", method:"GET"
//            }
//            '*'{ render status: NO_CONTENT }
//        }
//    }
//
//    protected void notFound() {
//        request.withFormat {
//            form multipartForm {
//                flash.message = message(code: 'default.not.found.message', args: [message(code: 'inicio.label', default: 'Inicio'), params.id])
//                redirect action: "index", method: "GET"
//            }
//            '*'{ render status: NOT_FOUND }
//        }
//    }
}
