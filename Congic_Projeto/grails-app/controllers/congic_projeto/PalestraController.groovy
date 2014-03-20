package congic_projeto

import org.springframework.dao.DataIntegrityViolationException

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])

class PalestraController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [palestraInstanceList: Palestra.list(params), palestraInstanceTotal: Palestra.count()]
    }

    def create() {
        [palestraInstance: new Palestra(params)]
    }

    def save() {
        def palestraInstance = new Palestra(params)
        if (!palestraInstance.save(flush: true)) {
            render(view: "create", model: [palestraInstance: palestraInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'palestra.label', default: 'Palestra'), palestraInstance.id])
        redirect(action: "show", id: palestraInstance.id)
    }

    def show(Long id) {
        def palestraInstance = Palestra.get(id)
        if (!palestraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'palestra.label', default: 'Palestra'), id])
            redirect(action: "list")
            return
        }

        [palestraInstance: palestraInstance]
    }

    def edit(Long id) {
        def palestraInstance = Palestra.get(id)
        if (!palestraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'palestra.label', default: 'Palestra'), id])
            redirect(action: "list")
            return
        }

        [palestraInstance: palestraInstance]
    }

    def update(Long id, Long version) {
        def palestraInstance = Palestra.get(id)
        if (!palestraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'palestra.label', default: 'Palestra'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (palestraInstance.version > version) {
                palestraInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'palestra.label', default: 'Palestra')] as Object[],
                          "Another user has updated this Palestra while you were editing")
                render(view: "edit", model: [palestraInstance: palestraInstance])
                return
            }
        }

        palestraInstance.properties = params

        if (!palestraInstance.save(flush: true)) {
            render(view: "edit", model: [palestraInstance: palestraInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'palestra.label', default: 'Palestra'), palestraInstance.id])
        redirect(action: "show", id: palestraInstance.id)
    }

    def delete(Long id) {
        def palestraInstance = Palestra.get(id)
        if (!palestraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'palestra.label', default: 'Palestra'), id])
            redirect(action: "list")
            return
        }

        try {
            palestraInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'palestra.label', default: 'Palestra'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'palestra.label', default: 'Palestra'), id])
            redirect(action: "show", id: id)
        }
    }
}
