<%@ page import="congic_projeto.Organizacao" %>

		<g:set var="entityName" value="${message(code: 'organizacao.label', default: 'Organizacao')}" />
	<div class="row">
		
		</div>
			<div class="col-lg-12">
			<div class="panel-default">
				<div class="panel-heading">
					<g:message code="default.edit.label" args="[entityName]" />
				</div>
				<div class="panel-body">
					<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
		
		<div id="edit-organizacao" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${organizacaoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${organizacaoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
		<g:form onsubmit="Form(this);return false" url="[resource:organizacaoInstance, action:'update']" >

				<g:hiddenField name="id" value="${organizacaoInstance?.id}" />
				<g:hiddenField name="version" value="${organizacaoInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
