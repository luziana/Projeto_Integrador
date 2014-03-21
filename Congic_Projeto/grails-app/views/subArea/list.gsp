
<%@ page import="congic_projeto.SubArea" %>

		<g:set var="entityName" value="${message(code: 'subArea.label', default: 'SubArea')}" />
		<div class="row">
	<div class="col-lg-16">

		<div class="panel-body">
		<div id="list-subArea" class="content scaffold-list" role="main">
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
								<g:sortableColumn property="nome"
									title="${message(code: 'subArea.nome.label', default: 'Nome')}" />

								<th><g:message code="subArea.area.label" default="Area" /></th>

							</tr>
						</thead>
						<tbody>
							<g:each in="${subAreaInstanceList}" status="i"
								var="subAreaInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><a href="#"
										onclick="carregarPagina('<g:createLink action="show" id="${subAreaInstance.id}" />')">
											${fieldValue(bean: subAreaInstance, field: "nome")}
									</a></td>

									<td>
										${fieldValue(bean: subAreaInstance, field: "area")}
									</td>

								</tr>
							</g:each>
						</tbody>
					</table>
				</div>
				<div class="pagination">
				<g:paginate total="${subAreaInstanceTotal}" />
			</div>
			</div>
		</div>
	</div>
</div>
	</body>
</html>
