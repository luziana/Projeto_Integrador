<%@ page import="congic_projeto.Area" %>



<div class="form-group fieldcontain ${hasErrors(bean: areaInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="area.nome.label" default="Nome: " />
		
	</label>
	<g:textField class="form-control" name="nome" value="${areaInstance?.nome}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: areaInstance, field: 'subArea', 'error')} ">
	<label for="subArea">
		<g:message code="area.subArea.label" default="Sub Area: " />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${areaInstance?.subArea?}" var="s">
    <li><g:link controller="subArea" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="subArea" action="create" params="['area.id': areaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'subArea.label', default: 'SubArea')])}</g:link>
</li>
</ul>

</div>

