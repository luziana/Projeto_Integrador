
<%@ page import="congic_projeto.Programacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'programacao.label', default: 'Programacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-programacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-programacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="data" title="${message(code: 'programacao.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="horario" title="${message(code: 'programacao.horario.label', default: 'Horario')}" />
					
						<g:sortableColumn property="categoria" title="${message(code: 'programacao.categoria.label', default: 'Categoria')}" />
					
						<g:sortableColumn property="titulo" title="${message(code: 'programacao.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="orador" title="${message(code: 'programacao.orador.label', default: 'Orador')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'programacao.descricao.label', default: 'Descricao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${programacaoInstanceList}" status="i" var="programacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${programacaoInstance.id}">${fieldValue(bean: programacaoInstance, field: "data")}</g:link></td>
					
						<td><g:formatDate date="${programacaoInstance.horario}" /></td>
					
						<td>${fieldValue(bean: programacaoInstance, field: "categoria")}</td>
					
						<td>${fieldValue(bean: programacaoInstance, field: "titulo")}</td>
					
						<td>${fieldValue(bean: programacaoInstance, field: "orador")}</td>
					
						<td>${fieldValue(bean: programacaoInstance, field: "descricao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${programacaoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
