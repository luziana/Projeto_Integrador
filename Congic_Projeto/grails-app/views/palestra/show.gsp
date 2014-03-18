
<%@ page import="congic_projeto.Palestra" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'palestra.label', default: 'Palestra')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-palestra" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-palestra" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list palestra">
			
				<g:if test="${palestraInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="palestra.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${palestraInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${palestraInstance?.hora}">
				<li class="fieldcontain">
					<span id="hora-label" class="property-label"><g:message code="palestra.hora.label" default="Hora" /></span>
					
						<span class="property-value" aria-labelledby="hora-label"><g:fieldValue bean="${palestraInstance}" field="hora"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${palestraInstance?.ministrante}">
				<li class="fieldcontain">
					<span id="ministrante-label" class="property-label"><g:message code="palestra.ministrante.label" default="Ministrante" /></span>
					
						<span class="property-value" aria-labelledby="ministrante-label"><g:fieldValue bean="${palestraInstance}" field="ministrante"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${palestraInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="palestra.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${palestraInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${palestraInstance?.evento}">
				<li class="fieldcontain">
					<span id="evento-label" class="property-label"><g:message code="palestra.evento.label" default="Evento" /></span>
					
						<span class="property-value" aria-labelledby="evento-label"><g:link controller="evento" action="show" id="${palestraInstance?.evento?.id}">${palestraInstance?.evento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${palestraInstance?.id}" />
					<g:link class="edit" action="edit" id="${palestraInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
