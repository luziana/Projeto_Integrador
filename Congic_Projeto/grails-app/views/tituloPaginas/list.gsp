
<%@ page import="congic_projeto.TituloPaginas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tituloPaginas.label', default: 'TituloPaginas')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tituloPaginas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tituloPaginas" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="tituloInicio" title="${message(code: 'tituloPaginas.tituloInicio.label', default: 'Titulo Inicio')}" />
					
						<g:sortableColumn property="subtituloInicio" title="${message(code: 'tituloPaginas.subtituloInicio.label', default: 'Subtitulo Inicio')}" />
					
						<g:sortableColumn property="titulApresentacao" title="${message(code: 'tituloPaginas.titulApresentacao.label', default: 'Titul Apresentacao')}" />
					
						<g:sortableColumn property="subtituloApresentacao" title="${message(code: 'tituloPaginas.subtituloApresentacao.label', default: 'Subtitulo Apresentacao')}" />
					
						<g:sortableColumn property="tituloOrganizacao" title="${message(code: 'tituloPaginas.tituloOrganizacao.label', default: 'Titulo Organizacao')}" />
					
						<g:sortableColumn property="subtituloOrganizacao" title="${message(code: 'tituloPaginas.subtituloOrganizacao.label', default: 'Subtitulo Organizacao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tituloPaginasInstanceList}" status="i" var="tituloPaginasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tituloPaginasInstance.id}">${fieldValue(bean: tituloPaginasInstance, field: "tituloInicio")}</g:link></td>
					
						<td>${fieldValue(bean: tituloPaginasInstance, field: "subtituloInicio")}</td>
					
						<td>${fieldValue(bean: tituloPaginasInstance, field: "titulApresentacao")}</td>
					
						<td>${fieldValue(bean: tituloPaginasInstance, field: "subtituloApresentacao")}</td>
					
						<td>${fieldValue(bean: tituloPaginasInstance, field: "tituloOrganizacao")}</td>
					
						<td>${fieldValue(bean: tituloPaginasInstance, field: "subtituloOrganizacao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tituloPaginasInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
