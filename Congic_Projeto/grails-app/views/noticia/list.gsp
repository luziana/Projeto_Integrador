
		<g:set var="entityName" value="${message(code: 'noticia.label', default: 'Noticia')}" />
		<div id="list-noticia" class="content scaffold-list panel panel-default" role="main">
		<div class="panel-heading">
	<g:message code="default.list.label" args="[entityName]" />
	</div>
			<div class="panel-body">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="titulo" title="${message(code: 'noticia.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'noticia.descricao.label', default: 'Descricao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${noticiaInstanceList}" status="i" var="noticiaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${noticiaInstance.id}">${fieldValue(bean: noticiaInstance, field: "titulo")}</g:link></td>
					
						<td>${fieldValue(bean: noticiaInstance, field: "descricao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${noticiaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
