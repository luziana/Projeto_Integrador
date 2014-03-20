package congic_projeto
import grails.converters.*
import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured


import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])

class CidadeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [cidadeInstanceList: Cidade.list(params), cidadeInstanceTotal: Cidade.count()]
    }

    def create() {
        [cidadeInstance: new Cidade(params)]
    }

    def save() {
        def cidadeInstance = new Cidade(params)
        if (!cidadeInstance.save(flush: true)) {
            render(view: "create", model: [cidadeInstance: cidadeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'cidade.label', default: 'Cidade'), cidadeInstance.id])
        redirect(action: "show", id: cidadeInstance.id)
    }

    def show(Long id) {
        def cidadeInstance = Cidade.get(id)
        if (!cidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cidade.label', default: 'Cidade'), id])
            redirect(action: "list")
            return
        }

        [cidadeInstance: cidadeInstance]
    }

    def edit(Long id) {
        def cidadeInstance = Cidade.get(id)
        if (!cidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cidade.label', default: 'Cidade'), id])
            redirect(action: "list")
            return
        }

        [cidadeInstance: cidadeInstance]
    }

    def update(Long id, Long version) {
        def cidadeInstance = Cidade.get(id)
        if (!cidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cidade.label', default: 'Cidade'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (cidadeInstance.version > version) {
                cidadeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'cidade.label', default: 'Cidade')] as Object[],
                          "Another user has updated this Cidade while you were editing")
                render(view: "edit", model: [cidadeInstance: cidadeInstance])
                return
            }
        }

        cidadeInstance.properties = params

        if (!cidadeInstance.save(flush: true)) {
            render(view: "edit", model: [cidadeInstance: cidadeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'cidade.label', default: 'Cidade'), cidadeInstance.id])
        redirect(action: "show", id: cidadeInstance.id)
    }

    def delete(Long id) {
        def cidadeInstance = Cidade.get(id)
        if (!cidadeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cidade.label', default: 'Cidade'), id])
            redirect(action: "list")
            return
        }

        try {
            cidadeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'cidade.label', default: 'Cidade'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'cidade.label', default: 'Cidade'), id])
            redirect(action: "show", id: id)
        }
    }
	def capturar_cidade={
		def cidades = Cidade.get(params.id)
		render (cidades as JSON)
	}
}
