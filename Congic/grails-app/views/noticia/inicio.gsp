<html>
<head>
<title>Noticias</title>
</head>
<body>
<div id="noticia">
<h3>Noticias</h3>
<br>
	<g:each in="${noticias?}">

<p>Titulo: ${it.titulo}</p>
<p>Descrição: ${it.descricao}</p>

</g:each>
</div>
</body>
</html>