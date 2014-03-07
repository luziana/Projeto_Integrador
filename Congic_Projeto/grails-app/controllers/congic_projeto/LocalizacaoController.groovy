package congic_projeto

import org.springframework.dao.DataIntegrityViolationException

class LocalizacaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [localizacaoInstanceList: Localizacao.list(params), localizacaoInstanceTotal: Localizacao.count()]
    }

    def create() {
        [localizacaoInstance: new Localizacao(params)]
    }

    def save() {
        def localizacaoInstance = new Localizacao(params)
        if (!localizacaoInstance.save(flush: true)) {
            render(view: "create", model: [localizacaoInstance: localizacaoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'localizacao.label', default: 'Localizacao'), localizacaoInstance.id])
        redirect(action: "show", id: localizacaoInstance.id)
    }

    def show(Long id) {
        def localizacaoInstance = Localizacao.get(id)
        if (!localizacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'localizacao.label', default: 'Localizacao'), id])
            redirect(action: "list")
            return
        }

        [localizacaoInstance: localizacaoInstance]
    }

    def edit(Long id) {
        def localizacaoInstance = Localizacao.get(id)
        if (!localizacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'localizacao.label', default: 'Localizacao'), id])
            redirect(action: "list")
            return
        }

        [localizacaoInstance: localizacaoInstance]
    }

    def update(Long id, Long version) {
        def localizacaoInstance = Localizacao.get(id)
        if (!localizacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'localizacao.label', default: 'Localizacao'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (localizacaoInstance.version > version) {
                localizacaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'localizacao.label', default: 'Localizacao')] as Object[],
                          "Another user has updated this Localizacao while you were editing")
                render(view: "edit", model: [localizacaoInstance: localizacaoInstance])
                return
            }
        }

        localizacaoInstance.properties = params

        if (!localizacaoInstance.save(flush: true)) {
            render(view: "edit", model: [localizacaoInstance: localizacaoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'localizacao.label', default: 'Localizacao'), localizacaoInstance.id])
        redirect(action: "show", id: localizacaoInstance.id)
    }

    def delete(Long id) {
        def localizacaoInstance = Localizacao.get(id)
        if (!localizacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'localizacao.label', default: 'Localizacao'), id])
            redirect(action: "list")
            return
        }

        try {
            localizacaoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'localizacao.label', default: 'Localizacao'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'localizacao.label', default: 'Localizacao'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def index(){
		def localizacao = Localizacao.list()
		
		def menu = Menu.get(1)
		render view: 'index', model: [localizacao : localizacao, menu: menu]
	}
}	

