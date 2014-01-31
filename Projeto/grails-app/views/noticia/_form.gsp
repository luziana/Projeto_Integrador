<%@ page import="projeto.Noticia" %>



<div class="fieldcontain ${hasErrors(bean: noticiaInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="noticia.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="10000" required="" value="${noticiaInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: noticiaInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="noticia.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${noticiaInstance?.titulo}"/>
</div>

