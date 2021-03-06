<%@ page import="congic_projeto.Minicurso"%>

<g:set var="entityName"
	value="${message(code: 'minicurso.label', default: 'Minicurso')}" />
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
					<g:hasErrors bean="${minicursoInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${minicursoInstance}" var="error">
								<li
									<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
										error="${error}" /></li>
							</g:eachError>
						</ul>
					</g:hasErrors>
				</div>
				<div class="panel-body">
					<div class="col-lg-6">
						<g:form onsubmit="Form(this);return false" url="[resource:minicursoInstance, action:'save']">
							<fieldset class="form">
								<g:render template="form" />
							</fieldset>
							<fieldset class="buttons">
								<g:submitButton name="create" class="save"
									value="${message(code: 'default.button.create.label', default: 'Create')}" />
							</fieldset>
						</g:form>
					</div>
				</div>
			</div>
		</div>

	</div>
	</body>
	</html>