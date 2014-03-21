
<%@ page import="congic_projeto.Minicurso" %>

		<g:set var="entityName" value="${message(code: 'minicurso.label', default: 'Minicurso')}" />
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

							<g:sortableColumn property="nome"
								title="${message(code: 'minicurso.nome.label', default: 'Nome')}" />

							<g:sortableColumn property="hora"
								title="${message(code: 'minicurso.hora.label', default: 'Hora')}" />

							<g:sortableColumn property="ministrante"
								title="${message(code: 'minicurso.ministrante.label', default: 'Ministrante')}" />

							<g:sortableColumn property="descricao"
								title="${message(code: 'minicurso.descricao.label', default: 'Descricao')}" />

							<th><g:message code="minicurso.evento.label"
									default="Evento" /></th>

						</tr>
					</thead>
					<tbody>
						<g:each in="${minicursoInstanceList}" status="i"
							var="minicursoInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

								<td><g:link action="show" id="${minicursoInstance.id}">
										${fieldValue(bean: minicursoInstance, field: "nome")}
									</g:link></td>

								<td>
									${fieldValue(bean: minicursoInstance, field: "hora")}
								</td>

								<td>
									${fieldValue(bean: minicursoInstance, field: "ministrante")}
								</td>

								<td>
									${fieldValue(bean: minicursoInstance, field: "descricao")}
								</td>

								<td>
									${fieldValue(bean: minicursoInstance, field: "evento")}
								</td>

							</tr>
						</g:each>
					</tbody>
				</table>
			</div>
			<div class="pagination">
				<g:paginate total="${minicursoInstanceTotal}" />
			</div>
		</div>
	</div>
</div>
</body>
</html>
