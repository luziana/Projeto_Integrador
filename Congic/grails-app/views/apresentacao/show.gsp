
<%@ page import="congic.Apresentacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'apresentacao.label', default: 'Apresentacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-apresentacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-apresentacao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list apresentacao">
			
				<g:if test="${apresentacaoInstance?.descricaoEvento}">
				<li class="fieldcontain">
					<span id="descricaoEvento-label" class="property-label"><g:message code="apresentacao.descricaoEvento.label" default="Descricao Evento" /></span>
					
						<span class="property-value" aria-labelledby="descricaoEvento-label"><g:fieldValue bean="${apresentacaoInstance}" field="descricaoEvento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${apresentacaoInstance?.tematica}">
				<li class="fieldcontain">
					<span id="tematica-label" class="property-label"><g:message code="apresentacao.tematica.label" default="Tematica" /></span>
					
						<span class="property-value" aria-labelledby="tematica-label"><g:fieldValue bean="${apresentacaoInstance}" field="tematica"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${apresentacaoInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="apresentacao.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${apresentacaoInstance?.data}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${apresentacaoInstance?.id}" />
					<g:link class="edit" action="edit" id="${apresentacaoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
