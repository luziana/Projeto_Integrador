<%@ page import="congic_projeto.Tematicas" %>



<div class="form-group fieldcontain  ${hasErrors(bean: tematicasInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="tematicas.descricao.label" default="Descrição: " />
		
	</label>
	<g:textField class="form-control" name="descricao" value="${tematicasInstance?.descricao}"/>
</div>

<div class="form-group fieldcontain  ${hasErrors(bean: tematicasInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="tematicas.area.label" default="Área: " />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="area" name="area.id" from="${congic_projeto.Area.list()}" optionKey="id" required="" value="${tematicasInstance?.area?.id}" class="many-to-one"/>
</div>

