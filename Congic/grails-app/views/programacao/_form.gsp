<%@ page import="congic.Programacao" %>



<div class="fieldcontain ${hasErrors(bean: programacaoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="programacao.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${programacaoInstance?.data}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: programacaoInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="programacao.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
		<div class="col-lg-6">

<g:textField name="data" value="${programacaoInstance.data}" required=""/>	
<script type="text/javascript">	
$(document).ready(function() {
$("#data").datepicker({dateFormat: 'dd/mm/yy'});
})
</script>

<%--<g:datePicker name="data" precision="day" value="${programacaoInstance?.data}" />--%>
</div>
</div>

<div class="fieldcontain ${hasErrors(bean: programacaoInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="programacao.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="categoria" required="" value="${programacaoInstance?.categoria}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: programacaoInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="programacao.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${programacaoInstance?.titulo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: programacaoInstance, field: 'orador', 'error')} required">
	<label for="orador">
		<g:message code="programacao.orador.label" default="Orador" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="orador" required="" value="${programacaoInstance?.orador}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: programacaoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="programacao.descricao.label" default="Descricao" />
		
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="400" value="${programacaoInstance?.descricao}"/>
</div>

