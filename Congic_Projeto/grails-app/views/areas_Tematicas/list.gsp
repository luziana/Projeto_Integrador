
		<g:set var="entityName" value="${message(code: 'areas_Tematicas.label', default: 'Areas_Tematicas')}" />
				<div id="list-areas_Tematicas" class="content scaffold-list panel panel-default" role="main">
		<div class="panel-heading">
		<a href="#list-areas_Tematicas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-areas_Tematicas" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'areas_Tematicas.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="area" title="${message(code: 'areas_Tematicas.area.label', default: 'Area')}" />
					
						<g:sortableColumn property="subArea" title="${message(code: 'areas_Tematicas.subArea.label', default: 'Sub Area')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${areas_TematicasInstanceList}" status="i" var="areas_TematicasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${areas_TematicasInstance.id}">${fieldValue(bean: areas_TematicasInstance, field: "descricao")}</g:link></td>
					
						<td>${fieldValue(bean: areas_TematicasInstance, field: "area")}</td>
					
						<td>${fieldValue(bean: areas_TematicasInstance, field: "subArea")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${areas_TematicasInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
