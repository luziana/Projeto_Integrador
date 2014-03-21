<%@ page import="congic_projeto.Artigos" %>

<div class="form-group fieldcontain ${hasErrors(bean: artigosInstance, field: 'Descrição', 'error')} required">
	<label for="descricao">
		<g:message code="artigos.descricao.label" default="Descrição: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea class="form-control" name="descricao" cols="40" rows="5" maxlength="10000" required="" value="${artigosInstance?.descricao}"/>
</div>

<div class="form-group fieldcontain  ${hasErrors(bean: artigosInstance, field: 'Arquivo: ', 'error')} required">
	<label for="arquivo">
		<g:message code="artigos.arquivo.label" default="Arquivo: " />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="arquivo" name="arquivo" />
</div>

