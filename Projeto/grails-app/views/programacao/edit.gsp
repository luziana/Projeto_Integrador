<%@ page import="projeto.Programacao" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'programacao.label', default: 'Programacao')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>		
		<nav class="navbar navbar-default  navbar-fixed-top" role="navigation">
		 <div class="collapse navbar-collapse navbar-ex1-collapse">
   			 <ul class="nav navbar-nav">
     		 	<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
     		 </ul>
     	 </div>			
		</nav>
		<div class="row">
		<div id="edit-programacao" class="col-md-9" role="main">
		<div class="panel panel-default">
			<div class="panel-heading">
			<h2 class="panel-title"><g:message code="default.edit.label" args="[entityName]" /></h2>
			</div>
			<div class="panel-body">
			<g:if test="${flash.message}">
			<div class="alert alert-info" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${programacaoInstance}">
			<ul class="alert alert-danger" role="alert">
				<g:eachError bean="${programacaoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post"  class="form-horizontal" role="form">
				<g:hiddenField name="id" value="${programacaoInstance?.id}" />
				<g:hiddenField name="version" value="${programacaoInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<div class="form-group">
						<div class="col-lg-offset-4 col-lg-6">
					<g:actionSubmit class="btn btn-default btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:actionSubmit class="btn btn-default btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</div>
					</div>
			</g:form>
		</div>
		</div>
		</div>
		</div>
	</body>
</html>
