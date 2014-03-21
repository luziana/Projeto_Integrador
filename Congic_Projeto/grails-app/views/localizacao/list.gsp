
<%@ page import="congic_projeto.Localizacao"%>

<g:set var="entityName"
	value="${message(code: 'localizacao.label', default: 'Localizacao')}" />

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

							<g:sortableColumn property="descricao"
								title="${message(code: 'localizacao.descricao.label', default: 'Descricao')}" />

							<th><g:message code="localizacao.cidade.label"
									default="Cidade" /></th>

						</tr>
					</thead>
					<tbody>
						<g:each in="${localizacaoInstanceList}" status="i"
							var="localizacaoInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

								<td><a href="#"
										onclick="carregarPagina('<g:createLink action="show" id="${localizacaoInstance.id}" />')">
											${fieldValue(bean: localizacaoInstance, field: "descricao")}
									</a></td>


								<td>
									${fieldValue(bean: localizacaoInstance, field: "cidade")}
								</td>

							</tr>
						</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${localizacaoInstanceTotal}" />
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>
