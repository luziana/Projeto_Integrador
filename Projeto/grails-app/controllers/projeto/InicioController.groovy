package projeto

import org.springframework.dao.DataIntegrityViolationException

class InicioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [inicioInstanceList: Inicio.list(params), inicioInstanceTotal: Inicio.count()]
    }

    def create() {
        [inicioInstance: new Inicio(params)]
    }

    def save() {
        def inicioInstance = new Inicio(params)
        if (!inicioInstance.save(flush: true)) {
            render(view: "create", model: [inicioInstance: inicioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'inicio.label', default: 'Inicio'), inicioInstance.id])
        redirect(action: "show", id: inicioInstance.id)
    }

    def show(Long id) {
        def inicioInstance = Inicio.get(id)
        if (!inicioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'inicio.label', default: 'Inicio'), id])
            redirect(action: "list")
            return
        }

        [inicioInstance: inicioInstance]
    }

    def edit(Long id) {
        def inicioInstance = Inicio.get(id)
        if (!inicioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'inicio.label', default: 'Inicio'), id])
            redirect(action: "list")
            return
        }

        [inicioInstance: inicioInstance]
    }

    def update(Long id, Long version) {
        def inicioInstance = Inicio.get(id)
        if (!inicioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'inicio.label', default: 'Inicio'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (inicioInstance.version > version) {
                inicioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'inicio.label', default: 'Inicio')] as Object[],
                          "Another user has updated this Inicio while you were editing")
                render(view: "edit", model: [inicioInstance: inicioInstance])
                return
            }
        }

        inicioInstance.properties = params

        if (!inicioInstance.save(flush: true)) {
            render(view: "edit", model: [inicioInstance: inicioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'inicio.label', default: 'Inicio'), inicioInstance.id])
        redirect(action: "show", id: inicioInstance.id)
    }

    def delete(Long id) {
        def inicioInstance = Inicio.get(id)
        if (!inicioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'inicio.label', default: 'Inicio'), id])
            redirect(action: "list")
            return
        }

        try {
            inicioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'inicio.label', default: 'Inicio'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'inicio.label', default: 'Inicio'), id])
            redirect(action: "show", id: id)
        }
    }
}
