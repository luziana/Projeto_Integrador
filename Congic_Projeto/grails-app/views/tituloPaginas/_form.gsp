<%@ page import="congic_projeto.TituloPaginas" %>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloInicio', 'error')} required">
	<label for="tituloInicio">
		<g:message code="tituloPaginas.tituloInicio.label" default="Título da Página Principal: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="tituloInicio" required="" value="${tituloPaginasInstance?.tituloInicio}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloInicio', 'error')} required">
	<label for="subtituloInicio">
		<g:message code="tituloPaginas.subtituloInicio.label" default="Subtítulo da Página Principal: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="subtituloInicio" required="" value="${tituloPaginasInstance?.subtituloInicio}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'titulApresentacao', 'error')} required">
	<label for="titulApresentacao">
		<g:message code="tituloPaginas.titulApresentacao.label" default="Título da Página Apresentação: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="titulApresentacao" required="" value="${tituloPaginasInstance?.titulApresentacao}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloApresentacao', 'error')} required">
	<label for="subtituloApresentacao">
		<g:message code="tituloPaginas.subtituloApresentacao.label" default="Subtítulo da Página Apresentação: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="subtituloApresentacao" required="" value="${tituloPaginasInstance?.subtituloApresentacao}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloOrganizacao', 'error')} required">
	<label for="tituloOrganizacao">
		<g:message code="tituloPaginas.tituloOrganizacao.label" default="Título da Página Organização: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="tituloOrganizacao" required="" value="${tituloPaginasInstance?.tituloOrganizacao}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloOrganizacao', 'error')} required">
	<label for="subtituloOrganizacao">
		<g:message code="tituloPaginas.subtituloOrganizacao.label" default="Subtítulo da Página Organização: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="subtituloOrganizacao" required="" value="${tituloPaginasInstance?.subtituloOrganizacao}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloLocalizacao', 'error')} required">
	<label for="tituloLocalizacao">
		<g:message code="tituloPaginas.tituloLocalizacao.label" default="Título da Página Localização: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="tituloLocalizacao" required="" value="${tituloPaginasInstance?.tituloLocalizacao}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloLocalizacao', 'error')} required">
	<label for="subtituloLocalizacao">
		<g:message code="tituloPaginas.subtituloLocalizacao.label" default="Subtítulo da Página Localização: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="subtituloLocalizacao" required="" value="${tituloPaginasInstance?.subtituloLocalizacao}"/>
</div>

<div c class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloHospedagem', 'error')} required">
	<label for="tituloHospedagem">
		<g:message code="tituloPaginas.tituloHospedagem.label" default="Título da Página Hospedagem: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="tituloHospedagem" required="" value="${tituloPaginasInstance?.tituloHospedagem}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloHospedagem', 'error')} required">
	<label for="subtituloHospedagem">
		<g:message code="tituloPaginas.subtituloHospedagem.label" default="Subtítulo da Página Hospedagem: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="subtituloHospedagem" required="" value="${tituloPaginasInstance?.subtituloHospedagem}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloAreasTematicas', 'error')} required">
	<label for="tituloAreasTematicas">
		<g:message code="tituloPaginas.tituloAreasTematicas.label" default="Título da Página Áreas Temáticas: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="tituloAreasTematicas" required="" value="${tituloPaginasInstance?.tituloAreasTematicas}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloAreasTematicas', 'error')} required">
	<label for="subtituloAreasTematicas">
		<g:message code="tituloPaginas.subtituloAreasTematicas.label" default="Subtítulo da Página Áreas Tematicas: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="subtituloAreasTematicas" required="" value="${tituloPaginasInstance?.subtituloAreasTematicas}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloProgramacao', 'error')} required">
	<label for="tituloProgramacao">
		<g:message code="tituloPaginas.tituloProgramacao.label" default="Título da Página Programação: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="tituloProgramacao" required="" value="${tituloPaginasInstance?.tituloProgramacao}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloProgramacao', 'error')} required">
	<label for="subtituloProgramacao">
		<g:message code="tituloPaginas.subtituloProgramacao.label" default="Subtítulo da Página Programação: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="subtituloProgramacao" required="" value="${tituloPaginasInstance?.subtituloProgramacao}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'tituloArtigos', 'error')} required">
	<label for="tituloArtigos">
		<g:message code="tituloPaginas.tituloArtigos.label" default="Título da Página Artigos: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="tituloArtigos" required="" value="${tituloPaginasInstance?.tituloArtigos}"/>
</div>

<div  class="form-group fieldcontain ${hasErrors(bean: tituloPaginasInstance, field: 'subtituloArigos', 'error')} required">
	<label for="subtituloArigos">
		<g:message code="tituloPaginas.subtituloArigos.label" default="Subtítulo da Página Artigos: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="subtituloArigos" required="" value="${tituloPaginasInstance?.subtituloArigos}"/>
</div>

