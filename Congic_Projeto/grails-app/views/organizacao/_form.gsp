<%@ page import="congic_projeto.Organizacao" %>



<div class="fieldcontain ${hasErrors(bean: organizacaoInstance, field: 'equipe', 'error')} ">
	<label for="equipe">
		<g:message code="organizacao.equipe.label" default="Equipe" />
		
	</label>
	<g:textField name="equipe" value="${organizacaoInstance?.equipe}"/>
</div>

