<%@ page import="congic_projeto.Tematicas" %>

<div class="form-group fieldcontain ${hasErrors(bean: tematicasInstance, field: 'descricao', 'error')}  required">
	<label for="descricao">
		<g:message code="tematicas.descricao.label" default="Descricao da Área Temática" />
		
	</label>
	<g:textArea class="form-control"  name="descricao" value="${tematicasInstance?.descricao}"/>
</div>

<<<<<<< HEAD
<div class="form-group fieldcontain ${hasErrors(bean: tematicasInstance, field: 'area', 'error')}  required">
	<label for="area">
		<g:message code="tematicas.area.label" default="Área:" />
	</label>
	<g:select class="form-control" name="area.id" from="${congic_projeto.Area.list()}" multiple="multiple" optionKey="id" size="5" value="${tematicasInstance?.area*.id}" class="many-to-many"/>
=======
<<<<<<< HEAD
<div class="fieldcontain ${hasErrors(bean: tematicasInstance, field: 'area', 'error')} ">
	<label for="area">
		<g:message code="tematicas.area.label" default="Area" />
		
=======
<div class="form-group fieldcontain  ${hasErrors(bean: tematicasInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="tematicas.area.label" default="Área: " />
		<span class="required-indicator">*</span>
>>>>>>> 385628d7e72dada11294e09824de0c9a4bda3b60
	</label>
	<g:select name="area" from="${congic_projeto.Area.list()}" multiple="multiple" optionKey="id" size="5" value="${tematicasInstance?.area*.id}" class="many-to-many"/>
>>>>>>> 4535684d01c864494b06f064754402fab1e0ac8d
</div>

