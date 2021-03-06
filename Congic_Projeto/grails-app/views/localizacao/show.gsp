
<%@ page import="congic_projeto.Localizacao" %>
<div class="row">
		<g:set var="entityName" value="${message(code: 'localizacao.label', default: 'Localizacao')}" />
	
		<div id="show-localizacao" class="content scaffold-show" role="main">
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
			<ol class="property-list localizacao">
			
				<g:if test="${localizacaoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="localizacao.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${localizacaoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${localizacaoInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="localizacao.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:link controller="cidade" action="show" id="${localizacaoInstance?.cidade?.id}">${localizacaoInstance?.cidade?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form onsubmit="Form(this);return false"
				url="[resource:localizacaoInstance, action:'delete']">
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${localizacaoInstance?.id}" />

			<a href="#"
						onclick="carregarPagina('<g:createLink action="edit" id="${localizacaoInstance.id}" />')">
						<g:message code="default.button.edit.label" default="Edit" />
					</a>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
