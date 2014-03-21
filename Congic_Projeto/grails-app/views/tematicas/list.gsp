
<%@ page import="congic_projeto.Tematicas"%>

<g:set var="entityName"
	value="${message(code: 'tematicas.label', default: 'Tematicas')}" />
<div class="row">
	<div class="col-lg-16">

		<div class="panel-body">
			<div id="list-tematicas" class="content scaffold-list" role="main">
				<g:if test="${flash.message}">
					<div class="message" role="status">
						${flash.message}
					</div>
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
								<g:sortableColumn property="descricao"
									title="${message(code: 'tematicas.descricao.label', default: 'Descricao')}" />

							</tr>
						</thead>
						<tbody>
							<g:each in="${tematicasInstanceList}" status="i"
								var="tematicasInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><g:link action="show" id="${tematicasInstance.id}">
											${fieldValue(bean: tematicasInstance, field: "descricao")}
										</g:link></td>

								</tr>
							</g:each>
						</tbody>
					</table>
				</div>
				<div class="pagination">
					<g:paginate total="${tematicasInstanceTotal}" />
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
