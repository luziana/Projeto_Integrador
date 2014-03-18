
<%@ page import="congic_projeto.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-evento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-evento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list evento">
			
				<g:if test="${eventoInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="evento.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${eventoInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.minicurso}">
				<li class="fieldcontain">
					<span id="minicurso-label" class="property-label"><g:message code="evento.minicurso.label" default="Minicurso" /></span>
					
						<g:each in="${eventoInstance.minicurso}" var="m">
						<span class="property-value" aria-labelledby="minicurso-label"><g:link controller="minicurso" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.palestra}">
				<li class="fieldcontain">
					<span id="palestra-label" class="property-label"><g:message code="evento.palestra.label" default="Palestra" /></span>
					
						<g:each in="${eventoInstance.palestra}" var="p">
						<span class="property-value" aria-labelledby="palestra-label"><g:link controller="palestra" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${eventoInstance?.id}" />
					<g:link class="edit" action="edit" id="${eventoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
