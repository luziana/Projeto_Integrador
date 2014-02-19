<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main" />
		<title>Congresso de Iniciação Científica do IFRN</title>
	</head>

	<body>
		<div classe="container">
			<div class="menu">
				<g:render template="/home/menu" />
			</div>
		</div>
		<div class="myCarousel">
			<g:render template="/home/carrossel" />
		</div>
		
		<div id="noticia">

		</br>
		</br>
		</br>
		<center>
			<h2>Noticias</h2>
		</center>
		</br>
		</br>
		</br>

		<g:each in="${noticias?}">

			<p>Titulo:${it.titulo}</p>
			<p>Descrição:${it.descricao}</p>

		</g:each>

		</div>

	</body>
</html>