
<%@ page import="congic_projeto.Apresentacao" %>

		<g:set var="entityName" value="${message(code: 'apresentacao_Evento.label', default: 'Apresentação Evento')}" />
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
			
		<div id="show-apresentacao_Evento" class="content scaffold-show" role="main">
						
			<ol class="property-list apresentacao_Evento">
			
				<g:if test="${apresentacao_EventoInstance?.descricaoEvento}">
				<li class="fieldcontain">
					<span id="descricaoEvento-label" class="property-label"><g:message code="apresentacao_Evento.descricaoEvento.label" default="Descricao Evento" /></span>
					
						<span class="property-value" aria-labelledby="descricaoEvento-label"><g:fieldValue bean="${apresentacao_EventoInstance}" field="descricaoEvento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${apresentacao_EventoInstance?.tematica}">
				<li class="fieldcontain">
					<span id="tematica-label" class="property-label"><g:message code="apresentacao_Evento.tematica.label" default="Tematica" /></span>
					
						<span class="property-value" aria-labelledby="tematica-label"><g:fieldValue bean="${apresentacao_EventoInstance}" field="tematica"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${apresentacao_EventoInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="apresentacao_Evento.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${apresentacao_EventoInstance?.data}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form onsubmit="Form(this);return false" url="[resource:apresentacao_EventoInstance, action:'delete']" >
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${apresentacao_EventoInstance?.id}" />
					<g:link class="edit" action="edit" id="${apresentacao_EventoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		
	</body>
</html>
