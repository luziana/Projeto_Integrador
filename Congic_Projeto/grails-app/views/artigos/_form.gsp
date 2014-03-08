<%@ page import="congic_projeto.Artigos" %>



<div class="fieldcontain ${hasErrors(bean: artigosInstance, field: 'arquivo', 'error')} required">
	<label for="arquivo">
		<g:message code="artigos.arquivo.label" default="Arquivo" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="arquivo" name="arquivo" />
</div>

<div class="fieldcontain ${hasErrors(bean: artigosInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="artigos.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="10000" required="" value="${artigosInstance?.descricao}"/>
</div>

