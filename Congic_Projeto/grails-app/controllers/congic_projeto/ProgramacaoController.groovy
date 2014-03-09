package congic_projeto

import org.springframework.dao.DataIntegrityViolationException

class ProgramacaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [programacaoInstanceList: Programacao.list(params), programacaoInstanceTotal: Programacao.count()]
    }

    def create() {
        [programacaoInstance: new Programacao(params)]
    }

    def save() {
        def programacaoInstance = new Programacao(params)
        if (!programacaoInstance.save(flush: true)) {
            render(view: "create", model: [programacaoInstance: programacaoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'programacao.label', default: 'Programacao'), programacaoInstance.id])
        redirect(action: "show", id: programacaoInstance.id)
    }

    def show(Long id) {
        def programacaoInstance = Programacao.get(id)
        if (!programacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'programacao.label', default: 'Programacao'), id])
            redirect(action: "list")
            return
        }

        [programacaoInstance: programacaoInstance]
    }

    def edit(Long id) {
        def programacaoInstance = Programacao.get(id)
        if (!programacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'programacao.label', default: 'Programacao'), id])
            redirect(action: "list")
            return
        }

        [programacaoInstance: programacaoInstance]
    }

    def update(Long id, Long version) {
        def programacaoInstance = Programacao.get(id)
        if (!programacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'programacao.label', default: 'Programacao'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (programacaoInstance.version > version) {
                programacaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'programacao.label', default: 'Programacao')] as Object[],
                          "Another user has updated this Programacao while you were editing")
                render(view: "edit", model: [programacaoInstance: programacaoInstance])
                return
            }
        }

        programacaoInstance.properties = params

        if (!programacaoInstance.save(flush: true)) {
            render(view: "edit", model: [programacaoInstance: programacaoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'programacao.label', default: 'Programacao'), programacaoInstance.id])
        redirect(action: "show", id: programacaoInstance.id)
    }

    def delete(Long id) {
        def programacaoInstance = Programacao.get(id)
        if (!programacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'programacao.label', default: 'Programacao'), id])
            redirect(action: "list")
            return
        }

        try {
            programacaoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'programacao.label', default: 'Programacao'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'programacao.label', default: 'Programacao'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def programacao() {
		def programacoes = Programacao.list()
		def tituloPaginas = TituloPaginas.list()
		def menu = Menu.get(1)
		render view: 'programacao', model: [tituloPaginas:tituloPaginas, programacoes: programacoes, menu: menu]
		}
}
