
<%@ page import="congic_projeto.Menu" %>
<div class="row">
		<g:set var="entityName" value="${message(code: 'menu.label', default: 'Menu')}" />
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
			<ol class="property-list menu">
			
				<g:if test="${menuInstance?.link}">
				<li class="fieldcontain">
					<span id="link-label" class="property-label"><g:message code="menu.link.label" default="Link" /></span>
					
						<span class="property-value" aria-labelledby="link-label"><g:fieldValue bean="${menuInstance}" field="link"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${menuInstance?.nome_link}">
				<li class="fieldcontain">
					<span id="nome_link-label" class="property-label"><g:message code="menu.nome_link.label" default="Nomelink" /></span>
					
						<span class="property-value" aria-labelledby="nome_link-label"><g:fieldValue bean="${menuInstance}" field="nome_link"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form onsubmit="Form(this);return false"
				url="[resource:menuInstance, action:'delete']">
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${menuInstance?.id}" />
	<a href="#"
			onclick="carregarPagina('<g:createLink action="edit" id="${menuInstance.id}" />')">
			<g:message code="default.button.edit.label" default="Edit" />
			</a>

					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
