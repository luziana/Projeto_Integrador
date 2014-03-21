<%@ page import="congic_projeto.Evento" %>

<resource:dateChooser />

<div class="form-group fieldcontain  ${hasErrors(bean: eventoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="evento.data.label" default="Data: " />
		<span class="required-indicator">*</span>
	</label>
	<richui:dateChooser class="form-control"  name="data" precision="day"  value="${eventoInstance?.data}"  />
</div>

<div class="form-group fieldcontain  ${hasErrors(bean: eventoInstance, field: 'minicurso', 'error')} ">
	<label for="minicurso">
		<g:message code="evento.minicurso.label" default="Minicurso :" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventoInstance?.minicurso?}" var="m">
    <li><g:link controller="minicurso" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="minicurso" action="create" params="['evento.id': eventoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'minicurso.label', default: 'Minicurso')])}</g:link>
</li>
</ul>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: eventoInstance, field: 'palestra', 'error')} ">
	<label for="palestra">
		<g:message code="evento.palestra.label" default="Palestra: " />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventoInstance?.palestra?}" var="p">
    <li><g:link controller="palestra" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="palestra" action="create" params="['evento.id': eventoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'palestra.label', default: 'Palestra')])}</g:link>
</li>
</ul>

</div>

