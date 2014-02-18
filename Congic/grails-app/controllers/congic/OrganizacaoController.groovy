package congic

import org.springframework.dao.DataIntegrityViolationException

class OrganizacaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [organizacaoInstanceList: Organizacao.list(params), organizacaoInstanceTotal: Organizacao.count()]
    }

    def create() {
        [organizacaoInstance: new Organizacao(params)]
    }

    def save() {
        def organizacaoInstance = new Organizacao(params)
        if (!organizacaoInstance.save(flush: true)) {
            render(view: "create", model: [organizacaoInstance: organizacaoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'organizacao.label', default: 'Organizacao'), organizacaoInstance.id])
        redirect(action: "show", id: organizacaoInstance.id)
    }

    def show(Long id) {
        def organizacaoInstance = Organizacao.get(id)
        if (!organizacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'organizacao.label', default: 'Organizacao'), id])
            redirect(action: "list")
            return
        }

        [organizacaoInstance: organizacaoInstance]
    }

    def edit(Long id) {
        def organizacaoInstance = Organizacao.get(id)
        if (!organizacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'organizacao.label', default: 'Organizacao'), id])
            redirect(action: "list")
            return
        }

        [organizacaoInstance: organizacaoInstance]
    }

    def update(Long id, Long version) {
        def organizacaoInstance = Organizacao.get(id)
        if (!organizacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'organizacao.label', default: 'Organizacao'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (organizacaoInstance.version > version) {
                organizacaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'organizacao.label', default: 'Organizacao')] as Object[],
                          "Another user has updated this Organizacao while you were editing")
                render(view: "edit", model: [organizacaoInstance: organizacaoInstance])
                return
            }
        }

        organizacaoInstance.properties = params

        if (!organizacaoInstance.save(flush: true)) {
            render(view: "edit", model: [organizacaoInstance: organizacaoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'organizacao.label', default: 'Organizacao'), organizacaoInstance.id])
        redirect(action: "show", id: organizacaoInstance.id)
    }

    def delete(Long id) {
        def organizacaoInstance = Organizacao.get(id)
        if (!organizacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'organizacao.label', default: 'Organizacao'), id])
            redirect(action: "list")
            return
        }

        try {
            organizacaoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'organizacao.label', default: 'Organizacao'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'organizacao.label', default: 'Organizacao'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def organizacao() {
		def organizacao = Apresentacao.list()
		[organizacao: organizacao]
		}
}
