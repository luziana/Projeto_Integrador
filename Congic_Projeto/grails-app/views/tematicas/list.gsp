
		<g:set var="entityName" 
				value="${message(code: 'tematicas.label', default: 'Temáticas')}" />
		
	<div class="row">
		<div class="col-lg-12">
			
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
					
						<g:sortableColumn property="descricao" title="${message(code: 'tematicas.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="area" title="${message(code: 'tematicas.area.label', default: 'Area')}" />
					
						<g:sortableColumn property="subArea" title="${message(code: 'tematicas.subArea.label', default: 'Sub Area')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tematicasInstanceList}" status="i" var="tematicasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
					
					<td><a href="#" onclick="carregarPagina('<g:createLink action="show" id="${tematicasInstance.id}" />')">
											${fieldValue(bean: tematicasInstance, field: "descricao")}
									</a></td>
					
					
					
						<td>${fieldValue(bean: tematicasInstance, field: "area")}</td>
					
						<td>${fieldValue(bean: tematicasInstance, field: "subArea")}</td>
					
					</tr>
				</g:each>
				</tbody>
				
			</table>
			<div class="pagination">
				<g:paginate total="${tematicasInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
