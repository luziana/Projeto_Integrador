
<%@ page import="congic_projeto.Menu"%>

<g:set var="entityName"
	value="${message(code: 'menu.label', default: 'Menu')}" />
<div class="row">
	<div class="col-lg-16">

		<div class="panel-body">
			<div id="list-menu" class="content scaffold-list" role="main">
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

								<g:sortableColumn property="link"
									title="${message(code: 'menu.link.label', default: 'Link')}" />

								<g:sortableColumn property="nome_link"
									title="${message(code: 'menu.nome_link.label', default: 'Nomelink')}" />

							</tr>
						</thead>
						<tbody>
							<g:each in="${menuInstanceList}" status="i" var="menuInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><a href="#"
										onclick="carregarPagina('<g:createLink action="show" id="${menuInstance.id}" />')">
											${fieldValue(bean: menuInstance, field: "link")}
									</a></td>


									<td>
										${fieldValue(bean: menuInstance, field: "nome_link")}
									</td>

								</tr>
							</g:each>
						</tbody>
					</table>
				</div>
				<div class="pagination">
					<g:paginate total="${menuInstanceTotal}" />
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>