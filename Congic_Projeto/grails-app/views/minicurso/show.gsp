
<%@ page import="congic_projeto.Minicurso" %>
<div class="row">
		<g:set var="entityName" value="${message(code: 'minicurso.label', default: 'Minicurso')}" />
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
			<ol class="property-list minicurso">
			
				<g:if test="${minicursoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="minicurso.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${minicursoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${minicursoInstance?.hora}">
				<li class="fieldcontain">
					<span id="hora-label" class="property-label"><g:message code="minicurso.hora.label" default="Hora" /></span>
					
						<span class="property-value" aria-labelledby="hora-label"><g:fieldValue bean="${minicursoInstance}" field="hora"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${minicursoInstance?.ministrante}">
				<li class="fieldcontain">
					<span id="ministrante-label" class="property-label"><g:message code="minicurso.ministrante.label" default="Ministrante" /></span>
					
						<span class="property-value" aria-labelledby="ministrante-label"><g:fieldValue bean="${minicursoInstance}" field="ministrante"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${minicursoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="minicurso.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${minicursoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${minicursoInstance?.evento}">
				<li class="fieldcontain">
					<span id="evento-label" class="property-label"><g:message code="minicurso.evento.label" default="Evento" /></span>
					
						<span class="property-value" aria-labelledby="evento-label"><g:link controller="evento" action="show" id="${minicursoInstance?.evento?.id}">${minicursoInstance?.evento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form onsubmit="Form(this);return false"
				url="[resource:minicursoInstance, action:'delete']">
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${minicursoInstance?.id}" />

			<a href="#"
						onclick="carregarPagina('<g:createLink action="edit" id="${minicursoInstance.id}" />')">
						<g:message code="default.button.edit.label" default="Edit" />
					</a>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
