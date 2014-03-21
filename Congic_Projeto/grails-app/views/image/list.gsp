
<%@ page import="congic_projeto.Image" %>

		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		<div class="row">
	<div class="col-lg-16">

		<div class="panel-body">
		<div id="list-image" class="content scaffold-list" role="main">
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

								<g:sortableColumn property="arquivo"
									title="${message(code: 'image.arquivo.label', default: 'Arquivo')}" />

							</tr>
						</thead>
						<tbody>
							<g:each in="${imageInstanceList}" status="i" var="imageInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><g:link action="show" id="${imageInstance.id}">
											${fieldValue(bean: imageInstance, field: "arquivo")}
										</g:link></td>
							<td><a href="#"
										onclick="carregarPagina('<g:createLink action="show" id="${imageInstance.id}" />')">
													${fieldValue(bean: imageInstance, field: "arquivo")}
													</a></td>
							
								</tr>
							</g:each>
						</tbody>
					</table>
				</div>
				<div class="pagination">
				<g:paginate total="${imageInstanceTotal}" />
			</div>
			</div>
		</div>
	</div>
</div>
	</body>
</html>
