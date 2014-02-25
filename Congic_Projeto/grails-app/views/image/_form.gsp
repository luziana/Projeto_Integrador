<%@ page import="congic_projeto.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'arquivo', 'error')} ">
	<label for="arquivo">
		<g:message code="image.arquivo.label" default="Arquivo" />
		
	</label>
	<g:textField name="arquivo" value="${imageInstance?.arquivo}"/>
</div>

