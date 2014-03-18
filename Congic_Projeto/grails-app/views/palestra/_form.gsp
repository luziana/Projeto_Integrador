<%@ page import="congic_projeto.Palestra" %>



<div class="fieldcontain ${hasErrors(bean: palestraInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="palestra.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" maxlength="90" value="${palestraInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: palestraInstance, field: 'hora', 'error')} ">
	<label for="hora">
		<g:message code="palestra.hora.label" default="Hora" />
		
	</label>
	<g:textField name="hora" value="${palestraInstance?.hora}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: palestraInstance, field: 'ministrante', 'error')} ">
	<label for="ministrante">
		<g:message code="palestra.ministrante.label" default="Ministrante" />
		
	</label>
	<g:textField name="ministrante" value="${palestraInstance?.ministrante}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: palestraInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="palestra.descricao.label" default="Descricao" />
		
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="600" value="${palestraInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: palestraInstance, field: 'evento', 'error')} required">
	<label for="evento">
		<g:message code="palestra.evento.label" default="Evento" />
		<span class="required-indicator">*</span>
	</label>
	<%--${myDateInstance.date.format('yyyy-MM-dd HH:mm')}--%><%--
	<g:select id="evento" name="evento.id" from="${congic_projeto.Evento.list()}" optionKey="id" required="" value="${palestraInstance?.evento?.data.format('yyyy-MM-dd HH:mm')}" class="many-to-one"/>
	--%><g:select id="evento" name="evento.id" from="${congic_projeto.Evento.list()}" optionKey="id" required="" value="${palestraInstance?.evento?.id}" class="many-to-one"/>
</div>

