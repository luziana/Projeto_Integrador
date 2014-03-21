
<%@ page import="congic_projeto.Coordenacao" %>

	<div class="row">
		<g:set var="entityName" value="${message(code: 'coordenacao.label', default: 'Coordenacao')}" />
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
		<div id="show-coordenacao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list coordenacao">
			
				<g:if test="${coordenacaoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="coordenacao.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${coordenacaoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${coordenacaoInstance?.cargo}">
				<li class="fieldcontain">
					<span id="cargo-label" class="property-label"><g:message code="coordenacao.cargo.label" default="Cargo" /></span>
					
						<span class="property-value" aria-labelledby="cargo-label"><g:fieldValue bean="${coordenacaoInstance}" field="cargo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${coordenacaoInstance?.organizacao}">
				<li class="fieldcontain">
					<span id="organizacao-label" class="property-label"><g:message code="coordenacao.organizacao.label" default="Organizacao" /></span>
					
						<span class="property-value" aria-labelledby="organizacao-label"><g:link controller="organizacao" action="show" id="${coordenacaoInstance?.organizacao?.id}">${coordenacaoInstance?.organizacao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form onsubmit="Form(this);return false"
				url="[resource:coordenacaoInstance, action:'delete']">
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${coordenacaoInstance?.id}" />
<a href="#"	onclick="carregarPagina('<g:createLink action="edit" id="${coordenacaoInstance.id}" />')">
						<g:message code="default.button.edit.label" default="Edit" />
					</a>					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
