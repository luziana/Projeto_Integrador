
		<g:set var="entityName" 
				value="${message(code: 'apresentacao_Evento.label', default: 'Apresentacao_Evento')}" />
		
	<div class="row">
		<div class="col-lg-12">
			<div class="panel-heading">
				
					<g:message code="default.list.label" args="[entityName]" />
					
			</div>
	
		<div class="panel-body">
			<div id="list-apresentacao" class="content scaffold-list panel panel-default" role="main">
					<g:if test="${flash.message}">
						<div class="message" role="status">
						${flash.message}
						</div>
					</g:if>
		<table class="table table-striped table-bordered table-hover dataTable no-footer id="dataTables-example" aria-describedby="dataTables-example_info">
				<thead>
					<tr role="row">
					
						<g:sortableColumn property="equipe" title="${message(code: 'organizacao.equipe.label', default: 'Equipe')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${organizacaoInstanceList}" status="i" var="organizacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${organizacaoInstance.id}">${fieldValue(bean: organizacaoInstance, field: "equipe")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${organizacaoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
