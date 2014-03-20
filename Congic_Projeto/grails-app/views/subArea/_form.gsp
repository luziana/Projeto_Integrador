<%@ page import="congic_projeto.SubArea" %>



<div class="form-group fieldcontain ${hasErrors(bean: subAreaInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="subArea.nome.label" default="Nome" />
		
	</label>
	<g:textField class="form-control" name="nome" value="${subAreaInstance?.nome}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: subAreaInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="subArea.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="area" name="area.id" from="${congic_projeto.Area.list()}" optionKey="id" required="" value="${subAreaInstance?.area?.id}" class="many-to-one"/>
</div>

