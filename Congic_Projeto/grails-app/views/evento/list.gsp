
<%@ page import="congic_projeto.Evento"%>

<g:set var="entityName"
	value="${message(code: 'evento.label', default: 'Evento')}" />
<div class="row">
	<div class="col-lg-16">

		<div class="panel-body">
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

							<g:sortableColumn property="data"
								title="${message(code: 'evento.data.label', default: 'Data')}" />

						</tr>
					</thead>
					<tbody>
						<g:each in="${eventoInstanceList}" status="i" var="eventoInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
			<td><a href="#" onclick="carregarPagina('<g:createLink action="show" id="${eventoInstance.id}" />')">
					${fieldValue(bean: eventoInstance, field: "data")}
								</a></td>


							</tr>
						</g:each>
					</tbody>
				</table>
			</div>
			<div class="pagination">
				<g:paginate total="${eventoInstanceTotal}" />
			</div>
		</div>
	</div>
</div>

</body>
</html>
