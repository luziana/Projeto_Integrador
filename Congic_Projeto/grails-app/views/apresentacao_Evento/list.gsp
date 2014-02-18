
<%@ page import="congic_projeto.Apresentacao_Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'apresentacao_Evento.label', default: 'Apresentacao_Evento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-apresentacao_Evento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-apresentacao_Evento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="descricaoEvento" title="${message(code: 'apresentacao_Evento.descricaoEvento.label', default: 'Descricao Evento')}" />
					
						<g:sortableColumn property="tematica" title="${message(code: 'apresentacao_Evento.tematica.label', default: 'Tematica')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'apresentacao_Evento.data.label', default: 'Data')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${apresentacao_EventoInstanceList}" status="i" var="apresentacao_EventoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${apresentacao_EventoInstance.id}">${fieldValue(bean: apresentacao_EventoInstance, field: "descricaoEvento")}</g:link></td>
					
						<td>${fieldValue(bean: apresentacao_EventoInstance, field: "tematica")}</td>
					
						<td><g:formatDate date="${apresentacao_EventoInstance.data}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${apresentacao_EventoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
