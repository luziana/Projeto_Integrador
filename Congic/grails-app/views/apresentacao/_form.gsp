<%@ page import="congic.Apresentacao" %>



<div class="fieldcontain ${hasErrors(bean: apresentacaoInstance, field: 'descricaoEvento', 'error')} required">
	<label for="descricaoEvento">
		<g:message code="apresentacao.descricaoEvento.label" default="Descricao Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricaoEvento" required="" value="${apresentacaoInstance?.descricaoEvento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: apresentacaoInstance, field: 'tematica', 'error')} required">
	<label for="tematica">
		<g:message code="apresentacao.tematica.label" default="Tematica" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tematica" required="" value="${apresentacaoInstance?.tematica}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: apresentacaoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="apresentacao.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${apresentacaoInstance?.data}"  />
</div>

