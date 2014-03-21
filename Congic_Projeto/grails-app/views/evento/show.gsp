
<%@ page import="congic_projeto.Evento" %>
<div class="row">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
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
			<ol class="property-list evento">
			
				<g:if test="${eventoInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="evento.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${eventoInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.minicurso}">
				<li class="fieldcontain">
					<span id="minicurso-label" class="property-label"><g:message code="evento.minicurso.label" default="Minicurso" /></span>
					
						<g:each in="${eventoInstance.minicurso}" var="m">
						<span class="property-value" aria-labelledby="minicurso-label"><g:link controller="minicurso" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.palestra}">
				<li class="fieldcontain">
					<span id="palestra-label" class="property-label"><g:message code="evento.palestra.label" default="Palestra" /></span>
					
						<g:each in="${eventoInstance.palestra}" var="p">
						<span class="property-value" aria-labelledby="palestra-label"><g:link controller="palestra" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form onsubmit="Form(this);return false"
				url="[resource:eventoInstance, action:'delete']">
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${eventoInstance?.id}" />
<a href="#" onclick="carregarPagina('<g:createLink action="edit" id="${eventoInstance.id}" />')">
						<g:message code="default.button.edit.label" default="Edit" />
					</a>					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
