
<g:set var="entityName"
	value="${message(code: 'noticia.label', default: 'Noticia')}" />

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
					<table
						class="table table-striped table-bordered table-hover dataTable no-footer id="
						dataTables-example" aria-describedby="dataTables-example_info">
						<thead>
							<tr role="row">

								<g:sortableColumn property="titulo"
									title="${message(code: 'noticia.titulo.label', default: 'Titulo')}" />

								<g:sortableColumn property="descricao"
									title="${message(code: 'noticia.descricao.label', default: 'Descricao')}" />

							</tr>
						</thead>
						<tbody>
							<g:each in="${noticiaInstanceList}" status="i"
								var="noticiaInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">


									<td><a href="#"
										onclick="carregarPagina('<g:createLink action="show" id="${noticiaInstance.id}" />')">
											${fieldValue(bean: noticiaInstance, field: "titulo")}
									</a></td>


									<td>
										${fieldValue(bean: noticiaInstance, field: "descricao")}
									</td>

								</tr>
							</g:each>
						</tbody>
					</table>
				</div>
				<div class="pagination">
					<g:paginate total="${noticiaInstanceTotal}" />
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>
