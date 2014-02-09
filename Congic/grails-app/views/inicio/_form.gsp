<%@ page import="congic.Inicio" %>



<div class="fieldcontain ${hasErrors(bean: inicioInstance, field: 'noticia', 'error')} ">
	<label for="noticia">
		<g:message code="inicio.noticia.label" default="Noticia" />
		
	</label>
	<g:textField name="noticia" value="${inicioInstance?.noticia}"/>
</div>

