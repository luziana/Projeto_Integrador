package congic_projeto
import grails.converters.JSON
import groovy.json.JsonBuilder
import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class NoticiaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [noticiaInstanceList: Noticia.list(params), noticiaInstanceTotal: Noticia.count()]
    }

    def create() {
        [noticiaInstance: new Noticia(params)]
    }

    def save() {
        def noticiaInstance = new Noticia(params)
        if (!noticiaInstance.save(flush: true)) {
            render(view: "create", model: [noticiaInstance: noticiaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'noticia.label', default: 'Noticia'), noticiaInstance.id])
        redirect(action: "show", id: noticiaInstance.id)
    }

    def show(Long id) {
        def noticiaInstance = Noticia.get(id)
        if (!noticiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'noticia.label', default: 'Noticia'), id])
            redirect(action: "list")
            return
        }

        [noticiaInstance: noticiaInstance]
    }

    def edit(Long id) {
        def noticiaInstance = Noticia.get(id)
        if (!noticiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'noticia.label', default: 'Noticia'), id])
            redirect(action: "list")
            return
        }

        [noticiaInstance: noticiaInstance]
    }

    def update(Long id, Long version) {
        def noticiaInstance = Noticia.get(id)
        if (!noticiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'noticia.label', default: 'Noticia'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (noticiaInstance.version > version) {
                noticiaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'noticia.label', default: 'Noticia')] as Object[],
                          "Another user has updated this Noticia while you were editing")
                render(view: "edit", model: [noticiaInstance: noticiaInstance])
                return
            }
        }

        noticiaInstance.properties = params

        if (!noticiaInstance.save(flush: true)) {
            render(view: "edit", model: [noticiaInstance: noticiaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'noticia.label', default: 'Noticia'), noticiaInstance.id])
        redirect(action: "show", id: noticiaInstance.id)
    }

    def delete(Long id) {
        def noticiaInstance = Noticia.get(id)
        if (!noticiaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'noticia.label', default: 'Noticia'), id])
            redirect(action: "list")
            return
        }

        try {
            noticiaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'noticia.label', default: 'Noticia'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'noticia.label', default: 'Noticia'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def exibir_noticia_expandida (Long id){
		def noticias = Noticia.get(id)
		
		def menu = Menu.get(1)
		
		render(view: "exibir_noticia_expandida", model: [ menu:menu, noticias: noticias])
	}
	
	/*def busca = {
	 def criteria = Noticia.createCriteria()
	 def results = criteria.list {
			 ilike('titulo',"%"+params.titulo+"%")
	 }
	 render view:'busca',model:[results:results]
 
	 }
	
 def busca = {

 	 def results = Noticia.findAllByTituloIlike("%"+params.titulo+"%")	 
	 render (results as JSON)
	 
 }*/

	def findNoticia(){
		def noticias = Noticia.findAllByTitulo(params.titulo)
		render noticias as JSON
		//render noticias
		}
	
	
 

}
