

		<g:set var="entityName" value="${message(code: 'tituloPaginas.label', default: 'Titulos de Todas as Páginas')}" />
		
<div class="row">
	<div class="col-lg-16">
		<div class="panel-body">
		
		<div id="list-tituloPaginas" class="content scaffold-list" role="main">
			
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<div class="panel panel-default">
				 <div class="panel-heading">
				 		<g:message code="default.list.label" args="[entityName]" />
				</div>
			
			<table class="table">
				<thead>
					<tr role="row">
					
						<g:sortableColumn property="tituloInicio" title="${message(code: 'tituloPaginas.tituloInicio.label', default: 'Titulo Inicio')}" />
					
						<g:sortableColumn property="subtituloInicio" title="${message(code: 'tituloPaginas.subtituloInicio.label', default: 'Subtitulo Inicio')}" />
					
						<g:sortableColumn property="titulApresentacao" title="${message(code: 'tituloPaginas.titulApresentacao.label', default: 'Titul Apresentacao')}" />
					
						<g:sortableColumn property="subtituloApresentacao" title="${message(code: 'tituloPaginas.subtituloApresentacao.label', default: 'Subtitulo Apresentacao')}" />
					
						<g:sortableColumn property="tituloOrganizacao" title="${message(code: 'tituloPaginas.tituloOrganizacao.label', default: 'Titulo Organizacao')}" />
					
						<g:sortableColumn property="subtituloOrganizacao" title="${message(code: 'tituloPaginas.subtituloOrganizacao.label', default: 'Subtitulo Organizacao')}" />
					
						<g:sortableColumn property="tituloLocalizacao" title="${message(code: 'tituloPaginas.tituloLocalizacao.label', default: 'Titulo Localizacao')}" />
					
						<g:sortableColumn property="subtituloLocalizacao" title="${message(code: 'tituloPaginas.subtituloLocalizacao.label', default: 'Subtitulo Localizacao')}" />
					</tr>
					</thead>	
					
					<tbody>
				<g:each in="${tituloPaginasInstanceList}" status="i" var="tituloPaginasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><a href="#" onclick="carregarPagina('<g:createLink action="show" id="${tituloPaginasInstance.id}"/>')">
											${fieldValue(bean: tituloPaginasInstance, field: "tituloInicio")}
									</a></td>
						
						<td>${fieldValue(bean: tituloPaginasInstance, field: "subtituloInicio")}</td>
					
						<td>${fieldValue(bean: tituloPaginasInstance, field: "titulApresentacao")}</td>
					
						<td>${fieldValue(bean: tituloPaginasInstance, field: "subtituloApresentacao")}</td>
				
						<td>${fieldValue(bean: tituloPaginasInstance, field: "tituloOrganizacao")}</td>
					
						<td>${fieldValue(bean: tituloPaginasInstance, field: "subtituloOrganizacao")}</td>
						
						<td>${fieldValue(bean: tituloPaginasInstance, field: "tituloLocalizacao")}</td>
					
						<td>${fieldValue(bean: tituloPaginasInstance, field: "subtituloLocalizacao")}</td>
						</tr>
				</g:each>
				</tbody>
			</table>
					<table class="table">
				<thead>
					<thead>
					<tr role="row">	
						<g:sortableColumn property="tituloHospedagem" title="${message(code: 'tituloPaginas.tituloHospedagem.label', default: 'Titulo Hospedagem')}" />
					
						<g:sortableColumn property="subtituloHospedagem" title="${message(code: 'tituloPaginas.subtituloHospedagem.label', default: 'Subtitulo Hospedagem')}" />
						
						<g:sortableColumn property="tituloTematicas" title="${message(code: 'tituloPaginas.tituloAreasTematicas.label', default: 'Titulo Tematicas')}" />
					
						<g:sortableColumn property="subtituloTematicas" title="${message(code: 'tituloPaginas.subtituloAreasTematicas.label', default: 'Subtitulo Tematicas')}" />
						
						<g:sortableColumn property="tituloProgramacao" title="${message(code: 'tituloPaginas.tituloProgramacao.label', default: 'Titulo Programacao')}" />
					
						<g:sortableColumn property="subtituloProgramacao" title="${message(code: 'tituloPaginas.subtituloProgramacao.label', default: 'Subtitulo Programacao')}" />
						
						<g:sortableColumn property="tituloArtigos" title="${message(code: 'tituloPaginas.tituloArtigos.label', default: 'Titulo Artigos')}" />
					
						<g:sortableColumn property="subtituloArigos" title="${message(code: 'tituloPaginas.subtituloArigos.label', default: 'Subtitulo Artigos')}" />
						
						</tr>
				</thead>
				
						
						<g:each in="${tituloPaginasInstanceList}" status="i" var="tituloPaginasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						
						<td>${fieldValue(bean: tituloPaginasInstance, field: "tituloHospedagem")}</td>
					
						<td>${fieldValue(bean: tituloPaginasInstance, field: "subtituloHospedagem")}</td>
						
						<td>${fieldValue(bean: tituloPaginasInstance, field: "tituloAreasTematicas")}</td>
					
						<td>${fieldValue(bean: tituloPaginasInstance, field: "subtituloAreasTematicas")}</td>
						
						<td>${fieldValue(bean: tituloPaginasInstance, field: "tituloProgramacao")}</td>
					
						<td>${fieldValue(bean: tituloPaginasInstance, field: "subtituloProgramacao")}</td>
						
						<td>${fieldValue(bean: tituloPaginasInstance, field: "tituloArtigos")}</td>
					
						<td>${fieldValue(bean: tituloPaginasInstance, field: "subtituloArigos")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
			<div class="pagination">
				<g:paginate total="${tituloPaginasInstanceTotal}" />
			</div>
				</div>
				</div>
				</div>
			</div>
	</body>
</html>
