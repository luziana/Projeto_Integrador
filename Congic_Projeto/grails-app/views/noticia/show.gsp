
<%@ page import="congic_projeto.Noticia" %>

		<g:set var="entityName" value="${message(code: 'noticia.label', default: 'Noticia')}" />
			<div class="row">
			
		</div>
		<div class="col-lg-12">
			<div class="panel-default">
				<div class="panel-heading">
					<g:message code="default.show.label" args="[entityName]" />
				</div>
				<div class="panel-body">
					<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
		<div id="show-noticia" class="content scaffold-show" role="main">
		
			<ol class="property-list noticia">
			
				<g:if test="${noticiaInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="noticia.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${noticiaInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${noticiaInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="noticia.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${noticiaInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
			</ol>
						<g:form onsubmit="Form(this);return false" url="[resource:noticiaInstance, action:'delete']" >
			
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${noticiaInstance?.id}" />
					<g:link class="edit" action="edit" id="${noticiaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
