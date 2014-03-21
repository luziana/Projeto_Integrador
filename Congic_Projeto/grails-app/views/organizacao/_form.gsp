<%@ page import="congic_projeto.Organizacao" %>

<div class="form-group fieldcontain ${hasErrors(bean: organizacaoInstance, field: 'cidade', 'error')} ">
	<label for="cidade">
		<g:message code="organizacao.cidade.label" default="Cidade: " />
		
	</label>
	<g:textField class="form-control" name="cidade" value="${organizacaoInstance?.cidade}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: organizacaoInstance, field: 'coordenacao', 'error')} ">
	<label for="coordenacao">
		<g:message code="organizacao.coordenacao.label" default="Coordenacao: " />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${organizacaoInstance?.coordenacao?}" var="c">
    <li><g:link controller="coordenacao" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="coordenacao" action="create" params="['organizacao.id': organizacaoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'coordenacao.label', default: 'Coordenacao')])}</g:link>
</li>
</ul>

</div>

