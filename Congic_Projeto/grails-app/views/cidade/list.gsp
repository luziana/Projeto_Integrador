
<%@ page import="congic_projeto.Cidade" %>

		<g:set var="entityName" value="${message(code: 'cidade.label', default: 'Cidade')}" />
		<div class="row">
	<div class="col-lg-16">

		<div class="panel-body">
			<div id="list-cidade" class="content scaffold-list" role="main">

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
					
						<g:sortableColumn property="nomeCidade" title="${message(code: 'cidade.nomeCidade.label', default: 'Nome Cidade')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cidadeInstanceList}" status="i" var="cidadeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
					
					<td><a href="#"
								onclick="carregarPagina('<g:createLink action="show" id="${cidadeInstance.id}" />')">
								${fieldValue(bean: cidadeInstance, field: "nomeCidade")}
									</a></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cidadeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
