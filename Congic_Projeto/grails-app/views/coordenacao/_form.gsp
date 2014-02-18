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

