<%@ page import="congic_projeto.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'arquivo', 'error')} required">
	<label for="arquivo">
		<g:message code="image.arquivo.label" default="Arquivo" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="arquivo" name="arquivo" />
</div>

