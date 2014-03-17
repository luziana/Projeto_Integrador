<%@ page import="congic_projeto.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'arquivo', 'error')} ">
	<label for="arquivo">
		<g:message code="image.arquivo.label" default="Arquivo" />
		
	</label>
	<input type="file" id="arquivo" name="arquivo" />
</div>

