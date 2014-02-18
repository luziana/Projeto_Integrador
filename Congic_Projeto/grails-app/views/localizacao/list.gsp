

		<g:set var="entityName" value="${message(code: 'localizacao.label', default: 'Localizacao')}" />
				<div id="list-localizacao" class="content scaffold-list panel panel-default" role="main">
		<div class="panel-heading">
		<a href="#list-localizacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-localizacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'localizacao.descricao.label', default: 'Descricao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${localizacaoInstanceList}" status="i" var="localizacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${localizacaoInstance.id}">${fieldValue(bean: localizacaoInstance, field: "descricao")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${localizacaoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
