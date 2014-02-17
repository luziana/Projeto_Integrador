
<%@ page import="congic.ApresentacaoEvento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'apresentacao.label', default: 'Apresentacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-apresentacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-apresentacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="descricaoEvento" title="${message(code: 'apresentacao.descricaoEvento.label', default: 'Descricao Evento')}" />
					
						<g:sortableColumn property="tematica" title="${message(code: 'apresentacao.tematica.label', default: 'Tematica')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'apresentacao.data.label', default: 'Data')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${apresentacaoInstanceList}" status="i" var="apresentacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${apresentacaoInstance.id}">${fieldValue(bean: apresentacaoInstance, field: "descricaoEvento")}</g:link></td>
					
						<td>${fieldValue(bean: apresentacaoInstance, field: "tematica")}</td>
					
						<td><g:formatDate date="${apresentacaoInstance.data}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${apresentacaoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
