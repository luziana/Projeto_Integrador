
<%@ page import="congic_projeto.Hospedagem" %>

		<g:set var="entityName" value="${message(code: 'hospedagem.label', default: 'Hospedagem')}" />
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
			
	
		<div id="show-hospedagem" class="content scaffold-show" role="main">
			
			<ol class="property-list hospedagem">
			
				<g:if test="${hospedagemInstance?.nome_hospedagem}">
				<li class="fieldcontain">
					<span id="nome_hospedagem-label" class="property-label"><g:message code="hospedagem.nome_hospedagem.label" default="Nomehospedagem" /></span>
					
						<span class="property-value" aria-labelledby="nome_hospedagem-label"><g:fieldValue bean="${hospedagemInstance}" field="nome_hospedagem"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hospedagemInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="hospedagem.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${hospedagemInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hospedagemInstance?.contato}">
				<li class="fieldcontain">
					<span id="contato-label" class="property-label"><g:message code="hospedagem.contato.label" default="Contato" /></span>
					
						<span class="property-value" aria-labelledby="contato-label"><g:fieldValue bean="${hospedagemInstance}" field="contato"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form onsubmit="Form(this);return false" url="[resource:hospedagemInstance, action:'delete']"  >
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${hospedagemInstance?.id}" />
					<g:link class="edit" action="edit" id="${hospedagemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
