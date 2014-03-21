<%@ page import="congic_projeto.Cidade" %>



<div class="fieldcontain ${hasErrors(bean: cidadeInstance, field: 'nomeCidade', 'error')} required">
	<label for="nomeCidade">
		<g:message code="cidade.nomeCidade.label" default="Nome Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nomeCidade" required="" value="${cidadeInstance?.nomeCidade}"/>
</div>

	