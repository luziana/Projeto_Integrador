
<%@ page import="congic_projeto.Area" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'area.label', default: 'Area')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-area" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-area" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list area">
			
				<g:if test="${areaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="area.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${areaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${areaInstance?.tematica}">
				<li class="fieldcontain">
					<span id="tematica-label" class="property-label"><g:message code="area.tematica.label" default="Tematica" /></span>
					
						<span class="property-value" aria-labelledby="tematica-label"><g:link controller="tematicas" action="show" id="${areaInstance?.tematica?.id}">${areaInstance?.tematica?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${areaInstance?.subArea}">
				<li class="fieldcontain">
					<span id="subArea-label" class="property-label"><g:message code="area.subArea.label" default="Sub Area" /></span>
					
						<g:each in="${areaInstance.subArea}" var="s">
						<span class="property-value" aria-labelledby="subArea-label"><g:link controller="subArea" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${areaInstance?.id}" />
					<g:link class="edit" action="edit" id="${areaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
