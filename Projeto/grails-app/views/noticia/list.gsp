
<%@ page import="projeto.Noticia" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'programacao.label', default: 'Noticia')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-noticia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<nav class="navbar navbar-default  navbar-fixed-top" role="navigation">
		 <div class="collapse navbar-collapse navbar-ex1-collapse">
   			 <ul class="nav navbar-nav">
     		 	<li><a  href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
     		 	<li><g:link action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
     		 </ul>
     	 </div>			
		</nav>
		
		<div class="row">
		<div id="list-noticia" class="col-md-9" role="main">
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
					
						<g:sortableColumn property="descricao" title="${message(code: 'noticia.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="titulo" title="${message(code: 'noticia.titulo.label', default: 'Titulo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${noticiaInstanceList}" status="i" var="noticiaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${noticiaInstance.id}">${fieldValue(bean: noticiaInstance, field: "descricao")}</g:link></td>
					
						<td>${fieldValue(bean: noticiaInstance, field: "titulo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${noticiaInstanceTotal}" />
			</div>
			</div>			
		</div>
		</div>
	</body>
</html>
