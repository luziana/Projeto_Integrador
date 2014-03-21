<%@ page import="congic_projeto.Tematicas" %>

<div class="form-group fieldcontain ${hasErrors(bean: tematicasInstance, field: 'descricao', 'error')}  required">
	<label for="descricao">
		<g:message code="tematicas.descricao.label" default="Descricao da Área Temática" />
		
	</label>
	<g:textArea class="form-control"  name="descricao" value="${tematicasInstance?.descricao}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: tematicasInstance, field: 'area', 'error')}  required">
	<label for="area">
		<g:message code="tematicas.area.label" default="Área:" />
	</label>
	<g:select class="form-control" name="area.id" from="${congic_projeto.Area.list()}" multiple="multiple" optionKey="id" size="5" value="${tematicasInstance?.area*.id}" class="many-to-many"/>
</div>

