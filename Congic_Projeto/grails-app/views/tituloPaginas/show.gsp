
<%@ page import="congic_projeto.TituloPaginas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tituloPaginas.label', default: 'TituloPaginas')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tituloPaginas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tituloPaginas" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tituloPaginas">
			
				<g:if test="${tituloPaginasInstance?.tituloInicio}">
				<li class="fieldcontain">
					<span id="tituloInicio-label" class="property-label"><g:message code="tituloPaginas.tituloInicio.label" default="Titulo Inicio" /></span>
					
						<span class="property-value" aria-labelledby="tituloInicio-label"><g:fieldValue bean="${tituloPaginasInstance}" field="tituloInicio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.subtituloInicio}">
				<li class="fieldcontain">
					<span id="subtituloInicio-label" class="property-label"><g:message code="tituloPaginas.subtituloInicio.label" default="Subtitulo Inicio" /></span>
					
						<span class="property-value" aria-labelledby="subtituloInicio-label"><g:fieldValue bean="${tituloPaginasInstance}" field="subtituloInicio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.titulApresentacao}">
				<li class="fieldcontain">
					<span id="titulApresentacao-label" class="property-label"><g:message code="tituloPaginas.titulApresentacao.label" default="Titul Apresentacao" /></span>
					
						<span class="property-value" aria-labelledby="titulApresentacao-label"><g:fieldValue bean="${tituloPaginasInstance}" field="titulApresentacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.subtituloApresentacao}">
				<li class="fieldcontain">
					<span id="subtituloApresentacao-label" class="property-label"><g:message code="tituloPaginas.subtituloApresentacao.label" default="Subtitulo Apresentacao" /></span>
					
						<span class="property-value" aria-labelledby="subtituloApresentacao-label"><g:fieldValue bean="${tituloPaginasInstance}" field="subtituloApresentacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.tituloOrganizacao}">
				<li class="fieldcontain">
					<span id="tituloOrganizacao-label" class="property-label"><g:message code="tituloPaginas.tituloOrganizacao.label" default="Titulo Organizacao" /></span>
					
						<span class="property-value" aria-labelledby="tituloOrganizacao-label"><g:fieldValue bean="${tituloPaginasInstance}" field="tituloOrganizacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.subtituloOrganizacao}">
				<li class="fieldcontain">
					<span id="subtituloOrganizacao-label" class="property-label"><g:message code="tituloPaginas.subtituloOrganizacao.label" default="Subtitulo Organizacao" /></span>
					
						<span class="property-value" aria-labelledby="subtituloOrganizacao-label"><g:fieldValue bean="${tituloPaginasInstance}" field="subtituloOrganizacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.tituloLocalizacao}">
				<li class="fieldcontain">
					<span id="tituloLocalizacao-label" class="property-label"><g:message code="tituloPaginas.tituloLocalizacao.label" default="Titulo Localizacao" /></span>
					
						<span class="property-value" aria-labelledby="tituloLocalizacao-label"><g:fieldValue bean="${tituloPaginasInstance}" field="tituloLocalizacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.subtituloLocalizacao}">
				<li class="fieldcontain">
					<span id="subtituloLocalizacao-label" class="property-label"><g:message code="tituloPaginas.subtituloLocalizacao.label" default="Subtitulo Localizacao" /></span>
					
						<span class="property-value" aria-labelledby="subtituloLocalizacao-label"><g:fieldValue bean="${tituloPaginasInstance}" field="subtituloLocalizacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.tituloHospedagem}">
				<li class="fieldcontain">
					<span id="tituloHospedagem-label" class="property-label"><g:message code="tituloPaginas.tituloHospedagem.label" default="Titulo Hospedagem" /></span>
					
						<span class="property-value" aria-labelledby="tituloHospedagem-label"><g:fieldValue bean="${tituloPaginasInstance}" field="tituloHospedagem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.subtituloHospedagem}">
				<li class="fieldcontain">
					<span id="subtituloHospedagem-label" class="property-label"><g:message code="tituloPaginas.subtituloHospedagem.label" default="Subtitulo Hospedagem" /></span>
					
						<span class="property-value" aria-labelledby="subtituloHospedagem-label"><g:fieldValue bean="${tituloPaginasInstance}" field="subtituloHospedagem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.tituloAreasTematicas}">
				<li class="fieldcontain">
					<span id="tituloAreasTematicas-label" class="property-label"><g:message code="tituloPaginas.tituloAreasTematicas.label" default="Titulo Areas Tematicas" /></span>
					
						<span class="property-value" aria-labelledby="tituloAreasTematicas-label"><g:fieldValue bean="${tituloPaginasInstance}" field="tituloAreasTematicas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.subtituloAreasTematicas}">
				<li class="fieldcontain">
					<span id="subtituloAreasTematicas-label" class="property-label"><g:message code="tituloPaginas.subtituloAreasTematicas.label" default="Subtitulo Areas Tematicas" /></span>
					
						<span class="property-value" aria-labelledby="subtituloAreasTematicas-label"><g:fieldValue bean="${tituloPaginasInstance}" field="subtituloAreasTematicas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.tituloProgramacao}">
				<li class="fieldcontain">
					<span id="tituloProgramacao-label" class="property-label"><g:message code="tituloPaginas.tituloProgramacao.label" default="Titulo Programacao" /></span>
					
						<span class="property-value" aria-labelledby="tituloProgramacao-label"><g:fieldValue bean="${tituloPaginasInstance}" field="tituloProgramacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.subtituloProgramacao}">
				<li class="fieldcontain">
					<span id="subtituloProgramacao-label" class="property-label"><g:message code="tituloPaginas.subtituloProgramacao.label" default="Subtitulo Programacao" /></span>
					
						<span class="property-value" aria-labelledby="subtituloProgramacao-label"><g:fieldValue bean="${tituloPaginasInstance}" field="subtituloProgramacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.tituloArtigos}">
				<li class="fieldcontain">
					<span id="tituloArtigos-label" class="property-label"><g:message code="tituloPaginas.tituloArtigos.label" default="Titulo Artigos" /></span>
					
						<span class="property-value" aria-labelledby="tituloArtigos-label"><g:fieldValue bean="${tituloPaginasInstance}" field="tituloArtigos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tituloPaginasInstance?.subtituloArigos}">
				<li class="fieldcontain">
					<span id="subtituloArigos-label" class="property-label"><g:message code="tituloPaginas.subtituloArigos.label" default="Subtitulo Arigos" /></span>
					
						<span class="property-value" aria-labelledby="subtituloArigos-label"><g:fieldValue bean="${tituloPaginasInstance}" field="subtituloArigos"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tituloPaginasInstance?.id}" />
					<g:link class="edit" action="edit" id="${tituloPaginasInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
