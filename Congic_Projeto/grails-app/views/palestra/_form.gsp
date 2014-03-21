<%@ page import="congic_projeto.Palestra" %>



<div class="form-group fieldcontain  ${hasErrors(bean: palestraInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="palestra.nome.label" default="Nome da Palestra:" />
		
	</label>
	<g:textField class="form-control" name="nome" maxlength="90" value="${palestraInstance?.nome}"/>
</div>

<div class="form-group fieldcontain  ${hasErrors(bean: palestraInstance, field: 'hora', 'error')} ">
	<label for="hora">
		<g:message code="palestra.hora.label" default="Hora da Palestra:" />
		
	</label>
	<g:textField class="form-control" name="hora" value="${palestraInstance?.hora}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: palestraInstance, field: 'ministrante', 'error')} ">
	<label for="ministrante">
		<g:message code="palestra.ministrante.label" default="Ministrante da Palestra:" />
		
	</label>
	<g:textField class="form-control" name="ministrante" value="${palestraInstance?.ministrante}"/>
</div>

<div class="form-group fieldcontain  ${hasErrors(bean: palestraInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="palestra.descricao.label" default="Descrição da Palestra:" />
		
	</label>
	<g:textArea class="form-control" name="descricao" cols="40" rows="5" maxlength="600" value="${palestraInstance?.descricao}"/>
</div>

<div class="form-group fieldcontain  ${hasErrors(bean: palestraInstance, field: 'evento', 'error')} required">
	<label for="evento">
		<g:message code="palestra.evento.label" default="Data de Realização:" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" id="evento" name="evento.id" from="${congic_projeto.Evento.list()}" optionKey="id" required="" value="${palestraInstance?.evento?.id}" class="many-to-one"/>
</div>

