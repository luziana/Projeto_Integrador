
<%@ page import="congic_projeto.Artigos"%>

<g:set var="entityName"
	value="${message(code: 'artigos.label', default: 'Artigos')}" />
<div class="row">
	<div class="col-lg-16">

		<div class="panel-body">
			<div id="list-artigos" class="content scaffold-list" role="main">

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

								<g:sortableColumn property="arquivo"
									title="${message(code: 'artigos.arquivo.label', default: 'Arquivo')}" />

								<g:sortableColumn property="descricao"
									title="${message(code: 'artigos.descricao.label', default: 'Descricao')}" />

							</tr>
						</thead>
						<tbody>
							<g:each in="${artigosInstanceList}" status="i"
								var="artigosInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><g:link action="show" id="${artigosInstance.id}">
											${message(code: 'artigos.arquivo.label', default: 'Arquivo')}
										</g:link></td>

									<td>
										${fieldValue(bean: artigosInstance, field: "descricao")}
									</td>

								</tr>
							</g:each>
						</tbody>
					</table>
				</div>

				<div class="pagination">
					<g:paginate total="${artigosInstanceTotal}" />
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
