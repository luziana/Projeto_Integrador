
<%@ page import="congic_projeto.Tematicas" %>

		<g:set var="entityName" value="${message(code: 'tematicas.label', default: 'Tematicas')}" />
			<div class="row">
			
		</div>
		<div class="col-lg-12">
			<div class="panel-default">
				<div class="panel-heading">
					<g:message code="default.show.label" args="[entityName]" />
				</div>
				<div class="panel-body">
					<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
		<div id="show-tematicas" class="content scaffold-show" role="main">
		
			<ol class="property-list tematicas">
			
				<g:if test="${tematicasInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="tematicas.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${tematicasInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tematicasInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="tematicas.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:fieldValue bean="${tematicasInstance}" field="area"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tematicasInstance?.subArea}">
				<li class="fieldcontain">
					<span id="subArea-label" class="property-label"><g:message code="tematicas.subArea.label" default="Sub Area" /></span>
					
						<span class="property-value" aria-labelledby="subArea-label"><g:fieldValue bean="${tematicasInstance}" field="subArea"/></span>
					
				</li>
				</g:if>
			
			</ol>
				<g:form onsubmit="Form(this);return false" url="[resource:tematicasInstance, action:'delete']">
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tematicasInstance?.id}" />
					<a href="#" onclick="carregarPagina('<g:createLink action="edit" id="${tematicasInstance.id}" />')">
											<g:message code="default.button.edit.label" default="Edit" />
									</a>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
