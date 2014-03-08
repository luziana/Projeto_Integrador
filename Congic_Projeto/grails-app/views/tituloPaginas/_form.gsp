<%@ page import="congic_projeto.TituloPaginas" %>



<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloInicio', 'error')} required">
	<label for="tituloInicio">
		<g:message code="tituloPaginas.tituloInicio.label" default="Titulo Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tituloInicio" required="" value="${tituloPaginasInstance?.tituloInicio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloInicio', 'error')} required">
	<label for="subtituloInicio">
		<g:message code="tituloPaginas.subtituloInicio.label" default="Subtitulo Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subtituloInicio" required="" value="${tituloPaginasInstance?.subtituloInicio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'titulApresentacao', 'error')} required">
	<label for="titulApresentacao">
		<g:message code="tituloPaginas.titulApresentacao.label" default="Titul Apresentacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulApresentacao" required="" value="${tituloPaginasInstance?.titulApresentacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloApresentacao', 'error')} required">
	<label for="subtituloApresentacao">
		<g:message code="tituloPaginas.subtituloApresentacao.label" default="Subtitulo Apresentacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subtituloApresentacao" required="" value="${tituloPaginasInstance?.subtituloApresentacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloOrganizacao', 'error')} required">
	<label for="tituloOrganizacao">
		<g:message code="tituloPaginas.tituloOrganizacao.label" default="Titulo Organizacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tituloOrganizacao" required="" value="${tituloPaginasInstance?.tituloOrganizacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloOrganizacao', 'error')} required">
	<label for="subtituloOrganizacao">
		<g:message code="tituloPaginas.subtituloOrganizacao.label" default="Subtitulo Organizacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subtituloOrganizacao" required="" value="${tituloPaginasInstance?.subtituloOrganizacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloLocalizacao', 'error')} required">
	<label for="tituloLocalizacao">
		<g:message code="tituloPaginas.tituloLocalizacao.label" default="Titulo Localizacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tituloLocalizacao" required="" value="${tituloPaginasInstance?.tituloLocalizacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloLocalizacao', 'error')} required">
	<label for="subtituloLocalizacao">
		<g:message code="tituloPaginas.subtituloLocalizacao.label" default="Subtitulo Localizacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subtituloLocalizacao" required="" value="${tituloPaginasInstance?.subtituloLocalizacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloHospedagem', 'error')} required">
	<label for="tituloHospedagem">
		<g:message code="tituloPaginas.tituloHospedagem.label" default="Titulo Hospedagem" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tituloHospedagem" required="" value="${tituloPaginasInstance?.tituloHospedagem}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloHospedagem', 'error')} required">
	<label for="subtituloHospedagem">
		<g:message code="tituloPaginas.subtituloHospedagem.label" default="Subtitulo Hospedagem" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subtituloHospedagem" required="" value="${tituloPaginasInstance?.subtituloHospedagem}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloAreasTematicas', 'error')} required">
	<label for="tituloAreasTematicas">
		<g:message code="tituloPaginas.tituloAreasTematicas.label" default="Titulo Areas Tematicas" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tituloAreasTematicas" required="" value="${tituloPaginasInstance?.tituloAreasTematicas}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloAreasTematicas', 'error')} required">
	<label for="subtituloAreasTematicas">
		<g:message code="tituloPaginas.subtituloAreasTematicas.label" default="Subtitulo Areas Tematicas" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subtituloAreasTematicas" required="" value="${tituloPaginasInstance?.subtituloAreasTematicas}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloProgramacao', 'error')} required">
	<label for="tituloProgramacao">
		<g:message code="tituloPaginas.tituloProgramacao.label" default="Titulo Programacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tituloProgramacao" required="" value="${tituloPaginasInstance?.tituloProgramacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloProgramacao', 'error')} required">
	<label for="subtituloProgramacao">
		<g:message code="tituloPaginas.subtituloProgramacao.label" default="Subtitulo Programacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subtituloProgramacao" required="" value="${tituloPaginasInstance?.subtituloProgramacao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloArtigos', 'error')} required">
	<label for="tituloArtigos">
		<g:message code="tituloPaginas.tituloArtigos.label" default="Titulo Artigos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tituloArtigos" required="" value="${tituloPaginasInstance?.tituloArtigos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloArigos', 'error')} required">
	<label for="subtituloArigos">
		<g:message code="tituloPaginas.subtituloArigos.label" default="Subtitulo Arigos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subtituloArigos" required="" value="${tituloPaginasInstance?.subtituloArigos}"/>
</div>

