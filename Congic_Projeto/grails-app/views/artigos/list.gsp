
<%@ page import="congic_projeto.Artigos" %>

		<g:set var="entityName" value="${message(code: 'artigos.label', default: 'Artigos')}" />
		<div class="row">
	<div class="col-lg-16">
		
		<div class="panel-body">
			<div id="list-artigos"
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
						<table class="table">
							<thead>
								<tr role="row">
					
						<g:sortableColumn property="titulo" title="${message(code: 'artigos.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'artigos.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="arquivo" title="${message(code: 'artigos.arquivo.label', default: 'Arquivo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${artigosInstanceList}" status="i" var="artigosInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<%--<td><g:link action="show" id="${artigosInstance.id}">${fieldValue(bean: artigosInstance, field: "titulo")}</g:link></td>--%>
						<td><a href="#" onclick="carregarPagina('<g:createLink action="show" id="${artigosInstance.id}" />')">
											${fieldValue(bean: artigosInstance, field: "titulo")}
									</a></td>
						<td>${fieldValue(bean: artigosInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: artigosInstance, field: "arquivo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${artigosInstanceTotal}" />
			</div>
			</div>
			</div>
			</div>
			</div>
		</div>
	</body>
</html>
