<%@ page import="congic_projeto.Noticia" %>

		<div class="row">
		
		<g:set var="entityName" value="${message(code: 'noticia.label', default: 'Noticia')}" />
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
			</div>
		<div id="edit-noticia" class="content scaffold-edit" role="main">
			
			<g:hasErrors bean="${noticiaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${noticiaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form onsubmit="Form(this);return false" url="[resource:noticiaInstance, action:'update']" >
				<g:hiddenField name="id" value="${noticiaInstance?.id}" />
				<g:hiddenField name="version" value="${noticiaInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</div>
		</div>
	</body>
</html>
