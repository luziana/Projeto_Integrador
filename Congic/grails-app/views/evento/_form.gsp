<%@ page import="congic.Evento" %>



<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'apresentacao', 'error')} required">
	<label for="apresentacao">
		<g:message code="evento.apresentacao.label" default="Apresentacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="apresentacao" name="apresentacao.id" from="${congic.Apresentacao.list()}" optionKey="id" required="" value="${eventoInstance?.apresentacao?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'tematica', 'error')} ">
	<label for="tematica">
		<g:message code="evento.tematica.label" default="Tematica" />
		
	</label>
	<g:textField name="tematica" value="${eventoInstance?.tematica}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="evento.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${eventoInstance?.data}"  />
</div>

