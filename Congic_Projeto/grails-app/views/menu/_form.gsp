<%@ page import="congic_projeto.Menu" %>



<div class="form-group fieldcontain  ${hasErrors(bean: menuInstance, field: 'link', 'error')} required">
	<label for="link">
		<g:message code="menu.link.label" default="Link: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="link" required="" value="${menuInstance?.link}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: menuInstance, field: 'nome_link', 'error')} required">
	<label for="nome_link">
		<g:message code="menu.nome_link.label" default="Nome do Link: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="nome_link" required="" value="${menuInstance?.nome_link}"/>
</div>

