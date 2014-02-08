<%@ page import="projeto.Programacao" %>



<div class="fieldcontain ${hasErrors(bean: programacaoInstance, field: 'categoria', 'error')}  form-group">
	<label for="categoria" class="col-lg-4 control-label">
		<g:message code="programacao.categoria.label" default="Categoria" />
		
	</label>
	<div class="col-lg-6">
	<g:textField class="form-control" name="categoria" value="${programacaoInstance?.categoria}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: programacaoInstance, field: 'data', 'error')} required form-group">
	<label for="data" class="col-lg-4 control-label">
		<g:message code="programacao.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-lg-6">
	
	<g:textField name="data" value="${programacaoInstance.data}" required=""/>	
	<script type="text/javascript">	
		$(document).ready(function() {	
		$("#data").datepicker({dateFormat: 'dd/mm/yy'});	
		})	
	</script>
	
	<%--<g:datePicker name="data" precision="day"  value="${programacaoInstance?.data}"  />--%>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: programacaoInstance, field: 'descricao', 'error')}  form-group">
	<label for="descricao" class="col-lg-4 control-label">
		<g:message code="programacao.descricao.label" default="Descricao" />
		
	</label>
	<div class="col-lg-6">
	<g:textField class="form-control" name="descricao" value="${programacaoInstance?.descricao}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: programacaoInstance, field: 'horario', 'error')} required form-group">
	<label for="horario" class="col-lg-4 control-label">
		<g:message code="programacao.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-lg-6">
	<g:textField name="horario" value="${programacaoInstance.horario}" required=""/>	
	<script type="text/javascript">	
		$(document).ready(function() {	
		$("#horario").datepicker({dateFormat: 'dd/mm/yy'});	
		})	
	</script>
	<%--<g:datePicker name="horario" precision="day"  value="${programacaoInstance?.horario}"  />--%>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: programacaoInstance, field: 'orador', 'error')}  form-group">
	<label for="orador" class="col-lg-4 control-label">
		<g:message code="programacao.orador.label" default="Orador" />
		
	</label>
	<div class="col-lg-6">
	<g:textField class="form-control" name="orador" value="${programacaoInstance?.orador}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: programacaoInstance, field: 'titulo', 'error')}  form-group">
	<label for="titulo" class="col-lg-4 control-label">
		<g:message code="programacao.titulo.label" default="Titulo" />
		
	</label>
	<div class="col-lg-6">
	<g:textField class="form-control" name="titulo" value="${programacaoInstance?.titulo}"/>
	</div>
</div>

