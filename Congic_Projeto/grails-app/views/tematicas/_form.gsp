<%@ page import="congic_projeto.Tematicas" %>



<div class="fieldcontain ${hasErrors(bean: tematicasInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="tematicas.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${tematicasInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tematicasInstance, field: 'area', 'error')} ">
	<label for="area">
		<g:message code="tematicas.area.label" default="Area" />
		
	</label>
	<g:select name="area" from="${congic_projeto.Area.list()}" multiple="multiple" optionKey="id" size="5" value="${tematicasInstance?.area*.id}" class="many-to-many"/>
</div>

