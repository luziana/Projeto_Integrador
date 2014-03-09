<%@ page import="congic_projeto.Area" %>



<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="area.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${areaInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'tematica', 'error')} required">
	<label for="tematica">
		<g:message code="area.tematica.label" default="Tematica" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tematica" name="tematica.id" from="${congic_projeto.Tematicas.list()}" optionKey="id" required="" value="${areaInstance?.tematica?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'subArea', 'error')} ">
	<label for="subArea">
		<g:message code="area.subArea.label" default="Sub Area" />
		
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

