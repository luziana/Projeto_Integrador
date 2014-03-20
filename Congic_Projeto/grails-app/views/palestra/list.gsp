
<%@ page import="congic_projeto.Palestra" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'palestra.label', default: 'Palestra')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-palestra" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-palestra" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'palestra.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="hora" title="${message(code: 'palestra.hora.label', default: 'Hora')}" />
					
						<g:sortableColumn property="ministrante" title="${message(code: 'palestra.ministrante.label', default: 'Ministrante')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'palestra.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="palestra.evento.label" default="Evento" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${palestraInstanceList}" status="i" var="palestraInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${palestraInstance.id}">${fieldValue(bean: palestraInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: palestraInstance, field: "hora")}</td>
					
						<td>${fieldValue(bean: palestraInstance, field: "ministrante")}</td>
					
						<td>${fieldValue(bean: palestraInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: palestraInstance, field: "evento")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${palestraInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
