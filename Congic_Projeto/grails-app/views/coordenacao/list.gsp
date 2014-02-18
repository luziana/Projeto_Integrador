
		<g:set var="entityName" value="${message(code: 'coordenacao.label', default: 'Coordenacao')}" />
				<div id="list-coordenacao" class="content scaffold-list panel panel-default" role="main">
		<div class="panel-heading">
		<a href="#list-coordenacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-coordenacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'coordenacao.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="cargo" title="${message(code: 'coordenacao.cargo.label', default: 'Cargo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${coordenacaoInstanceList}" status="i" var="coordenacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${coordenacaoInstance.id}">${fieldValue(bean: coordenacaoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: coordenacaoInstance, field: "cargo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${coordenacaoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
