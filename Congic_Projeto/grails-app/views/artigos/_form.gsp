<%@ page import="congic_projeto.Artigos" %>



<div class="form-group fieldcontain ${hasErrors(bean: artigosInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="artigos.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="titulo" required="" value="${artigosInstance?.titulo}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: artigosInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="artigos.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea class="form-control" name="descricao" cols="40" rows="5" maxlength="10000" required="" value="${artigosInstance?.descricao}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: artigosInstance, field: 'arquivo', 'error')} required">
	<label for="arquivo">
		<g:message code="artigos.arquivo.label" default="Arquivo" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="arquivo" class="form-control" name="arquivo" />
</div>

