<%@ page import="congic_projeto.Apresentacao" %>
<resource:dateChooser />

<div class="form-group fieldcontain ${hasErrors(bean: apresentacao_EventoInstance, field: 'tematica', 'error')} required">
	<label for="tematica">
		<g:message code="apresentacao_Evento.tematica.label" default="Temática: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="tematica" required="" value="${apresentacao_EventoInstance?.tematica}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: apresentacao_EventoInstance, field: 'descricaoEvento', 'error')} required">
	<label for="descricaoEvento">
		<g:message code="apresentacao_Evento.descricaoEvento.label" default="Descrição do Evento: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea class="form-control" name="descricaoEvento" required="" value="${apresentacao_EventoInstance?.descricaoEvento}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: apresentacao_EventoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="apresentacao_Evento.data.label" default="Data de Realização: " />
		<span class="required-indicator">*</span>
	</label>
<richui:dateChooser class="form-control" name="data" format="dd/MM/yyyy" value="${apresentacao_EventoInstance?.data}" locale="de" firstDayOfWeek="Mo" />
</div>

