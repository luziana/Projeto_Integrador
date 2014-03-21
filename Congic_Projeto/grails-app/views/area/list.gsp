
<%@ page import="congic_projeto.Area" %>

		<g:set var="entityName" value="${message(code: 'area.label', default: 'Area')}" />
		
		<div class="row">
	<div class="col-lg-16">

		<div class="panel-body">
		<div id="list-area" class="content scaffold-list" role="main">
			
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="panel panel-default">
					<div class="panel-heading">
						<g:message code="default.list.label" args="[entityName]" />
					</div>
					<table
						class="table table-striped table-bordered table-hover dataTable no-footer id="
						dataTables-example" aria-describedby="dataTables-example_info">
						<thead>
							<tr role="row">
					
						<g:sortableColumn property="nome" title="${message(code: 'area.nome.label', default: 'Nome')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${areaInstanceList}" status="i" var="areaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${areaInstance.id}">${fieldValue(bean: areaInstance, field: "nome")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${areaInstanceTotal}" />
			</div>
			</div>
		</div>
	</div>
</div>
	</body>
</html>
