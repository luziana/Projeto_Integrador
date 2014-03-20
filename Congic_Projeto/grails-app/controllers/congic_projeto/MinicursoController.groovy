package congic_projeto

import org.springframework.dao.DataIntegrityViolationException

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])

class MinicursoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [minicursoInstanceList: Minicurso.list(params), minicursoInstanceTotal: Minicurso.count()]
    }

    def create() {
        [minicursoInstance: new Minicurso(params)]
    }

    def save() {
        def minicursoInstance = new Minicurso(params)
        if (!minicursoInstance.save(flush: true)) {
            render(view: "create", model: [minicursoInstance: minicursoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'minicurso.label', default: 'Minicurso'), minicursoInstance.id])
        redirect(action: "show", id: minicursoInstance.id)
    }

    def show(Long id) {
        def minicursoInstance = Minicurso.get(id)
        if (!minicursoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'minicurso.label', default: 'Minicurso'), id])
            redirect(action: "list")
            return
        }

        [minicursoInstance: minicursoInstance]
    }

    def edit(Long id) {
        def minicursoInstance = Minicurso.get(id)
        if (!minicursoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'minicurso.label', default: 'Minicurso'), id])
            redirect(action: "list")
            return
        }

        [minicursoInstance: minicursoInstance]
    }

    def update(Long id, Long version) {
        def minicursoInstance = Minicurso.get(id)
        if (!minicursoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'minicurso.label', default: 'Minicurso'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (minicursoInstance.version > version) {
                minicursoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'minicurso.label', default: 'Minicurso')] as Object[],
                          "Another user has updated this Minicurso while you were editing")
                render(view: "edit", model: [minicursoInstance: minicursoInstance])
                return
            }
        }

        minicursoInstance.properties = params

        if (!minicursoInstance.save(flush: true)) {
            render(view: "edit", model: [minicursoInstance: minicursoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'minicurso.label', default: 'Minicurso'), minicursoInstance.id])
        redirect(action: "show", id: minicursoInstance.id)
    }

    def delete(Long id) {
        def minicursoInstance = Minicurso.get(id)
        if (!minicursoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'minicurso.label', default: 'Minicurso'), id])
            redirect(action: "list")
            return
        }

        try {
            minicursoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'minicurso.label', default: 'Minicurso'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'minicurso.label', default: 'Minicurso'), id])
            redirect(action: "show", id: id)
        }
    }
}
