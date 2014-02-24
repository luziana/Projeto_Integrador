<%@ page import="congic_projeto.Hospedagem" %>



<div class="form-group fieldcontain ${hasErrors(bean: hospedagemInstance, field: 'nome_hospedagem', 'error')} ">
	<label for="nome_hospedagem">
		<g:message code="hospedagem.nome_hospedagem.label" default="Nomehospedagem" />
		
	</label>
	<g:textField class="form-control" name="nome_hospedagem" value="${hospedagemInstance?.nome_hospedagem}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: hospedagemInstance, field: 'endereco', 'error')} ">
	<label for="endereco">
		<g:message code="hospedagem.endereco.label" default="Endereco" />
		
	</label>
	<g:textField class="form-control" name="endereco" value="${hospedagemInstance?.endereco}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: hospedagemInstance, field: 'contato', 'error')} ">
	<label for="contato">
		<g:message code="hospedagem.contato.label" default="Contato" />
		
	</label>
	<g:textField class="form-control" name="contato" value="${hospedagemInstance?.contato}"/>
</div>

