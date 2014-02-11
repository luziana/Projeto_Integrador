
<%@ page import="congic.Hospedagem" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hospedagem.label', default: 'Hospedagem')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-hospedagem" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-hospedagem" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nome_hospedagem" title="${message(code: 'hospedagem.nome_hospedagem.label', default: 'Nomehospedagem')}" />
					
						<g:sortableColumn property="endereco" title="${message(code: 'hospedagem.endereco.label', default: 'Endereco')}" />
					
						<g:sortableColumn property="contato" title="${message(code: 'hospedagem.contato.label', default: 'Contato')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${hospedagemInstanceList}" status="i" var="hospedagemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${hospedagemInstance.id}">${fieldValue(bean: hospedagemInstance, field: "nome_hospedagem")}</g:link></td>
					
						<td>${fieldValue(bean: hospedagemInstance, field: "endereco")}</td>
					
						<td>${fieldValue(bean: hospedagemInstance, field: "contato")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${hospedagemInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
