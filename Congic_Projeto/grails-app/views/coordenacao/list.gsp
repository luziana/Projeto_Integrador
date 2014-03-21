
<%@ page import="congic_projeto.Coordenacao" %>

		<g:set var="entityName" value="${message(code: 'coordenacao.label', default: 'Coordenacao')}" />
		<div class="row">
		<div class="col-lg-16">
				
		<div class="panel-body">
		
		<div id="list-coordenacao" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="panel panel-default">
				 <div class="panel-heading">
				 		<g:message code="default.list.label" args="[entityName]" />
				 </div>
				<table class="table table-striped table-bordered table-hover dataTable no-footer id="dataTables-example" aria-describedby="dataTables-example_info">
				<thead>
					<tr role="row">
					
						<g:sortableColumn property="nome" title="${message(code: 'coordenacao.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="cargo" title="${message(code: 'coordenacao.cargo.label', default: 'Cargo')}" />
					
						<th><g:message code="coordenacao.organizacao.label" default="Organizacao" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${coordenacaoInstanceList}" status="i" var="coordenacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
					
									<td><a href="#"
										onclick="carregarPagina('<g:createLink action="show" id="${coordenacaoInstance.id}" />')">
											${fieldValue(bean: coordenacaoInstance, field: "nome")}
									</a></td>					
						<td>${fieldValue(bean: coordenacaoInstance, field: "cargo")}</td>
					
						<td>${fieldValue(bean: coordenacaoInstance, field: "organizacao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${coordenacaoInstanceTotal}" />
			</div>
		</div>
		</div>
		</div>
		</div>
	</body>
</html>
