<%@ page import="congic_projeto.Image"%>

<g:set var="entityName"
	value="${message(code: 'image.label', default: 'Image')}" />
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
					<g:hasErrors bean="${imageInstance}">
						<ul class="errors" role="alert">
							<g:eachError bean="${imageInstance}" var="error">
								<li
									<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
										error="${error}" /></li>
							</g:eachError>
						</ul>
					</g:hasErrors>
				</div>
				<div class="panel-body">
					<div class="col-lg-6">
						<g:form onsubmit="Form(this);return false" url="[resource:imageInstance, action:'save']" enctype="multipart/form-data">
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
</div>
</body>
</html>
