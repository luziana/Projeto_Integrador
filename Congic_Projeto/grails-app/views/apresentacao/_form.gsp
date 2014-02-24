<%@ page import="congic_projeto.Apresentacao" %>



<div class="form-group fieldcontain ${hasErrors(bean: apresentacao_EventoInstance, field: 'descricaoEvento', 'error')} required">
	<label for="descricaoEvento">
		<g:message code="apresentacao_Evento.descricaoEvento.label" default="Descricao Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="descricaoEvento" required="" value="${apresentacao_EventoInstance?.descricaoEvento}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: apresentacao_EventoInstance, field: 'tematica', 'error')} required">
	<label for="tematica">
		<g:message code="apresentacao_Evento.tematica.label" default="Tematica" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="tematica" required="" value="${apresentacao_EventoInstance?.tematica}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: apresentacao_EventoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="apresentacao_Evento.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker class="form-control" name="data" precision="day"  value="${apresentacao_EventoInstance?.data}"  />
</div>

