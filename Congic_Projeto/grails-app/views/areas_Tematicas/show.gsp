
<%@ page import="congic_projeto.Areas_Tematicas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'areas_Tematicas.label', default: 'Areas_Tematicas')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-areas_Tematicas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-areas_Tematicas" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list areas_Tematicas">
			
				<g:if test="${areas_TematicasInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="areas_Tematicas.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${areas_TematicasInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${areas_TematicasInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="areas_Tematicas.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:fieldValue bean="${areas_TematicasInstance}" field="area"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${areas_TematicasInstance?.subArea}">
				<li class="fieldcontain">
					<span id="subArea-label" class="property-label"><g:message code="areas_Tematicas.subArea.label" default="Sub Area" /></span>
					
						<span class="property-value" aria-labelledby="subArea-label"><g:fieldValue bean="${areas_TematicasInstance}" field="subArea"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${areas_TematicasInstance?.id}" />
					<g:link class="edit" action="edit" id="${areas_TematicasInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
