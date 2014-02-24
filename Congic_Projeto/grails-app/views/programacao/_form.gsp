<%@ page import="congic_projeto.Programacao" %>

<div class="form-group fieldcontain ${hasErrors(bean: programacaoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="programacao.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker class="form-control" name="data" precision="day"  value="${programacaoInstance?.data}"  />
</div>

<div class="form-group fieldcontain ${hasErrors(bean: programacaoInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="programacao.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker class="form-control" name="horario" precision="minute"  value="${programacaoInstance?.horario}"  />
</div>

<div class="form-group fieldcontain ${hasErrors(bean: programacaoInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="programacao.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="categoria" required="" value="${programacaoInstance?.categoria}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: programacaoInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="programacao.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="titulo" required="" value="${programacaoInstance?.titulo}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: programacaoInstance, field: 'orador', 'error')} required">
	<label for="orador">
		<g:message code="programacao.orador.label" default="Orador" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="orador" required="" value="${programacaoInstance?.orador}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: programacaoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="programacao.descricao.label" default="Descricao" />
		
	</label>
	<g:textArea class="form-control" name="descricao" cols="40" rows="5" maxlength="400" value="${programacaoInstance?.descricao}"/>
</div>

