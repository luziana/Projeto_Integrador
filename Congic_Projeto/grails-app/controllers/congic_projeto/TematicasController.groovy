package congic_projeto

import org.springframework.dao.DataIntegrityViolationException

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class TematicasController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [tematicasInstanceList: Tematicas.list(params), tematicasInstanceTotal: Tematicas.count()]
    }

    def create() {
        [tematicasInstance: new Tematicas(params)]
    }

    def save() {
        def tematicasInstance = new Tematicas(params)
        if (!tematicasInstance.save(flush: true)) {
            render(view: "create", model: [tematicasInstance: tematicasInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'tematicas.label', default: 'Tematicas'), tematicasInstance.id])
        redirect(action: "show", id: tematicasInstance.id)
    }

    def show(Long id) {
        def tematicasInstance = Tematicas.get(id)
        if (!tematicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tematicas.label', default: 'Tematicas'), id])
            redirect(action: "list")
            return
        }

        [tematicasInstance: tematicasInstance]
    }

    def edit(Long id) {
        def tematicasInstance = Tematicas.get(id)
        if (!tematicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tematicas.label', default: 'Tematicas'), id])
            redirect(action: "list")
            return
        }

        [tematicasInstance: tematicasInstance]
    }

    def update(Long id, Long version) {
        def tematicasInstance = Tematicas.get(id)
        if (!tematicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tematicas.label', default: 'Tematicas'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (tematicasInstance.version > version) {
                tematicasInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'tematicas.label', default: 'Tematicas')] as Object[],
                          "Another user has updated this Tematicas while you were editing")
                render(view: "edit", model: [tematicasInstance: tematicasInstance])
                return
            }
        }

        tematicasInstance.properties = params

        if (!tematicasInstance.save(flush: true)) {
            render(view: "edit", model: [tematicasInstance: tematicasInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'tematicas.label', default: 'Tematicas'), tematicasInstance.id])
        redirect(action: "show", id: tematicasInstance.id)
    }

    def delete(Long id) {
        def tematicasInstance = Tematicas.get(id)
        if (!tematicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'tematicas.label', default: 'Tematicas'), id])
            redirect(action: "list")
            return
        }

        try {
            tematicasInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'tematicas.label', default: 'Tematicas'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'tematicas.label', default: 'Tematicas'), id])
            redirect(action: "show", id: id)
        }
    }
			
		def tematicas() {
			def tematicas = Tematicas.list()
			def area = Area.list()
			def subarea = SubArea.list()
			def tituloPaginas = TituloPaginas.list()
		def menu = Menu.get(1)
			render view: 'tematicas', model: [area:area, subarea:subarea, tituloPaginas:tituloPaginas, tematicas: tematicas, menu: menu]

		}
}
