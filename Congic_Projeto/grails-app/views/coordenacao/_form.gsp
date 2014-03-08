<%@ page import="congic_projeto.Coordenacao" %>



<div class="fieldcontain ${hasErrors(bean: coordenacaoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="coordenacao.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${coordenacaoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordenacaoInstance, field: 'cargo', 'error')} ">
	<label for="cargo">
		<g:message code="coordenacao.cargo.label" default="Cargo" />
		
	</label>
	<g:textField name="cargo" value="${coordenacaoInstance?.cargo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coordenacaoInstance, field: 'organizacao', 'error')} required">
	<label for="organizacao">
		<g:message code="coordenacao.organizacao.label" default="Organizacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="organizacao" name="organizacao.id" from="${congic_projeto.Organizacao.list()}" optionKey="id" required="" value="${coordenacaoInstance?.organizacao?.id}" class="many-to-one"/>
</div>

