package congic_projeto

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
		render(view: "exibir_noticia_expandida", model: [noticias: noticias])
		
		
	}
	
<<<<<<< HEAD
/*	def busca = {
		def noticias = Noticia.findAllByTitulo("%${params.titulo}%")
	  
		render(contentType: "text/xml") {
		   exibir_noticia_expandida() {
			  noticias.each {
				 noticia -> exibir_noticia_expandida() {
					id(noticia.id)
					titulo(noticia.titulo)
					descricao(noticia.descricao)
				 }
			  }
		   }
		}
	 }*/
	def home(Long id) {
		def noticias = Noticia.get(id)
		render(view: "home", model: [noticias: noticias])
		}
	
=======
	//def busca = {
	//def noticias = Noticia.findAllByTituloIlike("%${params.titulo}%")
  
	//render(contentType: "text/xml") {
	  // results() {
		//  noticias.each {
			// noticia -> result() {
				//id(noticia.id)
				//titulo(noticia.titulo)
			// }
		 // }
	  // }
//	}
// }

def inicio() {
	def noticias = Noticia.list()
	[noticias: noticias]
	}
>>>>>>> 9eadc32cfbba7695bac7930a811cfc362f8be94f
}
