<%@ page import="congic_projeto.Noticia" %>

<div class="form-group fieldcontain ${hasErrors(bean: noticiaInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="noticia.titulo.label" default="Título: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="titulo" required="" value="${noticiaInstance?.titulo}"/>
</div>
<div class="form-group fieldcontain ${hasErrors(bean: noticiaInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="noticia.descricao.label" default="Descrição: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField  class="form-control" name="descricao" value="${fieldValue(bean:staffnoticiaInstance,field: 'descricao')}" width="525" />
</div>


