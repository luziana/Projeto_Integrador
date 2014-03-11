package congic_projeto

import org.springframework.dao.DataIntegrityViolationException

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])

class SubAreaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [subAreaInstanceList: SubArea.list(params), subAreaInstanceTotal: SubArea.count()]
    }

    def create() {
        [subAreaInstance: new SubArea(params)]
    }

    def save() {
        def subAreaInstance = new SubArea(params)
        if (!subAreaInstance.save(flush: true)) {
            render(view: "create", model: [subAreaInstance: subAreaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'subArea.label', default: 'SubArea'), subAreaInstance.id])
        redirect(action: "show", id: subAreaInstance.id)
    }

    def show(Long id) {
        def subAreaInstance = SubArea.get(id)
        if (!subAreaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'subArea.label', default: 'SubArea'), id])
            redirect(action: "list")
            return
        }

        [subAreaInstance: subAreaInstance]
    }

    def edit(Long id) {
        def subAreaInstance = SubArea.get(id)
        if (!subAreaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'subArea.label', default: 'SubArea'), id])
            redirect(action: "list")
            return
        }

        [subAreaInstance: subAreaInstance]
    }

    def update(Long id, Long version) {
        def subAreaInstance = SubArea.get(id)
        if (!subAreaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'subArea.label', default: 'SubArea'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (subAreaInstance.version > version) {
                subAreaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'subArea.label', default: 'SubArea')] as Object[],
                          "Another user has updated this SubArea while you were editing")
                render(view: "edit", model: [subAreaInstance: subAreaInstance])
                return
            }
        }

        subAreaInstance.properties = params

        if (!subAreaInstance.save(flush: true)) {
            render(view: "edit", model: [subAreaInstance: subAreaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'subArea.label', default: 'SubArea'), subAreaInstance.id])
        redirect(action: "show", id: subAreaInstance.id)
    }

    def delete(Long id) {
        def subAreaInstance = SubArea.get(id)
        if (!subAreaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'subArea.label', default: 'SubArea'), id])
            redirect(action: "list")
            return
        }

        try {
            subAreaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'subArea.label', default: 'SubArea'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'subArea.label', default: 'SubArea'), id])
            redirect(action: "show", id: id)
        }
    }
}
