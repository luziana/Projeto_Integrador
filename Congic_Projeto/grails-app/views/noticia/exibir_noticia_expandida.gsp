

<g:if test="${!noticias}">
	<div class="message"> Busca não retornou resultados </div>
</g:if>
<table>
<tr>
<th>Titulo</th>
<th>Descrição</th>
<th></th>
</tr>
<g:each in="${noticias}">

<tr>
<th>${it.titulo}</th>
<th>${it.descricao}</th>
<th></th>
</tr>

</g:each>
</table>



</table>