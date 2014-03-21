
<%@ page import="congic_projeto.Cidade" %>

<div class="row">
		<g:set var="entityName" value="${message(code: 'cidade.label', default: 'Cidade')}" />
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
			<ol class="property-list cidade">
			
				<g:if test="${cidadeInstance?.nomeCidade}">
				<li class="fieldcontain">
					<span id="nomeCidade-label" class="property-label"><g:message code="cidade.nomeCidade.label" default="Nome Cidade" /></span>
					
						<span class="property-value" aria-labelledby="nomeCidade-label"><g:fieldValue bean="${cidadeInstance}" field="nomeCidade"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form onsubmit="Form(this);return false"
				url="[resource:cidadeInstance, action:'delete']">
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${cidadeInstance?.id}" />
<a href="#" onclick="carregarPagina('<g:createLink action="edit" id="${cidadeInstance.id}" />')">
				<g:message code="default.button.edit.label" default="Edit" />
					</a>					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
