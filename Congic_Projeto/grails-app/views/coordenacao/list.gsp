
		<g:set var="entityName" 
				value="${message(code: 'coordenacao.label', default: 'Coordenacao')}" />
		
	<div class="row">
		<div class="col-lg-12">
			<div class="panel-heading">
				
					<g:message code="default.list.label" args="[entityName]" />
					
			</div>
	
		<div class="panel-body">
			<div id="list-coordenacao" class="content scaffold-list panel panel-default" role="main">
					<g:if test="${flash.message}">
						<div class="message" role="status">
						${flash.message}
						</div>
					</g:if>
			<table class="table table-striped table-bordered table-hover dataTable no-footer id="dataTables-example" aria-describedby="dataTables-example_info">
				<thead>
					<tr role="row">
					
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
