<%@ page import="congic_projeto.Tematicas" %>



<div class="fieldcontain ${hasErrors(bean: tematicasInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="tematicas.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${tematicasInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tematicasInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="tematicas.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="area" name="area.id" from="${congic_projeto.Area.list()}" optionKey="id" required="" value="${tematicasInstance?.area?.id}" class="many-to-one"/>
</div>

