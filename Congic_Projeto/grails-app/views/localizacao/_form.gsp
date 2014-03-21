<%@ page import="congic_projeto.Localizacao" %>



<div class="form-group fieldcontain ${hasErrors(bean: localizacaoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="localizacao.descricao.label" default="Descrição da Cidade: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea class="form-control" name="descricao" required="" value="${localizacaoInstance?.descricao}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: localizacaoInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="localizacao.cidade.label" default="Cidade: " />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="cidade" name="cidade.id" from="${congic_projeto.Cidade.list()}" optionKey="id" required="" value="${localizacaoInstance?.cidade?.id}" class="many-to-one"/>
</div>

