package congic_projeto

import org.springframework.dao.DataIntegrityViolationException

class TituloPaginasController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [tituloPaginasInstanceList: TituloPaginas.list(params), tituloPaginasInstanceTotal: TituloPaginas.count()]
    }

    def create() {
        [tituloPaginasInstance: new TituloPaginas(params)]
    }

    def save() {
        def tituloPaginasInstance = new TituloPaginas(params)
        if (!tituloPaginasInstance.save(flush: true)) {
            render(view: "create", model: [tituloPaginasInstance: tituloPaginasInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'tituloPaginas.label', default: 'TituloPaginas'), tituloPaginasInstance.id])
        redirect(action: "show", id: tituloPaginasInstance.id)
    }

    def show(Long id) {
        def tituloPaginasInstance = TituloPaginas.get(id)
        if (!tituloPaginasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tituloPaginas.label', default: 'TituloPaginas'), id])
            redirect(action: "list")
            return
        }

        [tituloPaginasInstance: tituloPaginasInstance]
    }

    def edit(Long id) {
        def tituloPaginasInstance = TituloPaginas.get(id)
        if (!tituloPaginasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tituloPaginas.label', default: 'TituloPaginas'), id])
            redirect(action: "list")
            return
        }

        [tituloPaginasInstance: tituloPaginasInstance]
    }

    def update(Long id, Long version) {
        def tituloPaginasInstance = TituloPaginas.get(id)
        if (!tituloPaginasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tituloPaginas.label', default: 'TituloPaginas'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tituloPaginasInstance.version > version) {
                tituloPaginasInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'tituloPaginas.label', default: 'TituloPaginas')] as Object[],
                          "Another user has updated this TituloPaginas while you were editing")
                render(view: "edit", model: [tituloPaginasInstance: tituloPaginasInstance])
                return
            }
        }

        tituloPaginasInstance.properties = params

        if (!tituloPaginasInstance.save(flush: true)) {
            render(view: "edit", model: [tituloPaginasInstance: tituloPaginasInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'tituloPaginas.label', default: 'TituloPaginas'), tituloPaginasInstance.id])
        redirect(action: "show", id: tituloPaginasInstance.id)
    }

    def delete(Long id) {
        def tituloPaginasInstance = TituloPaginas.get(id)
        if (!tituloPaginasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tituloPaginas.label', default: 'TituloPaginas'), id])
            redirect(action: "list")
            return
        }

        try {
            tituloPaginasInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'tituloPaginas.label', default: 'TituloPaginas'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tituloPaginas.label', default: 'TituloPaginas'), id])
            redirect(action: "show", id: id)
        }
    }
	
}
