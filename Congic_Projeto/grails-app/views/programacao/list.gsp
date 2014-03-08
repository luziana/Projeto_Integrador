
		<g:set var="entityName" 
				value="${message(code: 'programacao.label', default: 'Programação')}" />
		
	<div class="row">
		<div class="col-lg-16">
				
		<div class="panel-body">
		
			<div id="list-organizacao"
		
				class="content scaffold-list panel panel-default" role="main">
		
				<g:if test="${flash.message}">
					<div class="message" role="status">
						${flash.message}
					</div>
				</g:if>
		
				
				<div class="panel panel-default">
				 <div class="panel-heading">
				 		<g:message code="default.list.label" args="[entityName]" />
				 </div>
			<table class="table table-striped table-bordered table-hover dataTable no-footer id="dataTables-example" aria-describedby="dataTables-example_info">
				<thead>
					<tr role="row">
										
						<g:sortableColumn property="horario" title="${message(code: 'programacao.horario.label', default: 'Horario')}" />
					
						<g:sortableColumn property="categoria" title="${message(code: 'programacao.categoria.label', default: 'Categoria')}" />
					
						<g:sortableColumn property="titulo" title="${message(code: 'programacao.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="orador" title="${message(code: 'programacao.orador.label', default: 'Orador')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'programacao.descricao.label', default: 'Descricao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${programacaoInstanceList}" status="i" var="programacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
				
					
					<td><a href="#" onclick="carregarPagina('<g:createLink action="show" id="${programacaoInstance.id}" />')">
											${fieldValue(bean: programacaoInstance, field: "horario")}
									</a></td>
					
					
					
						<td><g:formatDate date="${programacaoInstance.horario}" /></td>
					
						<td>${fieldValue(bean: programacaoInstance, field: "categoria")}</td>
					
						<td>${fieldValue(bean: programacaoInstance, field: "titulo")}</td>
					
						<td>${fieldValue(bean: programacaoInstance, field: "orador")}</td>
					
						<td>${fieldValue(bean: programacaoInstance, field: "descricao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${programacaoInstanceTotal}" />
			</div>
		</div>
		</div>
		</div>
	</body>
</html>
