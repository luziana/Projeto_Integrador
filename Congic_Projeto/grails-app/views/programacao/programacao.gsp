<html>
<head>
<meta name="layout" content="main"/>
                <title>Congresso de Iniciação Científica do IFRN - Programação</title>
               
</head>
<body>

	<div class="menu">
			<g:render template="/home/menu" />
	</div>

<div id="programacao">

</br></br></br><center><h2>Programação</h2></center></br></br></br>

<br>
	<g:each in="${programacoes?}">

		<p>Data: ${it.data}</p>
		<p>Horário: ${it.horario}</p>
		<p>Categoria: ${it.categoria}</p>
		<p>Titulo: ${it.titulo}</p>
		<p>Orador: ${it.orador}</p>
		<p>Descrição: ${it.descricao}</p>
		
	</g:each>
</div>
</body>
</html>