
<%@ page import="congic_projeto.Palestra" %>

		<g:set var="entityName" value="${message(code: 'palestra.label', default: 'Palestra')}" />
		
<div class="row">
	<div class="col-lg-16">

		<div class="panel-body">
			
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
					
						<g:sortableColumn property="nome" title="${message(code: 'palestra.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="hora" title="${message(code: 'palestra.hora.label', default: 'Hora')}" />
					
						<g:sortableColumn property="ministrante" title="${message(code: 'palestra.ministrante.label', default: 'Ministrante')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'palestra.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="palestra.evento.label" default="Evento" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${palestraInstanceList}" status="i" var="palestraInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${palestraInstance.id}">${fieldValue(bean: palestraInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: palestraInstance, field: "hora")}</td>
					
						<td>${fieldValue(bean: palestraInstance, field: "ministrante")}</td>
					
						<td>${fieldValue(bean: palestraInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: palestraInstance, field: "evento")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${palestraInstanceTotal}" />
			</div>
		</div>
	</div>
</div>
	</body>
</html>
