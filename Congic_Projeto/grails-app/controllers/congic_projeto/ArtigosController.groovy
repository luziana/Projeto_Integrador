package congic_projeto

import org.springframework.dao.DataIntegrityViolationException

import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
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
		//Verifica se o arquivo está vazio na edição e não sobeescreve o já existente no banco.
		if(!params.arquivo.empty){
		  if( request instanceof MultipartHttpServletRequest ) {
			 MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest )request;
			 CommonsMultipartFile file = (CommonsMultipartFile)multiRequest.getFile("arquivo");
			 artigosInstance.arquivo = file.bytes
		   }
		}
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
			def documento = Artigos.get(params.id)
			byte[] file = documento.arquivo
			response.outputStream << file
	}
	
	def artigos(){
		def artigos = Artigos.list()
		def tituloPaginas = TituloPaginas.list()
		def menu = Menu.get(1)
		render view: 'artigos', model: [tituloPaginas:tituloPaginas, artigos: artigos, menu: menu]
	}	
}
