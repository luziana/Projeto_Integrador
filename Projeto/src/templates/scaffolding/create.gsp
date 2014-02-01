<%=packageName%>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<nav class="navbar navbar-default  navbar-fixed-top" role="navigation">
		 <div class="collapse navbar-collapse navbar-ex1-collapse">
   			 <ul class="nav navbar-nav">
     		 	<li><a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
     		 </ul>
     	 </div>			
		</nav>
		<div class="row">
		<div id="create-${domainClass.propertyName}" class="col-md-8"  role="main">
		<div class="panel panel-default">
			<div class="panel-heading">
			<h2 class="panel-title"><g:message code="default.create.label" args="[entityName]" /></h2>
			</div>
			<div class="panel-body">
			<g:if test="\${flash.message}">
			<div class="alert alert-info" role="status">\${flash.message}</div>
			</g:if>
			<g:hasErrors bean="\${${propertyName}}">
			<ul class="alert alert-danger" role="alert">
				<g:eachError bean="\${${propertyName}}" var="error">
				<li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" <%= multiPart ? ' enctype="multipart/form-data"' : '' %> class="form-horizontal" role="form">
				<fieldset class="form">
					<g:render template="form"/>
					<div class="form-group">
						<div class="col-lg-offset-4 col-lg-6">
							<g:submitButton name="create" class="btn btn-default btn-success" value="\${message(code: 'default.button.create.label', default: 'Create')}" />	
						</div>
					</div>
				</fieldset>
			</g:form>
			</div>
			</div>
		</div>
		</div>
	</body>
</html>
