package congic

import org.springframework.dao.DataIntegrityViolationException

class ApresentacaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [apresentacaoInstanceList: Apresentacao.list(params), apresentacaoInstanceTotal: Apresentacao.count()]
    }

    def create() {
        [apresentacaoInstance: new Apresentacao(params)]
    }

    def save() {
        def apresentacaoInstance = new Apresentacao(params)
        if (!apresentacaoInstance.save(flush: true)) {
            render(view: "create", model: [apresentacaoInstance: apresentacaoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'apresentacao.label', default: 'Apresentacao'), apresentacaoInstance.id])
        redirect(action: "show", id: apresentacaoInstance.id)
    }

    def show(Long id) {
        def apresentacaoInstance = Apresentacao.get(id)
        if (!apresentacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'apresentacao.label', default: 'Apresentacao'), id])
            redirect(action: "list")
            return
        }

        [apresentacaoInstance: apresentacaoInstance]
    }

    def edit(Long id) {
        def apresentacaoInstance = Apresentacao.get(id)
        if (!apresentacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'apresentacao.label', default: 'Apresentacao'), id])
            redirect(action: "list")
            return
        }

        [apresentacaoInstance: apresentacaoInstance]
    }

    def update(Long id, Long version) {
        def apresentacaoInstance = Apresentacao.get(id)
        if (!apresentacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'apresentacao.label', default: 'Apresentacao'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (apresentacaoInstance.version > version) {
                apresentacaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'apresentacao.label', default: 'Apresentacao')] as Object[],
                          "Another user has updated this Apresentacao while you were editing")
                render(view: "edit", model: [apresentacaoInstance: apresentacaoInstance])
                return
            }
        }

        apresentacaoInstance.properties = params

        if (!apresentacaoInstance.save(flush: true)) {
            render(view: "edit", model: [apresentacaoInstance: apresentacaoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'apresentacao.label', default: 'Apresentacao'), apresentacaoInstance.id])
        redirect(action: "show", id: apresentacaoInstance.id)
    }

    def delete(Long id) {
        def apresentacaoInstance = Apresentacao.get(id)
        if (!apresentacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'apresentacao.label', default: 'Apresentacao'), id])
            redirect(action: "list")
            return
        }

        try {
            apresentacaoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'apresentacao.label', default: 'Apresentacao'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'apresentacao.label', default: 'Apresentacao'), id])
            redirect(action: "show", id: id)
        }
    }
}
