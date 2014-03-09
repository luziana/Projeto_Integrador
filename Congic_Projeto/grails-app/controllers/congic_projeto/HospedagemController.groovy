package congic_projeto

import org.springframework.dao.DataIntegrityViolationException

class HospedagemController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [hospedagemInstanceList: Hospedagem.list(params), hospedagemInstanceTotal: Hospedagem.count()]
    }

    def create() {
        [hospedagemInstance: new Hospedagem(params)]
    }

    def save() {
        def hospedagemInstance = new Hospedagem(params)
        if (!hospedagemInstance.save(flush: true)) {
            render(view: "create", model: [hospedagemInstance: hospedagemInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'hospedagem.label', default: 'Hospedagem'), hospedagemInstance.id])
        redirect(action: "show", id: hospedagemInstance.id)
    }

    def show(Long id) {
        def hospedagemInstance = Hospedagem.get(id)
        if (!hospedagemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hospedagem.label', default: 'Hospedagem'), id])
            redirect(action: "list")
            return
        }

        [hospedagemInstance: hospedagemInstance]
    }

    def edit(Long id) {
        def hospedagemInstance = Hospedagem.get(id)
        if (!hospedagemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hospedagem.label', default: 'Hospedagem'), id])
            redirect(action: "list")
            return
        }

        [hospedagemInstance: hospedagemInstance]
    }

    def update(Long id, Long version) {
        def hospedagemInstance = Hospedagem.get(id)
        if (!hospedagemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hospedagem.label', default: 'Hospedagem'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (hospedagemInstance.version > version) {
                hospedagemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'hospedagem.label', default: 'Hospedagem')] as Object[],
                          "Another user has updated this Hospedagem while you were editing")
                render(view: "edit", model: [hospedagemInstance: hospedagemInstance])
                return
            }
        }

        hospedagemInstance.properties = params

        if (!hospedagemInstance.save(flush: true)) {
            render(view: "edit", model: [hospedagemInstance: hospedagemInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'hospedagem.label', default: 'Hospedagem'), hospedagemInstance.id])
        redirect(action: "show", id: hospedagemInstance.id)
    }

    def delete(Long id) {
        def hospedagemInstance = Hospedagem.get(id)
        if (!hospedagemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'hospedagem.label', default: 'Hospedagem'), id])
            redirect(action: "list")
            return
        }

        try {
            hospedagemInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'hospedagem.label', default: 'Hospedagem'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'hospedagem.label', default: 'Hospedagem'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def hospedagem() {
		def hospedagem = Hospedagem.list()
		def tituloPaginas = TituloPaginas.list()
		def menu = Menu.get(1)
		render view: 'hospedagem', model: [tituloPaginas:tituloPaginas, hospedagem:hospedagem, menu: menu]
		}
}
