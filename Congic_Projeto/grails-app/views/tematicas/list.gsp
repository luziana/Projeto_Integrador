

<%@ page import="congic_projeto.Tematicas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tematicas.label', default: 'Tematicas')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tematicas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tematicas" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'tematicas.descricao.label', default: 'Descricao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tematicasInstanceList}" status="i" var="tematicasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
<td><a href="#"
			onclick="carregarPagina('<g:createLink action="show" id="${tematicasInstance.id}" />')">
			${fieldValue(bean: tematicasInstance, field: "descricao")}
			</a></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tematicasInstanceTotal}" />
			</div>
		</div>
	</div>
</div>
</body>
</html>
