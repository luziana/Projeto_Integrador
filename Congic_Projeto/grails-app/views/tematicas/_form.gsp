<%@ page import="congic_projeto.Tematicas" %>



<div class="fieldcontain ${hasErrors(bean: tematicasInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="tematicas.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${tematicasInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tematicasInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="tematicas.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="area" required="" value="${tematicasInstance?.area}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tematicasInstance, field: 'subArea', 'error')} required">
	<label for="subArea">
		<g:message code="tematicas.subArea.label" default="Sub Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subArea" required="" value="${tematicasInstance?.subArea}"/>
</div>

