<html>
<head>
<title>Noticias</title>
</head>
<body>
<g:link action="list">Voltar</g:link>
<h3>Noticias	</h3>
<g:each in="${noticias}">

<p>Titulo: ${noticias.titulo}</p>
<p>Descrição: ${noticias.descricao}</p>

</g:each>
</body>
</html>