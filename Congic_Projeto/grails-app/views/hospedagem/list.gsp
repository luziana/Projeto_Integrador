
<%@ page import="congic_projeto.Hospedagem"%>

<g:set var="entityName"
	value="${message(code: 'hospedagem.label', default: 'Hospedagem')}" />

<div class="row">
	<div class="col-lg-16">

		<div class="panel-body">
			<div id="list-hospedagem" class="content scaffold-list panel panel-default" role="main">
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

									<g:sortableColumn property="nome_hospedagem"
										title="${message(code: 'hospedagem.nome_hospedagem.label', default: 'Nome da Hospedagem')}" />

									<g:sortableColumn property="endereco"
										title="${message(code: 'hospedagem.endereco.label', default: 'Endereço')}" />

									<g:sortableColumn property="contato"
										title="${message(code: 'hospedagem.contato.label', default: 'Contato')}" />
							</tr>
						</thead>
						<tbody>
							<g:each in="${hospedagemInstanceList}" status="i"
								var="hospedagemInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><a href="#"
										onclick="carregarPagina('<g:createLink action="show" id="${hospedagemInstance.id}" />')">
											${fieldValue(bean: hospedagemInstance, field: "nome_hospedagem")}
									</a></td>


									<td>
										${fieldValue(bean: hospedagemInstance, field: "endereco")}
									</td>

									<td>
										${fieldValue(bean: hospedagemInstance, field: "contato")}
									</td>

								</tr>
							</g:each>
						</tbody>
					</table>
				</div>
				<div class="pagination">
					<g:paginate total="${hospedagemInstanceTotal}" />
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>