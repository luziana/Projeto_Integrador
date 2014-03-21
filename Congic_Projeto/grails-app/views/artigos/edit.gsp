<%@ page import="congic_projeto.Artigos" %>

		<g:set var="entityName" value="${message(code: 'artigos.label', default: 'Artigos')}" />
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
		
		<div id="edit-artigos" class="content scaffold-edit" role="main">
		
			<g:hasErrors bean="${artigosInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${artigosInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form onsubmit="Form(this);return false" url="[resource:artigosInstance, action:'update']" enctype="multipart/form-data">
			
				<g:hiddenField name="id" value="${artigosInstance?.id}" />
				<g:hiddenField name="version" value="${artigosInstance?.version}" />
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
