
<%@ page import="congic_projeto.Image" %>
<div class="row">
		<g:set var="entityName" value="${message(code: 'image.label', default: 'Image')}" />
		</div>
<div class="col-lg-12">
	<div class="panel-default">
		<div class="panel-heading">
			<g:message code="default.show.label" args="[entityName]" />
		</div>
		<div class="panel-body">
			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
				</div>
			</g:if>
		<div id="show-image" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list image">
			
				<g:if test="${imageInstance?.arquivo}">
				<li class="fieldcontain">
					<span id="arquivo-label" class="property-label"><g:message code="image.arquivo.label" default="Arquivo" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form onsubmit="Form(this);return false"
				url="[resource:imagetoInstance, action:'delete']">
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${imageInstance?.id}" />
<a href="#"	onclick="carregarPagina('<g:createLink action="edit" id="${imageInstance.id}" />')">
						<g:message code="default.button.edit.label" default="Edit" />
					</a>					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
