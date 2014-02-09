
<%@ page import="congic.Evento" %>
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
			
				<g:if test="${eventoInstance?.apresentacao}">
				<li class="fieldcontain">
					<span id="apresentacao-label" class="property-label"><g:message code="evento.apresentacao.label" default="Apresentacao" /></span>
					
						<span class="property-value" aria-labelledby="apresentacao-label"><g:link controller="apresentacao" action="show" id="${eventoInstance?.apresentacao?.id}">${eventoInstance?.apresentacao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.tematica}">
				<li class="fieldcontain">
					<span id="tematica-label" class="property-label"><g:message code="evento.tematica.label" default="Tematica" /></span>
					
						<span class="property-value" aria-labelledby="tematica-label"><g:fieldValue bean="${eventoInstance}" field="tematica"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="evento.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${eventoInstance?.data}" /></span>
					
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
