<%@ page import="congic_projeto.Areas_Tematicas" %>



<div class="fieldcontain ${hasErrors(bean: areas_TematicasInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="areas_Tematicas.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${areas_TematicasInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: areas_TematicasInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="areas_Tematicas.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="area" required="" value="${areas_TematicasInstance?.area}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: areas_TematicasInstance, field: 'subArea', 'error')} required">
	<label for="subArea">
		<g:message code="areas_Tematicas.subArea.label" default="Sub Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subArea" required="" value="${areas_TematicasInstance?.subArea}"/>
</div>

