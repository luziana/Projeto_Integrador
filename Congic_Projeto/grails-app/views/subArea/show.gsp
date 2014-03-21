
<%@ page import="congic_projeto.SubArea" %>
<div class="row">
		<g:set var="entityName" value="${message(code: 'subArea.label', default: 'SubArea')}" />
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
			<ol class="property-list subArea">
			
				<g:if test="${subAreaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="subArea.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${subAreaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${subAreaInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="subArea.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:link controller="area" action="show" id="${subAreaInstance?.area?.id}">${subAreaInstance?.area?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form onsubmit="Form(this);return false"
				url="[resource:subAreaInstance, action:'delete']">
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${subAreaInstance?.id}" />
<a href="#"
						onclick="carregarPagina('<g:createLink action="edit" id="${subAreaInstance.id}" />')">
						<g:message code="default.button.edit.label" default="Edit" />
					</a>					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
