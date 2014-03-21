
<%@ page import="congic_projeto.Palestra" %>
<div class="row">
		<g:set var="entityName" value="${message(code: 'palestra.label', default: 'Palestra')}" />
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
			<ol class="property-list palestra">
			
				<g:if test="${palestraInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="palestra.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${palestraInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${palestraInstance?.hora}">
				<li class="fieldcontain">
					<span id="hora-label" class="property-label"><g:message code="palestra.hora.label" default="Hora" /></span>
					
						<span class="property-value" aria-labelledby="hora-label"><g:fieldValue bean="${palestraInstance}" field="hora"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${palestraInstance?.ministrante}">
				<li class="fieldcontain">
					<span id="ministrante-label" class="property-label"><g:message code="palestra.ministrante.label" default="Ministrante" /></span>
					
						<span class="property-value" aria-labelledby="ministrante-label"><g:fieldValue bean="${palestraInstance}" field="ministrante"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${palestraInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="palestra.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${palestraInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${palestraInstance?.evento}">
				<li class="fieldcontain">
					<span id="evento-label" class="property-label"><g:message code="palestra.evento.label" default="Evento" /></span>
					
						<span class="property-value" aria-labelledby="evento-label"><g:link controller="evento" action="show" id="${palestraInstance?.evento?.id}">${palestraInstance?.evento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form onsubmit="Form(this);return false"
				url="[resource:palestraInstance, action:'delete']">
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${palestraInstance?.id}" />
<a href="#"
						onclick="carregarPagina('<g:createLink action="edit" id="${palestraInstance.id}" />')">
						<g:message code="default.button.edit.label" default="Edit" />
					</a>					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
