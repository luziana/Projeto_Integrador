package congic

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured (['ROLE_ADMIN'])

class AreasTematicasController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [areasTematicasInstanceList: AreasTematicas.list(params), areasTematicasInstanceTotal: AreasTematicas.count()]
    }

    def create() {
        [areasTematicasInstance: new AreasTematicas(params)]
    }

    def save() {
        def areasTematicasInstance = new AreasTematicas(params)
        if (!areasTematicasInstance.save(flush: true)) {
            render(view: "create", model: [areasTematicasInstance: areasTematicasInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'areasTematicas.label', default: 'AreasTematicas'), areasTematicasInstance.id])
        redirect(action: "show", id: areasTematicasInstance.id)
    }

    def show(Long id) {
        def areasTematicasInstance = AreasTematicas.get(id)
        if (!areasTematicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'areasTematicas.label', default: 'AreasTematicas'), id])
            redirect(action: "list")
            return
        }

        [areasTematicasInstance: areasTematicasInstance]
    }

    def edit(Long id) {
        def areasTematicasInstance = AreasTematicas.get(id)
        if (!areasTematicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'areasTematicas.label', default: 'AreasTematicas'), id])
            redirect(action: "list")
            return
        }

        [areasTematicasInstance: areasTematicasInstance]
    }

    def update(Long id, Long version) {
        def areasTematicasInstance = AreasTematicas.get(id)
        if (!areasTematicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'areasTematicas.label', default: 'AreasTematicas'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (areasTematicasInstance.version > version) {
                areasTematicasInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'areasTematicas.label', default: 'AreasTematicas')] as Object[],
                          "Another user has updated this AreasTematicas while you were editing")
                render(view: "edit", model: [areasTematicasInstance: areasTematicasInstance])
                return
            }
        }

        areasTematicasInstance.properties = params

        if (!areasTematicasInstance.save(flush: true)) {
            render(view: "edit", model: [areasTematicasInstance: areasTematicasInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'areasTematicas.label', default: 'AreasTematicas'), areasTematicasInstance.id])
        redirect(action: "show", id: areasTematicasInstance.id)
    }

    def delete(Long id) {
        def areasTematicasInstance = AreasTematicas.get(id)
        if (!areasTematicasInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'areasTematicas.label', default: 'AreasTematicas'), id])
            redirect(action: "list")
            return
        }

        try {
            areasTematicasInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'areasTematicas.label', default: 'AreasTematicas'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'areasTematicas.label', default: 'AreasTematicas'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def areasTematicas() {
		def areastematicas = AreasTematicas.list()
		[areastematicas: areastematicas]
		}
}
