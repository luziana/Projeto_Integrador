
<%@ page import="congic.Programacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'programacao.label', default: 'Programacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-programacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-programacao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list programacao">
			
				<g:if test="${programacaoInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="programacao.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${programacaoInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${programacaoInstance?.horario}">
				<li class="fieldcontain">
					<span id="horario-label" class="property-label"><g:message code="programacao.horario.label" default="Horario" /></span>
					
						<span class="property-value" aria-labelledby="horario-label"><g:formatDate date="${programacaoInstance?.horario}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${programacaoInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="programacao.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:fieldValue bean="${programacaoInstance}" field="categoria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${programacaoInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="programacao.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${programacaoInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${programacaoInstance?.orador}">
				<li class="fieldcontain">
					<span id="orador-label" class="property-label"><g:message code="programacao.orador.label" default="Orador" /></span>
					
						<span class="property-value" aria-labelledby="orador-label"><g:fieldValue bean="${programacaoInstance}" field="orador"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${programacaoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="programacao.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${programacaoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${programacaoInstance?.id}" />
					<g:link class="edit" action="edit" id="${programacaoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
