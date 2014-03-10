package congic_projeto

import org.springframework.dao.DataIntegrityViolationException

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class ApresentacaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [apresentacao_EventoInstanceList: Apresentacao.list(params), apresentacao_EventoInstanceTotal: Apresentacao.count()]
    }

    def create() {
        [apresentacao_EventoInstance: new Apresentacao(params)]
    }

    def save() {
        def apresentacao_EventoInstance = new Apresentacao(params)
        if (!apresentacao_EventoInstance.save(flush: true)) {
            render(view: "create", model: [apresentacao_EventoInstance: apresentacao_EventoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'apresentacao_Evento.label', default: 'Apresentacao_Evento'), apresentacao_EventoInstance.id])
        redirect(action: "show", id: apresentacao_EventoInstance.id)
    }

    def show(Long id) {
        def apresentacao_EventoInstance = Apresentacao.get(id)
        if (!apresentacao_EventoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'apresentacao_Evento.label', default: 'Apresentacao_Evento'), id])
            redirect(action: "list")
            return
        }

        [apresentacao_EventoInstance: apresentacao_EventoInstance]
    }

    def edit(Long id) {
        def apresentacao_EventoInstance = Apresentacao.get(id)
        if (!apresentacao_EventoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'apresentacao_Evento.label', default: 'Apresentacao_Evento'), id])
            redirect(action: "list")
            return
        }

        [apresentacao_EventoInstance: apresentacao_EventoInstance]
    }

    def update(Long id, Long version) {
        def apresentacao_EventoInstance = Apresentacao.get(id)
        if (!apresentacao_EventoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'apresentacao_Evento.label', default: 'Apresentacao_Evento'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (apresentacao_EventoInstance.version > version) {
                apresentacao_EventoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'apresentacao_Evento.label', default: 'Apresentacao_Evento')] as Object[],
                          "Another user has updated this Apresentacao_Evento while you were editing")
                render(view: "edit", model: [apresentacao_EventoInstance: apresentacao_EventoInstance])
                return
            }
        }

        apresentacao_EventoInstance.properties = params

        if (!apresentacao_EventoInstance.save(flush: true)) {
            render(view: "edit", model: [apresentacao_EventoInstance: apresentacao_EventoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'apresentacao_Evento.label', default: 'Apresentacao_Evento'), apresentacao_EventoInstance.id])
        redirect(action: "show", id: apresentacao_EventoInstance.id)
    }

    def delete(Long id) {
        def apresentacao_EventoInstance = Apresentacao.get(id)
        if (!apresentacao_EventoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'apresentacao_Evento.label', default: 'Apresentacao_Evento'), id])
            redirect(action: "list")
            return
        }

        try {
            apresentacao_EventoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'apresentacao_Evento.label', default: 'Apresentacao_Evento'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'apresentacao_Evento.label', default: 'Apresentacao_Evento'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def apresentacao() {
		def apresentacao = Apresentacao.list()
		def tituloPaginas = TituloPaginas.list()
		def menu = Menu.get(1)
		render view: 'apresentacao', model: [apresentacao: apresentacao, tituloPaginas:tituloPaginas, menu: menu]
		
		}
}
