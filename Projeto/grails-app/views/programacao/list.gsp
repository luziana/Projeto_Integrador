
<%@ page import="projeto.Programacao" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'programacao.label', default: 'Programacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-programacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<nav class="navbar navbar-default  navbar-fixed-top" role="navigation">
		 <div class="collapse navbar-collapse navbar-ex1-collapse">
   			 <ul class="nav navbar-nav">
     		 	<li><a  href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
     		 	<li><g:link action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
     		 </ul>
     	 </div>			
		</nav>
		
		<div class="row">
		<div id="list-programacao" class="col-md-9" role="main">
		<div class="panel panel-default">
		<div class="panel-heading">
			<h2 class="panel-title"><g:message code="default.list.label" args="[entityName]" /></h2>
			</div>
			<g:if test="${flash.message}">
			<div class="alert alert-info" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
					
						<g:sortableColumn property="categoria" title="${message(code: 'programacao.categoria.label', default: 'Categoria')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'programacao.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'programacao.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="horario" title="${message(code: 'programacao.horario.label', default: 'Horario')}" />
					
						<g:sortableColumn property="orador" title="${message(code: 'programacao.orador.label', default: 'Orador')}" />
					
						<g:sortableColumn property="titulo" title="${message(code: 'programacao.titulo.label', default: 'Titulo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${programacaoInstanceList}" status="i" var="programacaoInstance">
					<tr class="${(i % 2) == 0 ? 'active' : ''}">
					
						<td><g:link action="show" id="${programacaoInstance.id}">${fieldValue(bean: programacaoInstance, field: "categoria")}</g:link></td>
					
						<td><g:formatDate date="${programacaoInstance.data}" /></td>
					
						<td>${fieldValue(bean: programacaoInstance, field: "descricao")}</td>
					
						<td><g:formatDate date="${programacaoInstance.horario}" /></td>
					
						<td>${fieldValue(bean: programacaoInstance, field: "orador")}</td>
					
						<td>${fieldValue(bean: programacaoInstance, field: "titulo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${programacaoInstanceTotal}" />
			</div>
			</div>			
		</div>
		</div>
	</body>
</html>
