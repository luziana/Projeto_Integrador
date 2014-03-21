
<%@ page import="congic_projeto.Organizacao"%>

<g:set var="entityName"
	value="${message(code: 'organizacao.label', default: 'Organização: ')}" />
<div class="row">
	<div class="col-lg-16">

		<div class="panel-body">
			<div id="list-organizacao" class="content scaffold-list" role="main">
				
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

								<g:sortableColumn property="cidade"
									title="${message(code: 'organizacao.cidade.label', default: 'Cidade')}" />

							</tr>
						</thead>
						<tbody>
							<g:each in="${organizacaoInstanceList}" status="i"
								var="organizacaoInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><g:link action="show" id="${organizacaoInstance.id}">
											${fieldValue(bean: organizacaoInstance, field: "cidade")}
										</g:link></td>

								</tr>
							</g:each>
						</tbody>
					</table>
				</div>
				<div class="pagination">
					<g:paginate total="${organizacaoInstanceTotal}" />
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>
