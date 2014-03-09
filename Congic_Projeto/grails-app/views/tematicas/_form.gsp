<%@ page import="congic_projeto.Tematicas" %>



<div class="fieldcontain ${hasErrors(bean: tematicasInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="tematicas.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${tematicasInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tematicasInstance, field: 'area', 'error')} ">
	<label for="area">
		<g:message code="tematicas.area.label" default="Area" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${tematicasInstance?.area?}" var="a">
    <li><g:link controller="area" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="area" action="create" params="['tematicas.id': tematicasInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'area.label', default: 'Area')])}</g:link>
</li>
</ul>

</div>

