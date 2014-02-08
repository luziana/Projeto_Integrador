package projeto

import org.springframework.dao.DataIntegrityViolationException

class CoordenacaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [coordenacaoInstanceList: Coordenacao.list(params), coordenacaoInstanceTotal: Coordenacao.count()]
    }

    def create() {
        [coordenacaoInstance: new Coordenacao(params)]
    }

    def save() {
        def coordenacaoInstance = new Coordenacao(params)
        if (!coordenacaoInstance.save(flush: true)) {
            render(view: "create", model: [coordenacaoInstance: coordenacaoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'coordenacao.label', default: 'Coordenacao'), coordenacaoInstance.id])
        redirect(action: "show", id: coordenacaoInstance.id)
    }

    def show(Long id) {
        def coordenacaoInstance = Coordenacao.get(id)
        if (!coordenacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordenacao.label', default: 'Coordenacao'), id])
            redirect(action: "list")
            return
        }

        [coordenacaoInstance: coordenacaoInstance]
    }

    def edit(Long id) {
        def coordenacaoInstance = Coordenacao.get(id)
        if (!coordenacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordenacao.label', default: 'Coordenacao'), id])
            redirect(action: "list")
            return
        }

        [coordenacaoInstance: coordenacaoInstance]
    }

    def update(Long id, Long version) {
        def coordenacaoInstance = Coordenacao.get(id)
        if (!coordenacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordenacao.label', default: 'Coordenacao'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (coordenacaoInstance.version > version) {
                coordenacaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'coordenacao.label', default: 'Coordenacao')] as Object[],
                          "Another user has updated this Coordenacao while you were editing")
                render(view: "edit", model: [coordenacaoInstance: coordenacaoInstance])
                return
            }
        }

        coordenacaoInstance.properties = params

        if (!coordenacaoInstance.save(flush: true)) {
            render(view: "edit", model: [coordenacaoInstance: coordenacaoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'coordenacao.label', default: 'Coordenacao'), coordenacaoInstance.id])
        redirect(action: "show", id: coordenacaoInstance.id)
    }

    def delete(Long id) {
        def coordenacaoInstance = Coordenacao.get(id)
        if (!coordenacaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'coordenacao.label', default: 'Coordenacao'), id])
            redirect(action: "list")
            return
        }

        try {
            coordenacaoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'coordenacao.label', default: 'Coordenacao'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'coordenacao.label', default: 'Coordenacao'), id])
            redirect(action: "show", id: id)
        }
    }
}
