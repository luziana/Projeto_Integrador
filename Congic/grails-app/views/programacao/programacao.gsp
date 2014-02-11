<html>
<head>
<title>Programação</title>
</head>
<body>
<div id="programacao">
<h3>Programações</h3>
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