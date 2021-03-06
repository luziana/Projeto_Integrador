
<%@ page import="congic_projeto.Artigos" %>

	<div class="row">
		<g:set var="entityName" value="${message(code: 'artigos.label', default: 'Artigos')}" />
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
			<ol class="property-list artigos">
			
				<g:if test="${artigosInstance?.arquivo}">
				<li class="fieldcontain">
					<span id="arquivo-label" class="property-label"><g:message code="artigos.arquivo.label" default="Arquivo" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${artigosInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="artigos.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${artigosInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form onsubmit="Form(this);return false"
				url="[resource:artigosInstance, action:'delete']">
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${artigosInstance?.id}" />
					<a href="#"
						onclick="carregarPagina('<g:createLink action="edit" id="${artigosInstance.id}" />')">
						<g:message code="default.button.edit.label" default="Edit" />
					</a>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
