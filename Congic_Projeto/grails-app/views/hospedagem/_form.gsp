<%@ page import="congic_projeto.Hospedagem" %>

<div class="form-group fieldcontain ${hasErrors(bean: hospedagemInstance, field: 'nome_hospedagem', 'error')} required">
	<label for="nome_hospedagem">
		<g:message code="hospedagem.nome_hospedagem.label" default="Nome Hospedagem: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="nome_hospedagem" required="" value="${hospedagemInstance?.nome_hospedagem}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: hospedagemInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="hospedagem.endereco.label" default="Endereço: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField  class="form-control" name="endereco" required="" value="${hospedagemInstance?.endereco}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: hospedagemInstance, field: 'contato', 'error')} required">
	<label for="contato">
		<g:message code="hospedagem.contato.label" default="Contato: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="contato" required="" value="${hospedagemInstance?.contato}"/>
</div>

