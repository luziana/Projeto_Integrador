<%@ page import="congic.Hospedagem" %>



<div class="fieldcontain ${hasErrors(bean: hospedagemInstance, field: 'nome_hospedagem', 'error')} ">
	<label for="nome_hospedagem">
		<g:message code="hospedagem.nome_hospedagem.label" default="Nomehospedagem" />
		
	</label>
	<g:textField name="nome_hospedagem" value="${hospedagemInstance?.nome_hospedagem}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: hospedagemInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="hospedagem.endereco.label" default="Endereco" />
		
	</label>
	<g:textField name="endereco" value="${hospedagemInstance?.endereco}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: hospedagemInstance, field: 'contato', 'error')} ">
	<label for="contato">
		<g:message code="hospedagem.contato.label" default="Contato" />
		
	</label>
	<g:textField name="contato" value="${hospedagemInstance?.contato}"/>
</div>

