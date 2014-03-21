
<%@ page import="congic_projeto.Area" %>
<div class="row">
		<g:set var="entityName" value="${message(code: 'area.label', default: 'Area')}" />
		</div>
		<div class="col-lg-12">
	<div class="panel-default">
		<div class="panel-heading">
			<g:message code="default.show.label" args="[entityName]" />
		</div>
		<div class="panel-body">
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
			<ol class="property-list area">
			
				<g:if test="${areaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="area.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${areaInstance}" field="nome"/></span>
					
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
			<g:form onsubmit="Form(this);return false"
				url="[resource:areaInstance, action:'delete']">
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${areaInstance?.id}" />
						<a href="#" onclick="carregarPagina('<g:createLink action="edit" id="${areaInstance.id}" />')">
						<g:message code="default.button.edit.label" default="Edit" /></a>
						<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
