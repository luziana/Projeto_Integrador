
<%@ page import="congic_projeto.Organizacao" %>
<div class="row">
		<g:set var="entityName" value="${message(code: 'organizacao.label', default: 'Organizacao')}" />
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
			<ol class="property-list organizacao">
			
				<g:if test="${organizacaoInstance?.cidade}">
				<li class="fieldcontain">
					<span id="cidade-label" class="property-label"><g:message code="organizacao.cidade.label" default="Cidade" /></span>
					
						<span class="property-value" aria-labelledby="cidade-label"><g:fieldValue bean="${organizacaoInstance}" field="cidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizacaoInstance?.coordenacao}">
				<li class="fieldcontain">
					<span id="coordenacao-label" class="property-label"><g:message code="organizacao.coordenacao.label" default="Coordenacao" /></span>
					
						<g:each in="${organizacaoInstance.coordenacao}" var="c">
						<span class="property-value" aria-labelledby="coordenacao-label"><g:link controller="coordenacao" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form onsubmit="Form(this);return false"
				url="[resource:organizacaoInstance, action:'delete']">
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${organizacaoInstance?.id}" />
					<a href="#"
						onclick="carregarPagina('<g:createLink action="edit" id="${organizacaoInstance.id}" />')">
						<g:message code="default.button.edit.label" default="Edit" />
					</a>

					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
