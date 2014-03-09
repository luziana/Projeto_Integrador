<%@ page import="congic_projeto.Hospedagem" %>



<div class="fieldcontain ${hasErrors(bean: hospedagemInstance, field: 'nome_hospedagem', 'error')} required">
	<label for="nome_hospedagem">
		<g:message code="hospedagem.nome_hospedagem.label" default="Nomehospedagem" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome_hospedagem" required="" value="${hospedagemInstance?.nome_hospedagem}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: hospedagemInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="hospedagem.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco" required="" value="${hospedagemInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: hospedagemInstance, field: 'contato', 'error')} required">
	<label for="contato">
		<g:message code="hospedagem.contato.label" default="Contato" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contato" required="" value="${hospedagemInstance?.contato}"/>
</div>

