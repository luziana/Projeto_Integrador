package congic

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured (['ROLE_ADMIN'])

class AreasTematicasController {

	static scaffold = true
	
	def areasTematicas() {
		def areastematicas = AreasTematicas.list()
		[areastematicas: areastematicas]
		}
}
