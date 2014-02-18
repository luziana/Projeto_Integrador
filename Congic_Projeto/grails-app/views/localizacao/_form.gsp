<%@ page import="congic_projeto.Localizacao" %>



<div class="fieldcontain ${hasErrors(bean: localizacaoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="localizacao.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${localizacaoInstance?.descricao}"/>
</div>

