<%@ page import="congic_projeto.Localizacao"%>

<g:set var="entityName"
	value="${message(code: 'localizacao.label', default: 'Localizacao')}" />
<div class="row">
	<div class="col-lg-12">

		<div class="row">
			<div class="panel-default">
				<div class="panel-heading">
					<g:message code="default.create.label" args="[entityName]" />
					<g:if test="${flash.message}">
						<div class="message" role="status">
							${flash.message}
						</div>
					</g:if>
					<g:hasErrors bean="${localizacaoInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${localizacaoInstance}" var="error">
								<li
									<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
										error="${error}" /></li>
							</g:eachError>
						</ul>
					</g:hasErrors>
				</div>
				<div class="panel-body">
					<div class="col-lg-6">
						<g:form action="save">
							<fieldset class="form">
								<g:render template="form" />
							</fieldset>
							<fieldset class="form">
								<li><a href="#"
								onClick="carregarPagina('<g:createLink controller='cidade' action='create' />')">
									Adcionar Cidade</a></li>
							</fieldset>
							<fieldset class="buttons">
								<g:submitButton name="create" class="save"
									value="${message(code: 'default.button.create.label', default: 'Create')}" />
							</fieldset>
							
						</g:form>

						<div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
<<<<<<< HEAD
	</div>
</div>


</body>
=======
		<div id="create-localizacao" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${localizacaoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${localizacaoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}"/>
				</fieldset>
			</g:form>
			
			<div>
		<li><a href="#" onClick="carregarPagina('<g:createLink controller='cidade' action='create' />')"> Criar Cidade</a></li>
		
	</div>
			
	</body>
>>>>>>> 4535684d01c864494b06f064754402fab1e0ac8d
</html>
