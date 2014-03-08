<%@ page import="congic_projeto.Noticia" %>
<resource:richTextEditor type="advanced" />

<div class="form-group fieldcontain ${hasErrors(bean: noticiaInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="noticia.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="titulo" required="" value="${noticiaInstance?.titulo}"/>
</div>
<div class="form-group fieldcontain ${hasErrors(bean: noticiaInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="noticia.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<richui:richTextEditor class="form-control" name="descricao" value="${noticiaInstance?.descricao}" width="525" />
</div>


