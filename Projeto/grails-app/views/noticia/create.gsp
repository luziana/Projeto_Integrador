<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'noticia.label', default: 'Noticia')}" />
<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<div class="wrapper">
<div id="create-noticia" class="panel panel-default content scaffold-create" role="main">
<div class="panel-heading">
<h1><g:message code="default.create.label" args="[entityName]" /></h1>
</div>
<div class="panel-body">
<g:if test="${flash.message}">
<div class="message" role="status">${flash.message}</div>
</g:if>
<g:hasErrors bean="${noticiaInstance}">
<ul class="errors" role="alert">
<g:eachError bean="${noticiaInstance}" var="error">
<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
</g:eachError>
</ul>
</g:hasErrors>
<g:form url="[resource:noticiaInstance, action:'save']" >
<fieldset class="form">
<g:render template="form"/>
</fieldset>
<fieldset class="buttons">
<g:submitButton name="create" class="save btn btn-default" value="${message(code: 'default.button.create.label', default: 'Create')}" />
</fieldset>
</g:form>

</div>
</div>
</div>
</body>
</html>