package congic_projeto

import org.springframework.dao.DataIntegrityViolationException

import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile


class ArtigosController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [artigosInstanceList: Artigos.list(params), artigosInstanceTotal: Artigos.count()]
    }

    def create() {
        [artigosInstance: new Artigos(params)]
    }

    def save() {
        def artigosInstance = new Artigos(params)
        if (!artigosInstance.save(flush: true)) {
            render(view: "create", model: [artigosInstance: artigosInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'artigos.label', default: 'Artigos'), artigosInstance.id])
        redirect(action: "show", id: artigosInstance.id)
    }

    def show(Long id) {
        def artigosInstance = Artigos.get(id)
        if (!artigosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'artigos.label', default: 'Artigos'), id])
            redirect(action: "list")
            return
        }

        [artigosInstance: artigosInstance]
    }

    def edit(Long id) {
        def artigosInstance = Artigos.get(id)
        if (!artigosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'artigos.label', default: 'Artigos'), id])
            redirect(action: "list")
            return
        }

        [artigosInstance: artigosInstance]
    }

    def update(Long id, Long version) {
        def artigosInstance = Artigos.get(id)
        if (!artigosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'artigos.label', default: 'Artigos'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (artigosInstance.version > version) {
                artigosInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'artigos.label', default: 'Artigos')] as Object[],
                          "Another user has updated this Artigos while you were editing")
                render(view: "edit", model: [artigosInstance: artigosInstance])
                return
            }
        }
		//Verifica se o arquivo está vazio na edição e não sobeescreve o já existente no banco.
		if(!params.arquivo.empty){
		  if( request instanceof MultipartHttpServletRequest ) {
			 MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest )request;
			 CommonsMultipartFile file = (CommonsMultipartFile)multiRequest.getFile("arquivo");
			 objetoInstance.arquivo = file.bytes
		   }
		}

        artigosInstance.properties = params

        if (!artigosInstance.save(flush: true)) {
            render(view: "edit", model: [artigosInstance: artigosInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'artigos.label', default: 'Artigos'), artigosInstance.id])
        redirect(action: "show", id: artigosInstance.id)
    }

    def delete(Long id) {
        def artigosInstance = Artigos.get(id)
        if (!artigosInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'artigos.label', default: 'Artigos'), id])
            redirect(action: "list")
            return
        }

        try {
            artigosInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'artigos.label', default: 'Artigos'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'artigos.label', default: 'Artigos'), id])
            redirect(action: "show", id: id)
        }
    }
	def download = {
		def arquivoDownload = Objeto.get( params.id )
		  byte[] arquivo = arquivoDownload.arquivo
		  response.outputStream << arquivo
	  }
}
