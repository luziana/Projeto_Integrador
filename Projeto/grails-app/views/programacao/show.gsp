
<%@ page import="projeto.Programacao" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'programacao.label', default: 'Programacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
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
		<div id="show-programacao" class="col-md-9" role="main">
		<div class="panel panel-default">
			<div class="panel-heading">
			<h2 class="panel-title"><g:message code="default.show.label" args="[entityName]" /></h2>
			</div>
			<div class="panel-body">
			<g:if test="${flash.message}">
			<div class="alert alert-info" role="status">${flash.message}</div>
			</g:if>
			<form class="form-horizontal" role="form">
			
				<g:if test="${programacaoInstance?.categoria}">
				
					<div class="form-group">
						<label id="categoria-label" class="col-lg-offset-2 col-lg-2 control-label"><g:message code="programacao.categoria.label" default="Categoria" /></label>
						<div class="col-lg-6">
							
								<p class="form-control-static aria-labelledby="categoria-label"><g:fieldValue bean="${programacaoInstance}" field="categoria"/></p>
							
						  
						</div>
		  			</div>
					
				</g:if>
			
				<g:if test="${programacaoInstance?.data}">
				
					<div class="form-group">
						<label id="data-label" class="col-lg-offset-2 col-lg-2 control-label"><g:message code="programacao.data.label" default="Data" /></label>
						<div class="col-lg-6">
							
								<p class="form-control-static" aria-labelledby="data-label"><g:formatDate date="${programacaoInstance?.data}" /></p>
							
						  
						</div>
		  			</div>
					
				</g:if>
			
				<g:if test="${programacaoInstance?.descricao}">
				
					<div class="form-group">
						<label id="descricao-label" class="col-lg-offset-2 col-lg-2 control-label"><g:message code="programacao.descricao.label" default="Descricao" /></label>
						<div class="col-lg-6">
							
								<p class="form-control-static aria-labelledby="descricao-label"><g:fieldValue bean="${programacaoInstance}" field="descricao"/></p>
							
						  
						</div>
		  			</div>
					
				</g:if>
			
				<g:if test="${programacaoInstance?.horario}">
				
					<div class="form-group">
						<label id="horario-label" class="col-lg-offset-2 col-lg-2 control-label"><g:message code="programacao.horario.label" default="Horario" /></label>
						<div class="col-lg-6">
							
								<p class="form-control-static" aria-labelledby="horario-label"><g:formatDate date="${programacaoInstance?.horario}" /></p>
							
						  
						</div>
		  			</div>
					
				</g:if>
			
				<g:if test="${programacaoInstance?.orador}">
				
					<div class="form-group">
						<label id="orador-label" class="col-lg-offset-2 col-lg-2 control-label"><g:message code="programacao.orador.label" default="Orador" /></label>
						<div class="col-lg-6">
							
								<p class="form-control-static aria-labelledby="orador-label"><g:fieldValue bean="${programacaoInstance}" field="orador"/></p>
							
						  
						</div>
		  			</div>
					
				</g:if>
			
				<g:if test="${programacaoInstance?.titulo}">
				
					<div class="form-group">
						<label id="titulo-label" class="col-lg-offset-2 col-lg-2 control-label"><g:message code="programacao.titulo.label" default="Titulo" /></label>
						<div class="col-lg-6">
							
								<p class="form-control-static aria-labelledby="titulo-label"><g:fieldValue bean="${programacaoInstance}" field="titulo"/></p>
							
						  
						</div>
		  			</div>
					
				</g:if>
			
			</form>			
			<g:form class="form-horizontal" role="form">
				<div class="form-group">
						<div class="col-lg-offset-3 col-lg-6">
					<g:hiddenField name="id" value="${programacaoInstance?.id}" />
					<g:link class="btn btn-default btn-success" action="edit" id="${programacaoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</div>
				</div>
			</g:form>
		</div>
		</div>
		</div>
		</div>
	</body>
</html>
