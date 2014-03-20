
<%@ page import="congic_projeto.Minicurso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'minicurso.label', default: 'Minicurso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-minicurso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-minicurso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'minicurso.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="hora" title="${message(code: 'minicurso.hora.label', default: 'Hora')}" />
					
						<g:sortableColumn property="ministrante" title="${message(code: 'minicurso.ministrante.label', default: 'Ministrante')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'minicurso.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="minicurso.evento.label" default="Evento" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${minicursoInstanceList}" status="i" var="minicursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${minicursoInstance.id}">${fieldValue(bean: minicursoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: minicursoInstance, field: "hora")}</td>
					
						<td>${fieldValue(bean: minicursoInstance, field: "ministrante")}</td>
					
						<td>${fieldValue(bean: minicursoInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: minicursoInstance, field: "evento")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${minicursoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
