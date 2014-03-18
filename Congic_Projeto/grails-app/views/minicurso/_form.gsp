<%@ page import="congic_projeto.Minicurso" %>



<div class="fieldcontain ${hasErrors(bean: minicursoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="minicurso.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" maxlength="90" value="${minicursoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: minicursoInstance, field: 'hora', 'error')} ">
	<label for="hora">
		<g:message code="minicurso.hora.label" default="Hora" />
		
	</label>
	<g:textField name="hora" value="${minicursoInstance?.hora}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: minicursoInstance, field: 'ministrante', 'error')} ">
	<label for="ministrante">
		<g:message code="minicurso.ministrante.label" default="Ministrante" />
		
	</label>
	<g:textField name="ministrante" value="${minicursoInstance?.ministrante}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: minicursoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="minicurso.descricao.label" default="Descricao" />
		
	</label>
	<g:textArea name="descricao" cols="40" rows="5" maxlength="600" value="${minicursoInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: minicursoInstance, field: 'evento', 'error')} required">
	<label for="evento">
		<g:message code="minicurso.evento.label" default="Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="evento" name="evento.id" from="${congic_projeto.Evento.list()}" optionKey="id" required="" value="${minicursoInstance?.evento?.id}" class="many-to-one"/>
</div>

