<%@ page import="congic_projeto.Organizacao" %>



<div class="form-group fieldcontain ${hasErrors(bean: organizacaoInstance, field: 'equipe', 'error')} ">
	<label for="equipe">
		<g:message code="organizacao.equipe.label" default="Equipe" />
		
	</label>
	<g:textField class="form-control" name="equipe" value="${organizacaoInstance?.equipe}"/>
</div>

