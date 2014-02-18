package congic_projeto

import org.springframework.dao.DataIntegrityViolationException

class Areas_TematicasController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [areas_TematicasInstanceList: Areas_Tematicas.list(params), areas_TematicasInstanceTotal: Areas_Tematicas.count()]
    }

    def create() {
        [areas_TematicasInstance: new Areas_Tematicas(params)]
    }

    def save() {
        def areas_TematicasInstance = new Areas_Tematicas(params)
        if (!areas_TematicasInstance.save(flush: true)) {
            render(view: "create", model: [areas_TematicasInstance: areas_TematicasInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'areas_Tematicas.label', default: 'Areas_Tematicas'), areas_TematicasInstance.id])
        redirect(action: "show", id: areas_TematicasInstance.id)
    }

    def show(Long id) {
        def areas_TematicasInstance = Areas_Tematicas.get(id)
        if (!areas_TematicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'areas_Tematicas.label', default: 'Areas_Tematicas'), id])
            redirect(action: "list")
            return
        }

        [areas_TematicasInstance: areas_TematicasInstance]
    }

    def edit(Long id) {
        def areas_TematicasInstance = Areas_Tematicas.get(id)
        if (!areas_TematicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'areas_Tematicas.label', default: 'Areas_Tematicas'), id])
            redirect(action: "list")
            return
        }

        [areas_TematicasInstance: areas_TematicasInstance]
    }

    def update(Long id, Long version) {
        def areas_TematicasInstance = Areas_Tematicas.get(id)
        if (!areas_TematicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'areas_Tematicas.label', default: 'Areas_Tematicas'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (areas_TematicasInstance.version > version) {
                areas_TematicasInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'areas_Tematicas.label', default: 'Areas_Tematicas')] as Object[],
                          "Another user has updated this Areas_Tematicas while you were editing")
                render(view: "edit", model: [areas_TematicasInstance: areas_TematicasInstance])
                return
            }
        }

        areas_TematicasInstance.properties = params

        if (!areas_TematicasInstance.save(flush: true)) {
            render(view: "edit", model: [areas_TematicasInstance: areas_TematicasInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'areas_Tematicas.label', default: 'Areas_Tematicas'), areas_TematicasInstance.id])
        redirect(action: "show", id: areas_TematicasInstance.id)
    }

    def delete(Long id) {
        def areas_TematicasInstance = Areas_Tematicas.get(id)
        if (!areas_TematicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'areas_Tematicas.label', default: 'Areas_Tematicas'), id])
            redirect(action: "list")
            return
        }

        try {
            areas_TematicasInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'areas_Tematicas.label', default: 'Areas_Tematicas'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'areas_Tematicas.label', default: 'Areas_Tematicas'), id])
            redirect(action: "show", id: id)
        }
    }
}
