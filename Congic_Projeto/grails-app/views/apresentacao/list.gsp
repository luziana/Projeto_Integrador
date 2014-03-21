
<g:set var="entityName"
	value="${message(code: 'apresentacao_Evento.label', default: 'Apresentação')}" />

<div class="row">
	<div class="col-lg-16">

		<div class="panel-body">
			<div id="list-apresentacao"
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

								<g:sortableColumn property="descricaoEvento"
									title="${message(code: 'apresentacao_Evento.descricaoEvento.label', default: 'Descricao Evento')}" />

								<g:sortableColumn property="tematica"
									title="${message(code: 'apresentacao_Evento.tematica.label', default: 'Tematica')}" />

								<g:sortableColumn property="data"
									title="${message(code: 'apresentacao_Evento.data.label', default: 'Data')}" />

							</tr>
						</thead>
						<tbody>
							<g:each in="${apresentacao_EventoInstanceList}" status="i"
								var="apresentacao_EventoInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><a href="#"
										onclick="carregarPagina('<g:createLink action="show" id="${apresentacao_EventoInstance.id}" />')">
											${fieldValue(bean: apresentacao_EventoInstance, field: "descricaoEvento")}
									</a></td>




									<td>
										${fieldValue(bean: apresentacao_EventoInstance, field: "tematica")}
									</td>

									<td><g:formatDate
											date="${apresentacao_EventoInstance.data}" /></td>

								</tr>
							</g:each>
						</tbody>
					</table>
				</div>
				<div class="pagination">
					<g:paginate total="${apresentacao_EventoInstanceTotal}" />
				</div>
			</div>
		</div>
	</div>
</div>
</body>
			</html>